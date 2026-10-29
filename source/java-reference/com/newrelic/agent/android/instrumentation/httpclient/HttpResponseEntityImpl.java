package com.newrelic.agent.android.instrumentation.httpclient;

import com.newrelic.agent.android.Measurements;
import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.instrumentation.TransactionState;
import com.newrelic.agent.android.instrumentation.TransactionStateUtil;
import com.newrelic.agent.android.instrumentation.io.CountingInputStream;
import com.newrelic.agent.android.instrumentation.io.CountingOutputStream;
import com.newrelic.agent.android.instrumentation.io.StreamCompleteEvent;
import com.newrelic.agent.android.instrumentation.io.StreamCompleteListener;
import com.newrelic.agent.android.instrumentation.io.StreamCompleteListenerSource;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.message.AbstractHttpMessage;

/* JADX INFO: loaded from: classes.dex */
public final class HttpResponseEntityImpl implements HttpEntity, StreamCompleteListener {
    private static final String ENCODING_CHUNKED = "chunked";
    private static final String TRANSFER_ENCODING_HEADER = "Transfer-Encoding";
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private final long contentLengthFromHeader;
    private CountingInputStream contentStream;
    private final HttpEntity impl;
    private final TransactionState transactionState;

    public HttpResponseEntityImpl(HttpEntity impl, TransactionState transactionState, long contentLengthFromHeader) {
        this.impl = impl;
        this.transactionState = transactionState;
        this.contentLengthFromHeader = contentLengthFromHeader;
    }

    @Override // org.apache.http.HttpEntity
    public void consumeContent() throws IOException {
        try {
            this.impl.consumeContent();
        } catch (IOException e) {
            handleException(e);
            throw e;
        }
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IllegalStateException, IOException {
        if (this.contentStream != null) {
            return this.contentStream;
        }
        boolean shouldBuffer = true;
        try {
            if (this.impl instanceof AbstractHttpMessage) {
                AbstractHttpMessage message = (AbstractHttpMessage) this.impl;
                Header transferEncodingHeader = message.getLastHeader("Transfer-Encoding");
                if (transferEncodingHeader != null && "chunked".equalsIgnoreCase(transferEncodingHeader.getValue())) {
                    shouldBuffer = false;
                }
            } else if (this.impl instanceof HttpEntityWrapper) {
                HttpEntityWrapper entityWrapper = (HttpEntityWrapper) this.impl;
                shouldBuffer = !entityWrapper.isChunked();
            }
            this.contentStream = new CountingInputStream(this.impl.getContent(), shouldBuffer);
            this.contentStream.addStreamCompleteListener(this);
            return this.contentStream;
        } catch (IOException e) {
            handleException(e);
            throw e;
        }
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentEncoding() {
        return this.impl.getContentEncoding();
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.impl.getContentLength();
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentType() {
        return this.impl.getContentType();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isChunked() {
        return this.impl.isChunked();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return this.impl.isRepeatable();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return this.impl.isStreaming();
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outstream) throws IOException {
        if (!this.transactionState.isComplete()) {
            CountingOutputStream outputStream = new CountingOutputStream(outstream);
            try {
                this.impl.writeTo(outputStream);
                if (!this.transactionState.isComplete()) {
                    if (this.contentLengthFromHeader >= 0) {
                        this.transactionState.setBytesReceived(this.contentLengthFromHeader);
                    } else {
                        this.transactionState.setBytesReceived(outputStream.getCount());
                    }
                    addTransactionAndErrorData(this.transactionState);
                    return;
                }
                return;
            } catch (IOException e) {
                handleException(e, Long.valueOf(outputStream.getCount()));
                e.printStackTrace();
                throw e;
            }
        }
        this.impl.writeTo(outstream);
    }

    @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListener
    public void streamComplete(StreamCompleteEvent e) {
        StreamCompleteListenerSource source = (StreamCompleteListenerSource) e.getSource();
        source.removeStreamCompleteListener(this);
        if (!this.transactionState.isComplete()) {
            if (this.contentLengthFromHeader >= 0) {
                this.transactionState.setBytesReceived(this.contentLengthFromHeader);
            } else {
                this.transactionState.setBytesReceived(e.getBytes());
            }
            addTransactionAndErrorData(this.transactionState);
        }
    }

    @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListener
    public void streamError(StreamCompleteEvent e) {
        StreamCompleteListenerSource source = (StreamCompleteListenerSource) e.getSource();
        source.removeStreamCompleteListener(this);
        TransactionStateUtil.setErrorCodeFromException(this.transactionState, e.getException());
        if (!this.transactionState.isComplete()) {
            this.transactionState.setBytesReceived(e.getBytes());
        }
    }

    private void addTransactionAndErrorData(TransactionState transactionState) {
        TransactionData transactionData = transactionState.end();
        if (transactionData != null) {
            TaskQueue.queue(new HttpTransactionMeasurement(transactionData.getUrl(), transactionData.getHttpMethod(), transactionData.getStatusCode(), transactionData.getErrorCode(), transactionData.getTimestamp(), transactionData.getTime(), transactionData.getBytesSent(), transactionData.getBytesReceived(), transactionData.getAppData()));
            if (transactionState.getStatusCode() >= 400) {
                StringBuilder responseBody = new StringBuilder();
                try {
                    InputStream errorStream = getContent();
                    if (errorStream instanceof CountingInputStream) {
                        responseBody.append(((CountingInputStream) errorStream).getBufferAsString());
                    }
                } catch (Exception e) {
                    log.error(e.toString());
                }
                Header contentType = this.impl.getContentType();
                Map<String, String> params = new TreeMap<>();
                if (contentType != null && contentType.getValue() != null && !"".equals(contentType.getValue())) {
                    params.put("content_type", contentType.getValue());
                }
                params.put("content_length", transactionState.getBytesReceived() + "");
                Measurements.addHttpError(transactionData, responseBody.toString(), params);
            }
        }
    }

    private void handleException(Exception e) {
        handleException(e, null);
    }

    private void handleException(Exception e, Long streamBytes) {
        TransactionStateUtil.setErrorCodeFromException(this.transactionState, e);
        if (!this.transactionState.isComplete()) {
            if (streamBytes != null) {
                this.transactionState.setBytesReceived(streamBytes.longValue());
            }
            TransactionData transactionData = this.transactionState.end();
            if (transactionData != null) {
                TaskQueue.queue(new HttpTransactionMeasurement(transactionData.getUrl(), transactionData.getHttpMethod(), transactionData.getStatusCode(), transactionData.getErrorCode(), transactionData.getTimestamp(), transactionData.getTime(), transactionData.getBytesSent(), transactionData.getBytesReceived(), transactionData.getAppData()));
            }
        }
    }
}
