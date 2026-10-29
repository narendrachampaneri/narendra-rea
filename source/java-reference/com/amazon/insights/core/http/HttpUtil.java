package com.amazon.insights.core.http;

import org.apache.http.HttpStatus;
import org.apache.http.HttpVersion;
import org.apache.http.conn.params.ConnManagerPNames;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

/* JADX INFO: loaded from: classes2.dex */
public class HttpUtil {
    private static final String STALE_CHECK_PARAM_NAME = "http.connection.stalecheck";
    private static volatile org.apache.http.client.HttpClient client;

    private HttpUtil() {
    }

    static org.apache.http.client.HttpClient getHttpClient() {
        if (client == null) {
            synchronized (HttpUtil.class) {
                if (client == null) {
                    client = createHttpClient();
                }
            }
        }
        return client;
    }

    private static org.apache.http.client.HttpClient createHttpClient() {
        org.apache.http.impl.client.DefaultHttpClient templateClient = new org.apache.http.impl.client.DefaultHttpClient();
        HttpParams params = templateClient.getParams();
        HttpConnectionParams.setConnectionTimeout(params, 5000);
        HttpConnectionParams.setSoTimeout(params, 10000);
        params.setParameter(ConnManagerPNames.MAX_TOTAL_CONNECTIONS, 30);
        params.setParameter(ConnManagerPNames.MAX_CONNECTIONS_PER_ROUTE, new ConnPerRouteBean(30));
        params.setParameter(CoreProtocolPNames.USE_EXPECT_CONTINUE, false);
        HttpProtocolParams.setVersion(params, HttpVersion.HTTP_1_1);
        params.setParameter(STALE_CHECK_PARAM_NAME, true);
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
        return new org.apache.http.impl.client.DefaultHttpClient(new ThreadSafeClientConnManager(params, schemeRegistry), params);
    }

    public static String getMessageForResponse(HttpClient.Response response) {
        switch (response.getCode()) {
            case HttpStatus.SC_BAD_REQUEST /* 400 */:
                return "Bad server request.";
            case HttpStatus.SC_FORBIDDEN /* 403 */:
                return "Access denied. Verify your application key and private key are correct.";
            case 404:
                return "Application not found.";
            case 500:
                return "An unexpected server error occurred.";
            default:
                if (response.getCode() < 0) {
                    String msg = response.getMessage();
                    return msg;
                }
                return "";
        }
    }
}
