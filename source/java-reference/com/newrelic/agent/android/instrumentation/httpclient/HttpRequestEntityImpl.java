package com.newrelic.agent.android.instrumentation.httpclient;

import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.instrumentation.TransactionState;
import com.newrelic.agent.android.instrumentation.TransactionStateUtil;
import com.newrelic.agent.android.instrumentation.io.CountingInputStream;
import com.newrelic.agent.android.instrumentation.io.CountingOutputStream;
import com.newrelic.agent.android.instrumentation.io.StreamCompleteEvent;
import com.newrelic.agent.android.instrumentation.io.StreamCompleteListener;
import com.newrelic.agent.android.instrumentation.io.StreamCompleteListenerSource;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

/* JADX INFO: loaded from: classes.dex */
public final class HttpRequestEntityImpl implements HttpEntity, StreamCompleteListener {
    private final HttpEntity impl;
    private final TransactionState transactionState;

    public HttpRequestEntityImpl(HttpEntity impl, TransactionState transactionState) {
        this.impl = impl;
        this.transactionState = transactionState;
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
        try {
            if (this.transactionState.isSent()) {
                return this.impl.getContent();
            }
            CountingInputStream stream = new CountingInputStream(this.impl.getContent());
            stream.addStreamCompleteListener(this);
            return stream;
        } catch (IOException e) {
            handleException(e);
            throw e;
        } catch (IllegalStateException e2) {
            handleException(e2);
            throw e2;
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
        try {
            if (!this.transactionState.isSent()) {
                CountingOutputStream stream = new CountingOutputStream(outstream);
                this.impl.writeTo(stream);
                this.transactionState.setBytesSent(stream.getCount());
                return;
            }
            this.impl.writeTo(outstream);
        } catch (IOException e) {
            handleException(e);
            throw e;
        }
    }

    @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListener
    public void streamComplete(StreamCompleteEvent e) {
        StreamCompleteListenerSource source = (StreamCompleteListenerSource) e.getSource();
        source.removeStreamCompleteListener(this);
        this.transactionState.setBytesSent(e.getBytes());
    }

    @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListener
    public void streamError(StreamCompleteEvent e) {
        StreamCompleteListenerSource source = (StreamCompleteListenerSource) e.getSource();
        source.removeStreamCompleteListener(this);
        handleException(e.getException(), Long.valueOf(e.getBytes()));
    }

    private void handleException(Exception e) {
        handleException(e, null);
    }

    private void handleException(Exception e, Long streamBytes) {
        TransactionStateUtil.setErrorCodeFromException(this.transactionState, e);
        if (!this.transactionState.isComplete()) {
            if (streamBytes != null) {
                this.transactionState.setBytesSent(streamBytes.longValue());
            }
            TransactionData transactionData = this.transactionState.end();
            if (transactionData != null) {
                TaskQueue.queue(new HttpTransactionMeasurement(transactionData.getUrl(), transactionData.getHttpMethod(), transactionData.getStatusCode(), transactionData.getErrorCode(), transactionData.getTimestamp(), transactionData.getTime(), transactionData.getBytesSent(), transactionData.getBytesReceived(), transactionData.getAppData()));
            }
        }
    }
}
