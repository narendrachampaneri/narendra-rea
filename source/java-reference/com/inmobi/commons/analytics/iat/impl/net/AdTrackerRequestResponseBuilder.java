package com.inmobi.commons.analytics.iat.impl.net;

import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.iat.impl.Goal;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.IOException;
import java.util.LinkedList;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdTrackerRequestResponseBuilder {
    private static String a = null;
    private static long b = 0;

    protected static String formHttpRequest(String str, String str2, int i, boolean z, String str3) {
        String str4;
        LinkedList linkedList = new LinkedList();
        String preferences = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER);
        if (str != null && !str.trim().equals("")) {
            linkedList.add(new BasicNameValuePair("mk-siteid", str));
        }
        Map<String, String> mapForEncryption = UID.getInstance().getMapForEncryption(AdTrackerInitializer.getConfigParams().getDeviceIdMaskMap());
        if (UID.getInstance().isLimitAdTrackingEnabled()) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.KEY_LIMIT_ADTRACKING, "1"));
        } else {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.KEY_LIMIT_ADTRACKING, "0"));
        }
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.UIDMAP, mapForEncryption.get(AdTrackerConstants.UIDMAP)));
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.UIDKEY, mapForEncryption.get(AdTrackerConstants.UIDKEY)));
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.UKEYVER, mapForEncryption.get(AdTrackerConstants.UKEYVER)));
        if (str2 != null && !str2.trim().equals("")) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.GOALNAME, str2));
        }
        if (z) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.LATE_PING, "1"));
        } else {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.LATE_PING, "0"));
        }
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.SOURCE, AdTrackerConstants.ANDROID));
        if (i > 0) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.GOALCOUNT, Integer.toString(i)));
        }
        String str5 = "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(InternalSDKUtil.INMOBI_SDK_RELEASE_VERSION) + "-" + InternalSDKUtil.INMOBI_SDK_RELEASE_DATE;
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.SDKVER, str5));
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.SDKREL_VER, str5));
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.OS_VERSION, String.valueOf(Build.VERSION.SDK_INT)));
        String preferences2 = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REFERRER_FROM_LOGCAT);
        if (preferences2 == null) {
            preferences2 = "0";
        }
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.KEY_REFERRER_FROM_LOGCAT, preferences2));
        try {
            str4 = InternalSDKUtil.getContext().getPackageManager().getPackageInfo(InternalSDKUtil.getContext().getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Cant get appversion", e);
            str4 = null;
        }
        if (str4 != null && !str4.trim().equals("")) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.APPVER, str4));
        }
        if (str3 != null && !str3.trim().equals("")) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.VALIDIDS, str3));
        }
        if (preferences != null) {
            int intPreferences = FileOperations.getIntPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER_FROM_SDK);
            long longPreferences = FileOperations.getLongPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_T2) - FileOperations.getLongPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_T1);
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.REFERRER_FROM_SDK, Integer.toString(intPreferences)));
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.REFERRER_DELAY, Long.toString(longPreferences)));
        }
        if (1 == AdTrackerNetworkInterface.isUnstableNetwork()) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.KEY_UNSTABLE_NETWORK, Integer.toString(AdTrackerNetworkInterface.isUnstableNetwork())));
        }
        linkedList.add(new BasicNameValuePair("ts", Long.toString(System.currentTimeMillis())));
        return URLEncodedUtils.format(linkedList, "utf-8");
    }

    public static AdTrackerConstants.StatusCode reportGoalOverHttp(String str, Goal goal, String str2) {
        JSONException e;
        AdTrackerConstants.StatusCode statusCode;
        IOException e2;
        ClientProtocolException e3;
        AdTrackerConstants.StatusCode statusCode2 = AdTrackerConstants.StatusCode.APP_ANALYTICS_UPLOAD_FAILURE;
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
        String preferences = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER);
        String strFormHttpRequest = formHttpRequest(str, goal.name, goal.count, goal.isDuplicate, str2);
        int connectionTimeout = AdTrackerInitializer.getConfigParams().getConnectionTimeout();
        String str3 = AdTrackerNetworkInterface.a() + strFormHttpRequest;
        if (preferences != null) {
            str3 = str3 + "&referrer=" + preferences;
        }
        Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, str3);
        Handler handlerC = AdTrackerNetworkInterface.c();
        Message messageObtain = Message.obtain();
        messageObtain.what = 10;
        messageObtain.obj = goal;
        HttpGet httpGet = new HttpGet(str3);
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, connectionTimeout);
        HttpConnectionParams.setSoTimeout(basicHttpParams, connectionTimeout);
        defaultHttpClient.setParams(basicHttpParams);
        try {
            try {
                b = System.currentTimeMillis();
                HttpResponse httpResponseExecute = !(defaultHttpClient instanceof HttpClient) ? defaultHttpClient.execute(httpGet) : HttpInstrumentation.execute(defaultHttpClient, httpGet);
                int statusCode3 = httpResponseExecute.getStatusLine().getStatusCode();
                if (200 == statusCode3) {
                    String string = EntityUtils.toString(httpResponseExecute.getEntity());
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Response: " + string);
                    JSONObject jSONObjectInit = JSONObjectInstrumentation.init(string);
                    String string2 = jSONObjectInit.getString(AdTrackerConstants.ERRORMSG);
                    int i = jSONObjectInit.getInt(AdTrackerConstants.ERRORCODE);
                    if (6000 == i) {
                        long jCurrentTimeMillis = System.currentTimeMillis() - b;
                        AdTrackerConstants.StatusCode statusCode4 = AdTrackerConstants.StatusCode.APP_ANALYTICS_UPLOAD_SUCCESS;
                        messageObtain.what = 8;
                        messageObtain.arg2 = (int) jCurrentTimeMillis;
                        statusCode = statusCode4;
                    } else {
                        messageObtain.arg2 = i;
                        statusCode = statusCode2;
                    }
                    if (6001 == i) {
                        try {
                            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Error uploading ping " + string2 + "\nReloading webview");
                            FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.VALIDIDS, (String) null);
                            messageObtain.arg2 = i;
                        } catch (ClientProtocolException e4) {
                            e3 = e4;
                            messageObtain.arg2 = 424;
                            e3.printStackTrace();
                        } catch (IOException e5) {
                            e2 = e5;
                            messageObtain.arg2 = 424;
                            e2.printStackTrace();
                        } catch (JSONException e6) {
                            e = e6;
                            messageObtain.arg2 = 424;
                            e.printStackTrace();
                        }
                    }
                } else {
                    messageObtain.arg2 = statusCode3;
                    statusCode = statusCode2;
                }
            } finally {
                Bundle bundle = new Bundle();
                bundle.putString("appId", str);
                messageObtain.setData(bundle);
                handlerC.sendMessage(messageObtain);
            }
        } catch (ClientProtocolException e7) {
            e3 = e7;
            statusCode = statusCode2;
        } catch (IOException e8) {
            e2 = e8;
            statusCode = statusCode2;
        } catch (JSONException e9) {
            e = e9;
            statusCode = statusCode2;
        }
        return statusCode;
    }

    public static boolean serverReachable(String str) {
        try {
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
            HttpGet httpGet = new HttpGet(str);
            if ((!(defaultHttpClient instanceof HttpClient) ? defaultHttpClient.execute(httpGet) : HttpInstrumentation.execute(defaultHttpClient, httpGet)).getStatusLine().getStatusCode() == 200) {
                return true;
            }
            return false;
        } catch (Exception e) {
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Server not reachable..Logging events");
        }
    }

    public static void saveWebviewRequestParam(String str, Goal goal) {
        a = formHttpRequest(str, goal.name, goal.count, goal.isDuplicate, null);
    }

    public static String getWebViewRequestParam() {
        return a;
    }
}
