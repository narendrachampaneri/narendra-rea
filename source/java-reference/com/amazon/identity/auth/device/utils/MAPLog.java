package com.amazon.identity.auth.device.utils;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class MAPLog {
    private static final String ENG = "eng";
    private static final int FLAVOR_INDEX = 2;
    private static final String LOG_TAG_PII = "com.amazon.identity.pii";
    private static final String MATCHER_PATTERN = "^(?:(.*?)_)??(?:([^_]*)_)?([0-9]+)$";
    private static final String NO_MESSAGE = "N/A";
    private static final int NUM_GROUPS = 3;
    private static final String OBSCURED = "<obscured>";
    private static final String PII_STRING = ".PII";
    private static final String SEPARATOR = ":";
    private static final String USERDEBUG = "userdebug";
    private static final String LOG_TAG = MAPLog.class.getName();
    public static boolean IS_FIRST_PARTY_DEBUG_BUILD = isFirstPartyDebugBuild();

    public static int pii(String tag, String msg, String pii) {
        return pii(tag, msg, pii, null);
    }

    public static int pii(String tag, String msg, String pii, Throwable tr) {
        String piiTag = tag;
        if (piiTag == null) {
            piiTag = "NULL_TAG";
        }
        int priority = 3;
        String piiInfo = OBSCURED;
        if (IS_FIRST_PARTY_DEBUG_BUILD) {
            priority = 4;
            piiInfo = pii;
        } else if ((DefaultLibraryInfo.isProd() && Log.isLoggable(LOG_TAG_PII, 3)) || !DefaultLibraryInfo.isProd()) {
            piiInfo = pii;
        }
        if (tr != null) {
            if (priority == 4) {
                return Log.i(piiTag + PII_STRING, getUpdatedMessage(msg, piiInfo), tr);
            }
            return Log.d(piiTag + PII_STRING, getUpdatedMessage(msg, piiInfo), tr);
        }
        if (priority == 4) {
            return Log.i(piiTag + PII_STRING, getUpdatedMessage(msg, piiInfo));
        }
        return Log.d(piiTag + PII_STRING, getUpdatedMessage(msg, piiInfo));
    }

    private static String getUpdatedMessage(String msg, String pii) {
        StringBuffer newMsg = new StringBuffer(msg);
        if (!TextUtils.isEmpty(pii)) {
            newMsg.append(SEPARATOR);
            newMsg.append(pii);
        }
        return newMsg.toString();
    }

    public static int d(String tag, String msg) {
        return Log.d(tag, msg);
    }

    public static int d(String tag, String msg, Throwable tr) {
        return Log.d(tag, msg, tr);
    }

    public static int e(String tag, String msg) {
        return Log.e(tag, msg);
    }

    public static int e(String tag, String msg, Throwable tr) {
        return Log.e(tag, msg, tr);
    }

    public static int i(String tag, String msg) {
        return Log.i(tag, msg);
    }

    public static int i(String tag, String msg, Throwable tr) {
        return Log.i(tag, msg, tr);
    }

    public static int v(String tag, String msg) {
        return Log.v(tag, msg);
    }

    public static int v(String tag, String msg, Throwable tr) {
        return Log.v(tag, msg, tr);
    }

    public static int w(String tag, String msg) {
        return Log.w(tag, msg);
    }

    public static int w(String tag, Throwable tr) {
        return Log.w(tag, NO_MESSAGE, tr);
    }

    public static int w(String tag, String msg, Throwable tr) {
        return Log.w(tag, msg, tr);
    }

    public static String getStackTraceString(Throwable tr) {
        return Log.getStackTraceString(tr);
    }

    public static boolean isLoggable(String tag, int level) {
        return Log.isLoggable(tag, level);
    }

    public static int println(int priority, String tag, String msg) {
        return Log.println(priority, tag, msg);
    }

    public static int wtf(String tag, Throwable tr) {
        return Log.wtf(tag, tr);
    }

    public static int wtf(String tag, String msg) {
        return Log.wtf(tag, msg);
    }

    public static int wtf(String tag, String msg, Throwable tr) {
        return Log.wtf(tag, msg, tr);
    }

    private static boolean isFirstPartyDebugBuild() {
        boolean z = false;
        try {
            String incrementalVersionString = Build.VERSION.INCREMENTAL;
            if (TextUtils.isEmpty(incrementalVersionString)) {
                w(LOG_TAG, "Incremental version was empty");
            } else {
                Pattern p = Pattern.compile(MATCHER_PATTERN);
                pii(LOG_TAG, "Extracting verison incremental", "Build.VERSION.INCREMENTAL: " + incrementalVersionString);
                Matcher m = p.matcher(incrementalVersionString);
                if (!m.find()) {
                    pii(LOG_TAG, "Incremental version '%s' was in invalid format.", "ver=" + incrementalVersionString);
                } else if (m.groupCount() < 3) {
                    e(LOG_TAG, "Error parsing build version string.");
                } else {
                    String buildFlavor = m.group(2);
                    pii(LOG_TAG, "Extracting flavor", "Build flavor: " + buildFlavor);
                    if (!TextUtils.isEmpty(buildFlavor) && (buildFlavor.equals(USERDEBUG) || buildFlavor.equals(ENG))) {
                        i(LOG_TAG, "MAP is running on 1st party debug");
                        z = true;
                    }
                }
            }
        } catch (Exception e) {
            e(LOG_TAG, e.getMessage(), e);
        }
        return z;
    }
}
