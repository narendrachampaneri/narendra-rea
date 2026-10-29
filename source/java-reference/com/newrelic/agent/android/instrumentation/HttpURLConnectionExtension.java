package com.newrelic.agent.android.instrumentation;

import android.net.http.Headers;
import com.newrelic.agent.android.Measurements;
import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.instrumentation.io.CountingInputStream;
import com.newrelic.agent.android.instrumentation.io.CountingOutputStream;
import com.newrelic.agent.android.instrumentation.io.StreamCompleteEvent;
import com.newrelic.agent.android.instrumentation.io.StreamCompleteListener;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class HttpURLConnectionExtension extends HttpURLConnection {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private HttpURLConnection impl;
    private TransactionState transactionState;

    public HttpURLConnectionExtension(HttpURLConnection impl) {
        super(impl.getURL());
        this.impl = impl;
        TransactionStateUtil.setCrossProcessHeader(impl);
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(String field, String newValue) {
        this.impl.addRequestProperty(field, newValue);
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        if (this.transactionState != null && !this.transactionState.isComplete()) {
            addTransactionAndErrorData(this.transactionState);
        }
        this.impl.disconnect();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.impl.usingProxy();
    }

    @Override // java.net.URLConnection
    public void connect() throws IOException {
        getTransactionState();
        try {
            this.impl.connect();
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.impl.getAllowUserInteraction();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.impl.getConnectTimeout();
    }

    @Override // java.net.URLConnection
    public Object getContent() throws IOException {
        getTransactionState();
        try {
            Object object = this.impl.getContent();
            int contentLength = this.impl.getContentLength();
            if (contentLength >= 0) {
                TransactionState transactionState = getTransactionState();
                if (!transactionState.isComplete()) {
                    transactionState.setBytesReceived(contentLength);
                    addTransactionAndErrorData(transactionState);
                }
            }
            return object;
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] types) throws IOException {
        getTransactionState();
        try {
            Object object = this.impl.getContent(types);
            checkResponse();
            return object;
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        getTransactionState();
        String contentEncoding = this.impl.getContentEncoding();
        checkResponse();
        return contentEncoding;
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        getTransactionState();
        int contentLength = this.impl.getContentLength();
        checkResponse();
        return contentLength;
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        getTransactionState();
        String contentType = this.impl.getContentType();
        checkResponse();
        return contentType;
    }

    @Override // java.net.URLConnection
    public long getDate() {
        getTransactionState();
        long date = this.impl.getDate();
        checkResponse();
        return date;
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        getTransactionState();
        try {
            return new CountingInputStream(this.impl.getErrorStream(), true);
        } catch (Exception e) {
            log.error(e.toString());
            return this.impl.getErrorStream();
        }
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(String field, long defaultValue) {
        getTransactionState();
        long date = this.impl.getHeaderFieldDate(field, defaultValue);
        checkResponse();
        return date;
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.impl.getInstanceFollowRedirects();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() throws IOException {
        return this.impl.getPermission();
    }

    @Override // java.net.HttpURLConnection
    public String getRequestMethod() {
        return this.impl.getRequestMethod();
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() throws IOException {
        getTransactionState();
        try {
            int responseCode = this.impl.getResponseCode();
            checkResponse();
            return responseCode;
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() throws IOException {
        getTransactionState();
        try {
            String message = this.impl.getResponseMessage();
            checkResponse();
            return message;
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int chunkLength) {
        this.impl.setChunkedStreamingMode(chunkLength);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int contentLength) {
        this.impl.setFixedLengthStreamingMode(contentLength);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean followRedirects) {
        this.impl.setInstanceFollowRedirects(followRedirects);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String method) throws ProtocolException {
        getTransactionState();
        try {
            this.impl.setRequestMethod(method);
        } catch (ProtocolException e) {
            error(e);
            throw e;
        }
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.impl.getDefaultUseCaches();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.impl.getDoInput();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.impl.getDoOutput();
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        getTransactionState();
        long expiration = this.impl.getExpiration();
        checkResponse();
        return expiration;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int pos) {
        getTransactionState();
        String header = this.impl.getHeaderField(pos);
        checkResponse();
        return header;
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String key) {
        getTransactionState();
        String header = this.impl.getHeaderField(key);
        checkResponse();
        return header;
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String field, int defaultValue) {
        getTransactionState();
        int header = this.impl.getHeaderFieldInt(field, defaultValue);
        checkResponse();
        return header;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderFieldKey(int posn) {
        getTransactionState();
        String key = this.impl.getHeaderFieldKey(posn);
        checkResponse();
        return key;
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        getTransactionState();
        Map<String, List<String>> fields = this.impl.getHeaderFields();
        checkResponse();
        return fields;
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        getTransactionState();
        long ifModifiedSince = this.impl.getIfModifiedSince();
        checkResponse();
        return ifModifiedSince;
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() throws IOException {
        final TransactionState transactionState = getTransactionState();
        try {
            CountingInputStream in = new CountingInputStream(this.impl.getInputStream());
            TransactionStateUtil.inspectAndInstrumentResponse(transactionState, this.impl);
            in.addStreamCompleteListener(new StreamCompleteListener() { // from class: com.newrelic.agent.android.instrumentation.HttpURLConnectionExtension.1
                @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListener
                public void streamError(StreamCompleteEvent e) {
                    if (!transactionState.isComplete()) {
                        transactionState.setBytesReceived(e.getBytes());
                    }
                    HttpURLConnectionExtension.this.error(e.getException());
                }

                @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListener
                public void streamComplete(StreamCompleteEvent e) {
                    if (!transactionState.isComplete()) {
                        long contentLength = HttpURLConnectionExtension.this.impl.getContentLength();
                        long numBytes = e.getBytes();
                        if (contentLength >= 0) {
                            numBytes = contentLength;
                        }
                        transactionState.setBytesReceived(numBytes);
                        HttpURLConnectionExtension.this.addTransactionAndErrorData(transactionState);
                    }
                }
            });
            return in;
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        getTransactionState();
        long lastModified = this.impl.getLastModified();
        checkResponse();
        return lastModified;
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() throws IOException {
        final TransactionState transactionState = getTransactionState();
        try {
            CountingOutputStream out = new CountingOutputStream(this.impl.getOutputStream());
            out.addStreamCompleteListener(new StreamCompleteListener() { // from class: com.newrelic.agent.android.instrumentation.HttpURLConnectionExtension.2
                @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListener
                public void streamError(StreamCompleteEvent e) {
                    if (!transactionState.isComplete()) {
                        transactionState.setBytesSent(e.getBytes());
                    }
                    HttpURLConnectionExtension.this.error(e.getException());
                }

                @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListener
                public void streamComplete(StreamCompleteEvent e) {
                    if (!transactionState.isComplete()) {
                        String header = HttpURLConnectionExtension.this.impl.getRequestProperty(Headers.CONTENT_LEN);
                        long numBytes = e.getBytes();
                        if (header != null) {
                            try {
                                numBytes = Long.parseLong(header);
                            } catch (NumberFormatException e2) {
                            }
                        }
                        transactionState.setBytesSent(numBytes);
                        HttpURLConnectionExtension.this.addTransactionAndErrorData(transactionState);
                    }
                }
            });
            return out;
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.impl.getReadTimeout();
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.impl.getRequestProperties();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String field) {
        return this.impl.getRequestProperty(field);
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.impl.getURL();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.impl.getUseCaches();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean newValue) {
        this.impl.setAllowUserInteraction(newValue);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int timeoutMillis) {
        this.impl.setConnectTimeout(timeoutMillis);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean newValue) {
        this.impl.setDefaultUseCaches(newValue);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean newValue) {
        this.impl.setDoInput(newValue);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean newValue) {
        this.impl.setDoOutput(newValue);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long newValue) {
        this.impl.setIfModifiedSince(newValue);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int timeoutMillis) {
        this.impl.setReadTimeout(timeoutMillis);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String field, String newValue) {
        this.impl.setRequestProperty(field, newValue);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean newValue) {
        this.impl.setUseCaches(newValue);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.impl.toString();
    }

    private void checkResponse() {
        if (!getTransactionState().isComplete()) {
            TransactionStateUtil.inspectAndInstrumentResponse(getTransactionState(), this.impl);
        }
    }

    private TransactionState getTransactionState() {
        if (this.transactionState == null) {
            this.transactionState = new TransactionState();
            TransactionStateUtil.inspectAndInstrument(this.transactionState, this.impl);
        }
        return this.transactionState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void error(Exception e) {
        TransactionState transactionState = getTransactionState();
        TransactionStateUtil.setErrorCodeFromException(transactionState, e);
        if (!transactionState.isComplete()) {
            TransactionStateUtil.inspectAndInstrumentResponse(transactionState, this.impl);
            TransactionData transactionData = transactionState.end();
            if (transactionData != null) {
                TaskQueue.queue(new HttpTransactionMeasurement(transactionData.getUrl(), transactionData.getHttpMethod(), transactionData.getStatusCode(), transactionData.getErrorCode(), transactionData.getTimestamp(), transactionData.getTime(), transactionData.getBytesSent(), transactionData.getBytesReceived(), transactionData.getAppData()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addTransactionAndErrorData(TransactionState transactionState) {
        TransactionData transactionData = transactionState.end();
        if (transactionData != null) {
            TaskQueue.queue(new HttpTransactionMeasurement(transactionData.getUrl(), transactionData.getHttpMethod(), transactionData.getStatusCode(), transactionData.getErrorCode(), transactionData.getTimestamp(), transactionData.getTime(), transactionData.getBytesSent(), transactionData.getBytesReceived(), transactionData.getAppData()));
            if (transactionState.getStatusCode() >= 400) {
                StringBuilder responseBody = new StringBuilder();
                try {
                    InputStream errorStream = getErrorStream();
                    if (errorStream instanceof CountingInputStream) {
                        responseBody.append(((CountingInputStream) errorStream).getBufferAsString());
                    }
                } catch (Exception e) {
                    log.error(e.toString());
                }
                Map<String, String> params = new TreeMap<>();
                String contentType = this.impl.getContentType();
                if (contentType != null && !"".equals(contentType)) {
                    params.put("content_type", contentType);
                }
                params.put("content_length", transactionState.getBytesReceived() + "");
                Measurements.addHttpError(transactionData.getUrl(), transactionData.getHttpMethod(), transactionData.getStatusCode(), responseBody.toString(), params);
            }
        }
    }
}
