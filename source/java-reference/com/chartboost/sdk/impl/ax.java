package com.chartboost.sdk.impl;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.chartboost.sdk.Libraries.CBLogging;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

/* JADX INFO: loaded from: classes.dex */
public final class ax {
    private static ExecutorService a = null;
    private static ThreadFactory b = null;
    private static HttpClient c = null;

    public static ExecutorService a() {
        if (b == null) {
            b = new ThreadFactory() { // from class: com.chartboost.sdk.impl.ax.1
                private final AtomicInteger a = new AtomicInteger(1);

                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(Runnable r) {
                    return new Thread(r, "Chartboost Thread #" + this.a.getAndIncrement());
                }
            };
        }
        if (a == null) {
            a = Executors.newFixedThreadPool(5, b);
        }
        return a;
    }

    protected static HttpClient b() {
        if (c != null) {
            return c;
        }
        try {
            final Application application = (Application) com.chartboost.sdk.b.y().getApplicationContext();
            c = new DefaultHttpClient() { // from class: com.chartboost.sdk.impl.ax.2
                @Override // org.apache.http.impl.client.DefaultHttpClient, org.apache.http.impl.client.AbstractHttpClient
                protected ClientConnectionManager createClientConnectionManager() {
                    SchemeRegistry schemeRegistry = new SchemeRegistry();
                    schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
                    schemeRegistry.register(new Scheme("https", a(), 443));
                    HttpParams params = getParams();
                    HttpConnectionParams.setConnectionTimeout(params, 30000);
                    HttpConnectionParams.setSoTimeout(params, 30000);
                    HttpProtocolParams.setUserAgent(params, ax.b(application, HttpProtocolParams.getUserAgent(params)));
                    return new ThreadSafeClientConnManager(params, schemeRegistry);
                }

                protected SocketFactory a() {
                    try {
                        Class<?> cls = Class.forName("android.net.SSLSessionCache");
                        return (SocketFactory) Class.forName("android.net.SSLCertificateSocketFactory").getMethod("getHttpSocketFactory", Integer.TYPE, cls).invoke(null, 30000, cls.getConstructor(Context.class).newInstance(application));
                    } catch (Exception e) {
                        CBLogging.b("CBAsync:HttpClientProvider", "Unable to use android.net.SSLCertificateSocketFactory to get a SSL session caching socket factory, falling back to a non-caching socket factory", e);
                        return SSLSocketFactory.getSocketFactory();
                    }
                }
            };
            return c;
        } catch (Exception e) {
            CBLogging.b("CBAsync", "Exception raised getting a Chartboost HTTPClient on which to run any network request", e);
            try {
                DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                ClientConnectionManager connectionManager = defaultHttpClient.getConnectionManager();
                HttpParams params = defaultHttpClient.getParams();
                c = new DefaultHttpClient(new ThreadSafeClientConnManager(params, connectionManager.getSchemeRegistry()), params);
                return c;
            } catch (Exception e2) {
                CBLogging.b("CBAsync", "Exception raised creating a simple HTTP client", e);
                c = new DefaultHttpClient();
                return c;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(Application application, String str) {
        try {
            String str2 = application.getPackageManager().getPackageInfo(application.getPackageName(), 0).versionName;
            StringBuilder sb = new StringBuilder();
            sb.append(application.getPackageName());
            sb.append("/");
            sb.append(str2);
            sb.append(" (");
            sb.append("Linux; U; Android ");
            sb.append(Build.VERSION.RELEASE);
            sb.append("; ");
            sb.append(Locale.getDefault());
            sb.append("; ");
            sb.append(Build.PRODUCT);
            sb.append(")");
            if (str != null) {
                sb.append(" ");
                sb.append(str);
            }
            return sb.toString();
        } catch (PackageManager.NameNotFoundException e) {
            CBLogging.b("CBAsync", "Version name not available");
            return "";
        }
    }
}
