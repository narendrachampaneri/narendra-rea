package com.inmobi.commons.analytics.net;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.db.AnalyticsDatabaseManager;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public final class AnalyticsNetworkManager {
    public static final int MESSAGE_PING = 1001;
    private static Handler a;
    private static AnalyticsNetworkManager b;
    private static AnalyticsConnectivityReceiver.a f = new AnalyticsConnectivityReceiver.a() { // from class: com.inmobi.commons.analytics.net.AnalyticsNetworkManager.1
        @Override // com.inmobi.commons.analytics.net.AnalyticsConnectivityReceiver.a
        public void b() {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Connectivity gone");
        }

        @Override // com.inmobi.commons.analytics.net.AnalyticsConnectivityReceiver.a
        public void a() {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Connectivity came");
            if (AnalyticsNetworkManager.a != null && !AnalyticsUtils.getStartHandle()) {
                AnalyticsUtils.setStartHandle(true);
                AnalyticsNetworkManager.a.sendEmptyMessageDelayed(1001, AnalyticsUtils.getTimeinterval());
            }
        }
    };
    private AnalyticsPayloadBuilder c;
    private AnalyticsConnectivityReceiver d;
    private int e = 0;

    private AnalyticsNetworkManager() {
        new a().start();
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "NetworkManager-> Constructor ");
    }

    public static Handler getHandler() {
        return a;
    }

    public static synchronized AnalyticsNetworkManager startInstance() {
        if (b == null) {
            b = new AnalyticsNetworkManager();
        }
        if (b.c == null) {
            b.c = new AnalyticsPayloadBuilder();
        }
        if (b.d == null) {
            b.d = new AnalyticsConnectivityReceiver(InternalSDKUtil.getContext(), f);
        }
        return b;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x012c  */
    /* JADX WARN: Code duplicated, block: B:55:? A[RETURN, SYNTHETIC] */
    private void a(AnalyticsPayload analyticsPayload, String str) throws Throwable {
        boolean z;
        int responseCode;
        BufferedReader bufferedReader;
        StringBuilder sb;
        try {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Ping URL: " + AnalyticsUtils.getEventUrl());
            String completePayload = analyticsPayload.getCompletePayload();
            int minEventsToCompress = AnalyticsInitializer.getConfigParams().getMinEventsToCompress();
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Post body: " + completePayload);
            if (analyticsPayload.getPayloadSize() < minEventsToCompress || Build.VERSION.SDK_INT < 8) {
                z = false;
            } else {
                Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Compressing the payload");
                z = true;
                completePayload = AnalyticsUtils.compressPayload(completePayload);
            }
            int maxAppIdLength = AnalyticsInitializer.getConfigParams().getMaxAppIdLength();
            if (str.length() > maxAppIdLength) {
                str = str.substring(0, maxAppIdLength);
            }
            String strA = a(completePayload, str, z);
            Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Post body: " + strA);
            AnalyticsCommon analyticsCommon = new AnalyticsCommon();
            HttpURLConnection httpURLConnection = analyticsCommon.setupConnection(AnalyticsUtils.getEventUrl());
            analyticsCommon.postData(httpURLConnection, strA);
            try {
                responseCode = httpURLConnection.getResponseCode();
            } catch (IOException e) {
                responseCode = HttpStatus.SC_UNAUTHORIZED;
            }
            Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Http Status Code: " + responseCode);
            if (responseCode == 200) {
                this.e = 0;
                AnalyticsDatabaseManager.getInstance().deleteEvents(analyticsPayload.getTableIdList());
            } else {
                this.e++;
                if (this.e >= AnalyticsUtils.getMaxRetryBeforeDiscard()) {
                    this.e = 0;
                    AnalyticsDatabaseManager.getInstance().deleteEvents(analyticsPayload.getTableIdList());
                }
            }
            try {
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"));
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line != null) {
                            sb.append(line).append("\n");
                        } else {
                            Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Ping Response: " + sb.toString());
                            httpURLConnection.disconnect();
                            analyticsCommon.closeResource(bufferedReader);
                            return;
                        }
                        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception Pinging", e);
                        this.e++;
                        if (this.e >= AnalyticsUtils.getMaxRetryBeforeDiscard()) {
                            this.e = 0;
                            AnalyticsDatabaseManager.getInstance().deleteEvents(analyticsPayload.getTableIdList());
                        }
                    }
                } catch (Exception e2) {
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream(), "UTF-8"));
                    } catch (Exception e3) {
                        bufferedReader = null;
                    }
                }
                sb = new StringBuilder();
            } catch (Exception e4) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Unable to read from stream");
            }
        } catch (Exception e5) {
            Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception Pinging", e5);
            this.e++;
            if (this.e >= AnalyticsUtils.getMaxRetryBeforeDiscard()) {
                this.e = 0;
                AnalyticsDatabaseManager.getInstance().deleteEvents(analyticsPayload.getTableIdList());
            }
        }
    }

    private String a(String str, String str2, boolean z) {
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append("payload=");
            sb.append(AnalyticsCommon.getURLEncoded(str));
        }
        if (str2 != null) {
            sb.append("&mk-siteid=");
            sb.append(str2);
        }
        sb.append("&c=");
        if (z) {
            sb.append(1);
        } else {
            sb.append(0);
        }
        String strEncodeMapAndconvertToDelimitedString = InternalSDKUtil.encodeMapAndconvertToDelimitedString(UID.getInstance().getMapForEncryption(AnalyticsInitializer.getConfigParams().getDeviceIdMaskMap()), "&");
        sb.append("&");
        sb.append(strEncodeMapAndconvertToDelimitedString);
        String str3 = "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(InternalSDKUtil.INMOBI_SDK_RELEASE_VERSION) + "-" + InternalSDKUtil.INMOBI_SDK_RELEASE_DATE;
        sb.append("&mk-version=");
        sb.append(str3);
        sb.append("&u-id-adt=");
        if (UID.getInstance().isLimitAdTrackingEnabled()) {
            sb.append(1);
        } else {
            sb.append(0);
        }
        return sb.toString();
    }

    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            Handler unused = AnalyticsNetworkManager.a = new Handler(new Handler.Callback() { // from class: com.inmobi.commons.analytics.net.AnalyticsNetworkManager.a.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) throws Throwable {
                    Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "NetworkManager->handleMessag: msg:" + message);
                    if (message.what == 1001) {
                        if (AnalyticsInitializer.getConfigParams().getAutomaticCapture().isAutoSessionCaptureEnabled() || AnalyticsEventsWrapper.isEventsUser()) {
                            AnalyticsNetworkManager.this.b();
                        } else {
                            AnalyticsUtils.setStartHandle(false);
                        }
                    }
                    return true;
                }
            });
            Looper.loop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() throws Throwable {
        boolean z = true;
        if (this.d != null && this.d.isConnected() && this.c != null) {
            AnalyticsPayload payloadList = this.c.getPayloadList(AnalyticsDatabaseManager.getInstance().getEvents(), InternalSDKUtil.getContext());
            if (payloadList.getCompletePayload() != null) {
                a(payloadList, SessionInfo.getAppId(InternalSDKUtil.getContext()));
                z = false;
            }
        }
        if (!z) {
            a.sendEmptyMessageDelayed(1001, AnalyticsUtils.getTimeinterval());
        } else {
            AnalyticsUtils.setStartHandle(false);
        }
    }
}
