package com.newrelic.agent.android.instrumentation;

import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.instrumentation.httpclient.ResponseHandlerImpl;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
public final class HttpInstrumentation {
    private HttpInstrumentation() {
    }

    @WrapReturn(className = "java/net/URL", methodDesc = "()Ljava/net/URLConnection;", methodName = "openConnection")
    public static URLConnection openConnection(URLConnection connection) {
        if (connection instanceof HttpsURLConnection) {
            return new HttpsURLConnectionExtension((HttpsURLConnection) connection);
        }
        if (connection instanceof HttpURLConnection) {
            return new HttpURLConnectionExtension((HttpURLConnection) connection);
        }
        return connection;
    }

    @WrapReturn(className = "java.net.URL", methodDesc = "(Ljava/net/Proxy;)Ljava/net/URLConnection;", methodName = "openConnection")
    public static URLConnection openConnectionWithProxy(URLConnection connection) {
        if (connection instanceof HttpsURLConnection) {
            return new HttpsURLConnectionExtension((HttpsURLConnection) connection);
        }
        if (connection instanceof HttpURLConnection) {
            return new HttpURLConnectionExtension((HttpURLConnection) connection);
        }
        return connection;
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpHost target, HttpRequest request, HttpContext context) throws IOException {
        TransactionState transactionState = new TransactionState();
        try {
            return m125_(httpClient.execute(target, m124_(target, request, transactionState), context), transactionState);
        } catch (IOException e) {
            httpClientError(transactionState, e);
            throw e;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        TransactionState transactionState = new TransactionState();
        try {
            return (T) httpClient.execute(httpHost, m124_(httpHost, httpRequest, transactionState), m126_(responseHandler, transactionState), httpContext);
        } catch (ClientProtocolException e) {
            httpClientError(transactionState, e);
            throw e;
        } catch (IOException e2) {
            httpClientError(transactionState, e2);
            throw e2;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        TransactionState transactionState = new TransactionState();
        try {
            return (T) httpClient.execute(httpHost, m124_(httpHost, httpRequest, transactionState), m126_(responseHandler, transactionState));
        } catch (ClientProtocolException e) {
            httpClientError(transactionState, e);
            throw e;
        } catch (IOException e2) {
            httpClientError(transactionState, e2);
            throw e2;
        }
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpHost target, HttpRequest request) throws IOException {
        TransactionState transactionState = new TransactionState();
        try {
            return m125_(httpClient.execute(target, m124_(target, request, transactionState)), transactionState);
        } catch (IOException e) {
            httpClientError(transactionState, e);
            throw e;
        }
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest request, HttpContext context) throws IOException {
        TransactionState transactionState = new TransactionState();
        try {
            return m125_(httpClient.execute(m127_(request, transactionState), context), transactionState);
        } catch (IOException e) {
            httpClientError(transactionState, e);
            throw e;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        TransactionState transactionState = new TransactionState();
        try {
            return (T) httpClient.execute(m127_(httpUriRequest, transactionState), m126_(responseHandler, transactionState), httpContext);
        } catch (ClientProtocolException e) {
            httpClientError(transactionState, e);
            throw e;
        } catch (IOException e2) {
            httpClientError(transactionState, e2);
            throw e2;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        TransactionState transactionState = new TransactionState();
        try {
            return (T) httpClient.execute(m127_(httpUriRequest, transactionState), m126_(responseHandler, transactionState));
        } catch (ClientProtocolException e) {
            httpClientError(transactionState, e);
            throw e;
        } catch (IOException e2) {
            httpClientError(transactionState, e2);
            throw e2;
        }
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest request) throws IOException {
        TransactionState transactionState = new TransactionState();
        try {
            return m125_(httpClient.execute(m127_(request, transactionState)), transactionState);
        } catch (IOException e) {
            httpClientError(transactionState, e);
            throw e;
        }
    }

    private static void httpClientError(TransactionState transactionState, Exception e) {
        if (!transactionState.isComplete()) {
            TransactionStateUtil.setErrorCodeFromException(transactionState, e);
            TransactionData transactionData = transactionState.end();
            if (transactionData != null) {
                TaskQueue.queue(new HttpTransactionMeasurement(transactionData.getUrl(), transactionData.getHttpMethod(), transactionData.getStatusCode(), transactionData.getErrorCode(), transactionData.getTimestamp(), transactionData.getTime(), transactionData.getBytesSent(), transactionData.getBytesReceived(), transactionData.getAppData()));
            }
        }
    }

    /* JADX INFO: renamed from: _, reason: not valid java name */
    private static HttpUriRequest m127_(HttpUriRequest request, TransactionState transactionState) {
        return TransactionStateUtil.inspectAndInstrument(transactionState, request);
    }

    /* JADX INFO: renamed from: _, reason: not valid java name */
    private static HttpRequest m124_(HttpHost host, HttpRequest request, TransactionState transactionState) {
        return TransactionStateUtil.inspectAndInstrument(transactionState, host, request);
    }

    /* JADX INFO: renamed from: _, reason: not valid java name */
    private static HttpResponse m125_(HttpResponse response, TransactionState transactionState) {
        return TransactionStateUtil.inspectAndInstrument(transactionState, response);
    }

    /* JADX INFO: renamed from: _, reason: not valid java name */
    private static <T> ResponseHandler<? extends T> m126_(ResponseHandler<? extends T> handler, TransactionState transactionState) {
        return ResponseHandlerImpl.wrap(handler, transactionState);
    }
}
