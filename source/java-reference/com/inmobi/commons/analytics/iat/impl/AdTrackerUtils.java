package com.inmobi.commons.analytics.iat.impl;

import android.content.Context;
import android.content.Intent;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerEventType;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer;
import com.inmobi.commons.analytics.iat.impl.net.AdTrackerNetworkInterface;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.EventLog;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdTrackerUtils {
    public static boolean updateStatus() {
        if (InternalSDKUtil.getContext() == null) {
            return false;
        }
        FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.IAT_DOWNLOAD_STATUS, true);
        return true;
    }

    public static boolean resetStatus() {
        if (InternalSDKUtil.getContext() == null) {
            return false;
        }
        FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.IAT_DOWNLOAD_STATUS, false);
        return true;
    }

    public static boolean isPermissionGranted(String str) {
        try {
            if (InternalSDKUtil.getContext().checkCallingOrSelfPermission(str) == 0) {
                return true;
            }
            return false;
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Cant check permissions", e);
        }
    }

    public static boolean sendBroadcastMessage(int i) {
        try {
            Intent intent = new Intent();
            intent.setAction(AdTrackerConstants.TESTMODE_INTENT);
            intent.putExtra(AdTrackerConstants.ADTRACKER_ERROR, i);
            InternalSDKUtil.getContext().sendBroadcast(intent);
            return true;
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Cant send test broadcast", e);
            return false;
        }
    }

    public static boolean checkDownloadGoalUploaded() {
        if (InternalSDKUtil.getContext() != null) {
            return FileOperations.getBooleanPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.IAT_DOWNLOAD_STATUS);
        }
        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Application Context NULL cannot checkStatusUpload");
        return false;
    }

    public static boolean checkDownloadGoalAdded() {
        if (InternalSDKUtil.getContext() != null) {
            return FileOperations.getBooleanPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.IAT_DOWNLOAD_INSERT_STATUS);
        }
        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Application Context NULL cannot checkStatusUpload");
        return false;
    }

    public static void reportMetric(AdTrackerEventType adTrackerEventType, Goal goal, int i, long j, int i2, String str) {
        try {
            if (AdTrackerNetworkInterface.isMetricSample()) {
                if (AdTrackerEventType.GOAL_SUCCESS.equals(adTrackerEventType)) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("g", goal.name);
                    jSONObject.put("n", goal.retryCount);
                    jSONObject.put("t", j);
                    jSONObject.put("r", i);
                    AdTrackerInitializer.getLogger().logEvent(new EventLog(AdTrackerEventType.GOAL_SUCCESS, jSONObject));
                    return;
                }
                if (AdTrackerEventType.GOAL_FAILURE.equals(adTrackerEventType)) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("g", goal.name);
                    jSONObject2.put("n", goal.retryCount);
                    jSONObject2.put("e", i2);
                    if (str != null) {
                        jSONObject2.put("m", str);
                    }
                    AdTrackerInitializer.getLogger().logEvent(new EventLog(AdTrackerEventType.GOAL_FAILURE, jSONObject2));
                    return;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("g", goal.name);
                jSONObject3.put("n", goal.retryCount);
                AdTrackerInitializer.getLogger().logEvent(new EventLog(AdTrackerEventType.GOAL_DUMPED, jSONObject3));
            }
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error reporting metric", e);
        }
    }

    public static String getReferrerFromLogs() {
        String strGroup;
        Exception e;
        String[] strArr = {"logcat", "-d", "ActivityManager:I"};
        try {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Getting referrer from logs");
            Pattern patternCompile = Pattern.compile(AdTrackerInitializer.getConfigParams().getLogcatPattern());
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(strArr).getInputStream()));
            strGroup = null;
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    Matcher matcher = patternCompile.matcher(line);
                    if (matcher.find()) {
                        strGroup = matcher.group(1);
                    }
                } catch (Exception e2) {
                    e = e2;
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Getting referrer from logs failed", e);
                }
            }
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Received referrer from logs: " + strGroup);
        } catch (Exception e3) {
            strGroup = null;
            e = e3;
        }
        return strGroup;
    }

    public static void setInternalReferrer(Context context, String str) {
        try {
            if (context == null || str == null) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Cannot set Market Referrer..Referrer NULL");
                return;
            }
            if (0 == FileOperations.getLongPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_T2)) {
                FileOperations.setPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_T2, System.currentTimeMillis());
            }
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Saving referrer from broadcast receiver: " + str);
            if (FileOperations.getPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER) != null) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Install Receiver already set. Download Goal queued");
                return;
            }
            FileOperations.setPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER, str);
            FileOperations.setPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REFERRER_FROM_LOGCAT, "0");
            String preferences = FileOperations.getPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, "mk-siteid");
            if (preferences == null || "".equals(preferences.trim())) {
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Initialization incomplete. Please call InMobi initialize with a valid app Id");
                return;
            }
            if (FileOperations.getBooleanPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.WAIT_FOR_REFERRER)) {
                InternalSDKUtil.setContext(context);
                AdTrackerNetworkInterface.init();
                AdTrackerNetworkInterface.getGoalList().addGoal(AdTrackerConstants.GOAL_DOWNLOAD, 1, 0L, 0, true);
                AdTrackerNetworkInterface.reportToServer(preferences);
                return;
            }
            AdTrackerNetworkInterface.onReceiveReferrer(preferences);
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Cannot set referrer", e);
        }
    }

    public static void setReferrerFromLogs(Context context, String str) {
        try {
            if (context == null || str == null) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Cannot set Market Referrer from logs..Referrer NULL");
                return;
            }
            if (0 == FileOperations.getLongPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_T2)) {
                FileOperations.setPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_T2, System.currentTimeMillis());
            }
            FileOperations.setPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER, str);
            FileOperations.setPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REFERRER_FROM_LOGCAT, "1");
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Cannot set referrer from logs", e);
        }
    }
}
