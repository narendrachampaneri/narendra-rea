package com.inmobi.commons.analytics.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.telephony.TelephonyManager;
import android.util.Base64OutputStream;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.ByteArrayOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsUtils {
    public static final String ANALYTICS_LOGGING_TAG = "[InMobi]-[Analytics]-4.5.3";
    public static final String INITIALIZE_NOT_CALLED = "Please call InMobi.initialize or startSession before calling any events API";
    private static String a;
    private static boolean b;

    public static String getWebviewUserAgent() {
        return a;
    }

    public static void setWebviewUserAgent(String str) {
        a = str;
    }

    public static synchronized void setStartHandle(boolean z) {
        b = z;
    }

    public static synchronized boolean getStartHandle() {
        return b;
    }

    public static synchronized long getMaxdbcount() {
        return AnalyticsInitializer.getConfigParams().getMaxDbEvents();
    }

    public static synchronized String getMaxevents() {
        return AnalyticsInitializer.getConfigParams().getGetParamsLimit() + "";
    }

    public static synchronized int getMaxstring() {
        return AnalyticsInitializer.getConfigParams().getMaxValLength();
    }

    public static synchronized int getMaxparamskey() {
        return AnalyticsInitializer.getConfigParams().getMaxKeyLength();
    }

    public static synchronized int getExtraParamsLimit() {
        return AnalyticsInitializer.getConfigParams().getExtraParamsLimit();
    }

    public static synchronized long getTimeinterval() {
        return AnalyticsInitializer.getConfigParams().getPingInterval();
    }

    public static synchronized int getMaxRetryBeforeDiscard() {
        return AnalyticsInitializer.getConfigParams().getMaxRetryBeforeCacheDiscard();
    }

    public static String getApplicationName(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
        } catch (Exception e) {
            Log.internal(ANALYTICS_LOGGING_TAG, "Error retrieving application name");
            return null;
        }
    }

    public static String getAppVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            Log.internal(ANALYTICS_LOGGING_TAG, "Error retrieving application version");
            return null;
        }
    }

    public static Object getCountryISO(Context context) {
        String iSO3Country;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        new Object();
        if (telephonyManager.getNetworkCountryIso().equals("")) {
            try {
                iSO3Country = context.getResources().getConfiguration().locale.getISO3Country();
            } catch (MissingResourceException e) {
                iSO3Country = null;
            }
        } else {
            try {
                iSO3Country = telephonyManager.getNetworkCountryIso();
            } catch (MissingResourceException e2) {
                iSO3Country = null;
            }
        }
        if (iSO3Country == null || iSO3Country.equals("")) {
            return null;
        }
        return iSO3Country;
    }

    public static String convertToJSON(Map<String, String> map) {
        String string;
        if (map.size() > getExtraParamsLimit()) {
            Log.verbose(ANALYTICS_LOGGING_TAG, "Analytics events - number of key-value pairs in attribute map exceeds " + getExtraParamsLimit());
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                if (str.length() > 0 && str.length() <= getMaxparamskey()) {
                    String str2 = map.get(str);
                    if (str2.length() <= getMaxstring()) {
                        jSONObject.put(str, map.get(str));
                    } else {
                        Log.verbose(ANALYTICS_LOGGING_TAG, "Analytics events - value : " + str2 + " ,exceeds inmobi's limitation of " + getMaxstring() + " characters.");
                        return null;
                    }
                } else {
                    Log.verbose(ANALYTICS_LOGGING_TAG, "Analytics events - key : " + str + " ,exceeds inmobi's limitation of " + getMaxparamskey() + " characters.");
                    return null;
                }
            }
            if (jSONObject.length() > 0) {
                string = !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
            } else {
                string = null;
            }
        } catch (Exception e) {
            Log.internal(ANALYTICS_LOGGING_TAG, "Unable to convert map to JSON");
        }
        return string;
    }

    public static String convertLevelStatus(AnalyticsEventsWrapper.IMSectionStatus iMSectionStatus) {
        if (iMSectionStatus == AnalyticsEventsWrapper.IMSectionStatus.COMPLETED) {
            return "1";
        }
        if (iMSectionStatus == AnalyticsEventsWrapper.IMSectionStatus.FAILED) {
            return "2";
        }
        if (iMSectionStatus != AnalyticsEventsWrapper.IMSectionStatus.CANCELED) {
            return null;
        }
        return "3";
    }

    public static String convertItemType(AnalyticsEventsWrapper.IMItemType iMItemType) {
        if (iMItemType == AnalyticsEventsWrapper.IMItemType.CONSUMABLE) {
            return "1";
        }
        if (iMItemType == AnalyticsEventsWrapper.IMItemType.DURABLE) {
            return "2";
        }
        if (iMItemType != AnalyticsEventsWrapper.IMItemType.PERSONALIZATION) {
            return null;
        }
        return "3";
    }

    public static String getScreenWidth(Context context) {
        return "" + context.getResources().getDisplayMetrics().widthPixels;
    }

    public static String getScreenHeight(Context context) {
        return "" + context.getResources().getDisplayMetrics().heightPixels;
    }

    public static float getDeviceDensity(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public static void asyncPingInternal(String str) throws Throwable {
        ?? r1 = 0;
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                String strReplaceAll = str.replaceAll("%25", "%");
                Log.debug(ANALYTICS_LOGGING_TAG, "Pinging URL: " + strReplaceAll);
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) HttpInstrumentation.openConnection(new URL(strReplaceAll).openConnection());
                try {
                    httpURLConnection2.setConnectTimeout(20000);
                    httpURLConnection2.setRequestMethod("GET");
                    httpURLConnection2.setRequestProperty("User-Agent", InternalSDKUtil.getUserAgent());
                    String str2 = ANALYTICS_LOGGING_TAG;
                    Log.debug(ANALYTICS_LOGGING_TAG, "Async Ping Connection Response Code: " + httpURLConnection2.getResponseCode());
                    r1 = str2;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                        r1 = str2;
                    }
                } catch (Exception e) {
                    httpURLConnection = httpURLConnection2;
                    e = e;
                    Log.debug(ANALYTICS_LOGGING_TAG, "Error doing async Ping. ", e);
                    r1 = httpURLConnection;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                        r1 = httpURLConnection;
                    }
                } catch (Throwable th) {
                    r1 = httpURLConnection2;
                    th = th;
                    if (r1 != 0) {
                        r1.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public static String getEventUrl() {
        return AnalyticsInitializer.getConfigParams().getEndPoints().getEventsUrl();
    }

    public static String compressPayload(String str) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 0);
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
            gZIPOutputStream.write(str.getBytes("UTF-8"));
            gZIPOutputStream.close();
            base64OutputStream.close();
            return byteArrayOutputStream.toString();
        } catch (Exception e) {
            Log.internal(ANALYTICS_LOGGING_TAG, "Exception compress sdk payload.", e);
            return null;
        }
    }
}
