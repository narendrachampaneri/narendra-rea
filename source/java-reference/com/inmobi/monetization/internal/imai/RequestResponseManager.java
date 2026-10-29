package com.inmobi.monetization.internal.imai;

import android.content.Context;
import android.os.Handler;
import com.inmobi.commons.analytics.net.AnalyticsCommon;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.monetization.internal.configs.Initializer;
import com.inmobi.monetization.internal.imai.db.ClickData;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class RequestResponseManager {
    static Thread a;
    public static AtomicBoolean isSynced;
    public static IMAIClickEventList mNetworkQueue = null;
    public static IMAIClickEventList mDBWriterQueue = new IMAIClickEventList();
    private static AtomicBoolean g = null;
    static Handler b = new Handler();
    static AtomicBoolean c = null;
    private static AtomicBoolean i = null;
    private WebviewLoader h = null;
    String d = "";
    String e = "";
    String f = "";

    public void init() {
        try {
            if (mNetworkQueue == null) {
                mNetworkQueue = IMAIClickEventList.getLoggedClickEvents();
            }
            if (g == null) {
                g = new AtomicBoolean(false);
            }
            i = new AtomicBoolean(true);
            isSynced = new AtomicBoolean(false);
            c = new AtomicBoolean(false);
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Request Response Manager init failed", e);
        }
    }

    public void deinit() {
        try {
            if (g != null) {
                g.set(false);
            }
            if (mDBWriterQueue != null) {
                mDBWriterQueue.saveClickEvents();
                mDBWriterQueue.clear();
            }
            isSynced.set(false);
            if (mNetworkQueue != null) {
                mNetworkQueue.clear();
            }
            mNetworkQueue = null;
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Request Response Manager deinit failed", e);
        }
    }

    public void processClick(final Context context, final AnalyticsCommon.HttpRequestCallback httpRequestCallback) {
        try {
            if (g.compareAndSet(false, true)) {
                a = new Thread(new Runnable() { // from class: com.inmobi.monetization.internal.imai.RequestResponseManager.1
                    @Override // java.lang.Runnable
                    public void run() {
                        while (!RequestResponseManager.isSynced.get()) {
                            try {
                                RequestResponseManager.isSynced.set(true);
                                if (RequestResponseManager.mNetworkQueue == null || RequestResponseManager.mNetworkQueue.isEmpty()) {
                                    if (RequestResponseManager.mDBWriterQueue == null && RequestResponseManager.mDBWriterQueue.isEmpty()) {
                                        Log.internal(Constants.LOG_TAG, "Click event list empty");
                                        RequestResponseManager.this.deinit();
                                        return;
                                    } else {
                                        RequestResponseManager.mNetworkQueue.addAll(RequestResponseManager.mDBWriterQueue);
                                        RequestResponseManager.mDBWriterQueue.clear();
                                    }
                                }
                                while (!RequestResponseManager.mNetworkQueue.isEmpty()) {
                                    try {
                                        ClickData clickDataRemove = RequestResponseManager.mNetworkQueue.remove(0);
                                        String clickUrl = clickDataRemove.getClickUrl();
                                        int retryCount = clickDataRemove.getRetryCount();
                                        boolean zIsPingWv = clickDataRemove.isPingWv();
                                        boolean zIsFollowRedirects = clickDataRemove.isFollowRedirects();
                                        int retryInterval = Initializer.getConfigParams().getImai().getRetryInterval();
                                        if (!InternalSDKUtil.checkNetworkAvailibility(context)) {
                                            Log.internal(Constants.LOG_TAG, "Cannot process click. Network Not available");
                                            if (retryCount > 1) {
                                                RequestResponseManager.mDBWriterQueue.add(clickDataRemove);
                                            }
                                            if (httpRequestCallback != null) {
                                                httpRequestCallback.notifyResult(1, null);
                                            }
                                            RequestResponseManager.this.deinit();
                                            return;
                                        }
                                        int maxRetry = Initializer.getConfigParams().getImai().getMaxRetry();
                                        if (!RequestResponseManager.i.get() && retryCount < maxRetry) {
                                            Log.internal(Constants.LOG_TAG, "Retrying to ping in background after " + (retryInterval / 1000) + " secs");
                                            synchronized (RequestResponseManager.a) {
                                                try {
                                                    RequestResponseManager.a.wait(retryInterval);
                                                } catch (InterruptedException e) {
                                                    Log.internal(Constants.LOG_TAG, "Network thread wait failure", e);
                                                }
                                            }
                                        }
                                        Log.internal(Constants.LOG_TAG, "Processing click in background: " + clickUrl);
                                        if (zIsPingWv) {
                                            if (RequestResponseManager.this.processClickUrlInWebview(clickUrl)) {
                                                Log.internal(Constants.LOG_TAG, "Ping in webview successful: " + clickUrl);
                                                if (httpRequestCallback != null) {
                                                    httpRequestCallback.notifyResult(0, null);
                                                }
                                            } else {
                                                clickDataRemove.setRetryCount(retryCount - 1);
                                                if (retryCount > 1) {
                                                    RequestResponseManager.mDBWriterQueue.add(clickDataRemove);
                                                }
                                                Log.internal(Constants.LOG_TAG, "Ping in webview failed: " + clickUrl);
                                                if (httpRequestCallback != null) {
                                                    httpRequestCallback.notifyResult(1, null);
                                                }
                                            }
                                        } else if (RequestResponseManager.this.processClickHttpClient(clickUrl, zIsFollowRedirects)) {
                                            Log.internal(Constants.LOG_TAG, "Ping successful: " + clickUrl);
                                            if (httpRequestCallback != null) {
                                                httpRequestCallback.notifyResult(0, null);
                                            }
                                        } else {
                                            clickDataRemove.setRetryCount(retryCount - 1);
                                            if (retryCount > 1) {
                                                RequestResponseManager.mDBWriterQueue.add(clickDataRemove);
                                            }
                                            Log.internal(Constants.LOG_TAG, "Ping  failed: " + clickUrl);
                                            if (httpRequestCallback != null) {
                                                httpRequestCallback.notifyResult(1, null);
                                            }
                                            Log.internal(Constants.LOG_TAG, "Ping failed: " + clickUrl);
                                        }
                                        if (RequestResponseManager.mDBWriterQueue.size() > Initializer.getConfigParams().getImai().getmDefaultEventsBatch()) {
                                            RequestResponseManager.mDBWriterQueue.saveClickEvents();
                                            RequestResponseManager.mDBWriterQueue.clear();
                                        }
                                    } catch (Exception e2) {
                                        Log.internal(Constants.LOG_TAG, "Exception pinging click in background", e2);
                                        RequestResponseManager.this.deinit();
                                        return;
                                    }
                                }
                            } catch (Exception e3) {
                                Log.internal(Constants.LOG_TAG, "Exception ping to server ", e3);
                                return;
                            }
                        }
                        RequestResponseManager.this.deinit();
                    }
                });
                a.setPriority(1);
                a.start();
            }
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Exception ping ", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0094  */
    public boolean processClickHttpClient(String str, boolean z) throws Throwable {
        boolean z2;
        HttpURLConnection httpURLConnection;
        Exception e;
        HttpURLConnection httpURLConnection2 = null;
        try {
            Log.internal(Constants.LOG_TAG, "Processing click in http client " + str);
            int pingTimeOut = Initializer.getConfigParams().getImai().getPingTimeOut();
            HttpURLConnection httpURLConnection3 = (HttpURLConnection) HttpInstrumentation.openConnection(new URL(str).openConnection());
            try {
                try {
                    httpURLConnection3.setInstanceFollowRedirects(z);
                    httpURLConnection3.setRequestProperty("User-Agent", InternalSDKUtil.getUserAgent());
                    httpURLConnection3.setConnectTimeout(pingTimeOut);
                    httpURLConnection3.setReadTimeout(pingTimeOut);
                    httpURLConnection3.setUseCaches(false);
                    httpURLConnection3.setRequestProperty("user-agent", InternalSDKUtil.getSavedUserAgent());
                    httpURLConnection3.setRequestMethod("GET");
                    boolean z3 = httpURLConnection3.getResponseCode() < 400;
                    try {
                        if (true == z3) {
                            i.set(true);
                        } else {
                            i.set(false);
                        }
                        if (httpURLConnection3 == null) {
                            return z3;
                        }
                        httpURLConnection3.disconnect();
                        return z3;
                    } catch (Exception e2) {
                        httpURLConnection = httpURLConnection3;
                        z2 = z3;
                        e = e2;
                        try {
                            i.set(false);
                            Log.internal(Constants.LOG_TAG, "Click in background exception", e);
                            if (httpURLConnection == null) {
                                return z2;
                            }
                            httpURLConnection.disconnect();
                            return z2;
                        } catch (Throwable th) {
                            th = th;
                            httpURLConnection2 = httpURLConnection;
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    httpURLConnection2 = httpURLConnection3;
                    th = th2;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                z2 = false;
                httpURLConnection = httpURLConnection3;
            }
        } catch (Exception e4) {
            z2 = false;
            httpURLConnection = null;
            e = e4;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public boolean processClickUrlInWebview(String str) {
        try {
            Log.internal(Constants.LOG_TAG, "Processing click in webview " + str);
            this.h = new WebviewLoader(InternalSDKUtil.getContext());
            int pingTimeOut = Initializer.getConfigParams().getImai().getPingTimeOut();
            this.h.loadInWebview(str, null);
            synchronized (a) {
                try {
                    a.wait(pingTimeOut);
                } catch (InterruptedException e) {
                    Log.internal(Constants.LOG_TAG, "Network thread wait failure", e);
                }
            }
            if (true == c.get()) {
                i.set(true);
            } else {
                i.set(false);
                WebviewLoader.b.set(false);
            }
            this.h.deinit(pingTimeOut);
            return c.get();
        } catch (Exception e2) {
            Log.internal(Constants.LOG_TAG, "ping in webview exception", e2);
            return c.get();
        }
    }
}
