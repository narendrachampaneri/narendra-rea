package com.inmobi.commons.analytics.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.amazon.ags.constants.BindingKeys;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.GregorianCalendar;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class SessionInfo {
    private static String a;
    private static long b;
    private static String c;
    private static int d;

    public static synchronized boolean isUpdatedFromOldSDK(Context context) {
        return context.getSharedPreferences("inmobiAppAnalyticsSession", 0).getBoolean("UPDATED_FROM_OLD_SDK", false);
    }

    public static synchronized void updatedFromOldSDK(Context context) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).edit();
        editorEdit.putBoolean("UPDATED_FROM_OLD_SDK", true);
        editorEdit.commit();
    }

    public static synchronized void resetFirstTime() {
        d = 0;
    }

    public static synchronized int getFirstTime() {
        return d;
    }

    public static synchronized void storeFirstTime(Context context) {
        long timeInMillis;
        int i;
        synchronized (SessionInfo.class) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences("inmobiAppAnalyticsSession", 0);
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                long j = sharedPreferences.getLong("SESSION_TIMEM", -1L);
                if (j != -1) {
                    GregorianCalendar gregorianCalendar = new GregorianCalendar();
                    gregorianCalendar.setTimeInMillis(j);
                    gregorianCalendar.setFirstDayOfWeek(2);
                    GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
                    long timeInMillis2 = gregorianCalendar2.getTimeInMillis();
                    gregorianCalendar2.setFirstDayOfWeek(2);
                    int i2 = gregorianCalendar.get(6) != gregorianCalendar2.get(6) ? 1 : 0;
                    if (gregorianCalendar.get(3) != gregorianCalendar2.get(3)) {
                        i2 |= 2;
                    }
                    if (gregorianCalendar.get(2) != gregorianCalendar2.get(2)) {
                        i2 |= 4;
                    }
                    i = i2;
                    timeInMillis = timeInMillis2;
                } else {
                    timeInMillis = new GregorianCalendar().getTimeInMillis();
                    i = 15;
                }
                editorEdit.putLong("SESSION_TIMEM", timeInMillis);
                editorEdit.commit();
                d = i;
            } catch (Exception e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception storing session data first time", e);
            }
        }
    }

    public static synchronized void storeSessionId(Context context) {
        try {
            a = UUID.randomUUID().toString();
            b = System.currentTimeMillis() / 1000;
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).edit();
            editorEdit.putString(BindingKeys.SESSION_ID, a);
            editorEdit.putString("APP_SESSION_ID", a);
            editorEdit.putLong("SESSION_TIME", b);
            editorEdit.commit();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception putting session id", e);
        }
    }

    public static synchronized String getSessionId(Context context) {
        String string;
        try {
            if (a != null) {
                string = a;
            } else {
                string = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).getString(BindingKeys.SESSION_ID, null);
                a = string;
            }
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception getting session id", e);
            string = null;
        }
        return string;
    }

    public static synchronized long getSessionTime(Context context) {
        long j;
        try {
            if (b != 0) {
                j = b;
            } else {
                j = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).getLong("SESSION_TIME", 0L);
                b = j;
            }
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception getting session time", e);
            j = 0;
        }
        return j;
    }

    public static synchronized void removeSessionId(Context context) {
        try {
            a = null;
            b = 0L;
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).edit();
            editorEdit.putString(BindingKeys.SESSION_ID, null);
            editorEdit.putString("SESSION_TIME", null);
            editorEdit.commit();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception removing session id", e);
        }
    }

    public static void storeAppId(Context context, String str) {
        try {
            c = str;
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("inmobiAppAnalyticsAppId", 0).edit();
            editorEdit.putString("APP_ID", str);
            editorEdit.commit();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception storing app id", e);
        }
    }

    public static String getAppId(Context context) {
        String string;
        try {
            if (c != null) {
                string = c;
            } else {
                string = context.getSharedPreferences("inmobiAppAnalyticsAppId", 0).getString("APP_ID", null);
                c = string;
            }
            return string;
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception getting app id", e);
            return null;
        }
    }
}
