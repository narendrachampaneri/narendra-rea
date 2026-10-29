package com.inmobi.commons.analytics.events;

import android.content.Intent;
import android.os.Bundle;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.db.AnalyticsEventsQueue;
import com.inmobi.commons.analytics.db.FunctionEndSession;
import com.inmobi.commons.analytics.db.FunctionLevelBegin;
import com.inmobi.commons.analytics.db.FunctionLevelEnd;
import com.inmobi.commons.analytics.db.FunctionSetUserAttribute;
import com.inmobi.commons.analytics.db.FunctionStartSession;
import com.inmobi.commons.analytics.db.FunctionTagEvent;
import com.inmobi.commons.analytics.db.FunctionTagTransaction;
import com.inmobi.commons.analytics.net.AnalyticsNetworkManager;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AnalyticsEventsWrapper {
    private static AnalyticsEventsWrapper a;
    private static boolean c = false;
    private AnalyticsEventsQueue b;

    public enum IMItemType {
        CONSUMABLE,
        DURABLE,
        PERSONALIZATION
    }

    public enum IMSectionStatus {
        COMPLETED,
        FAILED,
        CANCELED
    }

    public static boolean isEventsUser() {
        return c;
    }

    public static void setIsEventsUser() {
        c = true;
    }

    private AnalyticsEventsWrapper() {
    }

    public static synchronized AnalyticsEventsWrapper getInstance() {
        if (AnalyticsUtils.getWebviewUserAgent() == null) {
            AnalyticsUtils.setWebviewUserAgent(InternalSDKUtil.getUserAgent());
        }
        if (a == null) {
            a = new AnalyticsEventsWrapper();
            AnalyticsUtils.setStartHandle(false);
            AnalyticsNetworkManager.startInstance();
        }
        a.b = AnalyticsEventsQueue.getInstance();
        return a;
    }

    /* JADX WARN: Code duplicated, block: B:5:0x000e A[Catch: Exception -> 0x0024, TryCatch #0 {Exception -> 0x0024, blocks: (B:3:0x0002, B:8:0x0016, B:10:0x001e, B:14:0x002d, B:5:0x000e), top: B:17:0x0002 }] */
    public void startSession(String str, Map<String, String> map) {
        if (str == null) {
            a("appid cannot be null or empty");
        } else {
            try {
                if (str.trim().equals("")) {
                    a("appid cannot be null or empty");
                } else if (map != null && map.size() > 10) {
                    a("attribute map cannot exceed 10 values");
                } else {
                    this.b.addElement(new FunctionStartSession(InternalSDKUtil.getContext(), str, map));
                    this.b.processFunctions();
                }
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Init exception", e);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0010 A[Catch: Exception -> 0x0024, TRY_LEAVE, TryCatch #0 {Exception -> 0x0024, blocks: (B:3:0x0002, B:5:0x000a, B:7:0x0010), top: B:12:0x0002 }] */
    public void endSession(Map<String, String> map) {
        if (map == null) {
            this.b.addElement(new FunctionEndSession(InternalSDKUtil.getContext(), map));
            this.b.processFunctions();
        } else {
            try {
                if (map.size() > 10) {
                    a("attribute map cannot exceed 10 values");
                } else {
                    this.b.addElement(new FunctionEndSession(InternalSDKUtil.getContext(), map));
                    this.b.processFunctions();
                }
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "End Session Exception", e);
            }
        }
    }

    public void beginSection(int i, String str, Map<String, String> map) {
        try {
            if (str == null) {
                a("arguments cannot be null");
            } else if (map != null && map.size() > 10) {
                a("attribute map cannot exceed 10 values");
            } else if (a()) {
                this.b.addElement(new FunctionLevelBegin(InternalSDKUtil.getContext(), i, str, map));
                this.b.processFunctions();
            }
        } catch (Exception e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Begin Section Exception", e);
        }
    }

    public void endSection(int i, String str, Map<String, String> map) {
        try {
            if (str == null) {
                a("arguments cannot be null");
            } else if (map != null && map.size() > 10) {
                a("attribute map cannot exceed 10 values");
            } else if (a()) {
                this.b.addElement(new FunctionLevelEnd(InternalSDKUtil.getContext(), i, str, null, map));
                this.b.processFunctions();
            }
        } catch (Exception e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "End Section Exception", e);
        }
    }

    public void tagTransactionManually(Intent intent, Bundle bundle) {
        try {
            if (intent == null) {
                a("transaction intent cannot be null or empty");
            } else if (a()) {
                this.b.addElement(new FunctionTagTransaction(InternalSDKUtil.getContext(), intent, bundle));
                this.b.processFunctions();
            }
        } catch (Exception e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Tag Transaction Manually Exception", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:5:0x000e A[Catch: Exception -> 0x0024, TryCatch #0 {Exception -> 0x0024, blocks: (B:3:0x0002, B:8:0x0016, B:10:0x001e, B:14:0x002d, B:16:0x0033, B:5:0x000e), top: B:19:0x0002 }] */
    public void tagEvent(String str, Map<String, String> map) {
        if (str == null) {
            a("arguments cannot be null or empty");
        } else {
            try {
                if (str.trim().equals("")) {
                    a("arguments cannot be null or empty");
                } else if (map != null && map.size() > 10) {
                    a("attribute map cannot exceed 10 values");
                } else if (a()) {
                    this.b.addElement(new FunctionTagEvent(InternalSDKUtil.getContext(), str, map));
                    this.b.processFunctions();
                }
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Tag Event Exception", e);
            }
        }
    }

    private void a(String str) {
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IllegalArgumentError: " + str);
    }

    private boolean a() {
        if (InternalSDKUtil.getContext() != null && SessionInfo.getSessionId(InternalSDKUtil.getContext()) == null) {
            startSession(InMobi.getAppId(), null);
        } else if (SessionInfo.getSessionId(InternalSDKUtil.getContext()) == null) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, AnalyticsUtils.INITIALIZE_NOT_CALLED);
            return false;
        }
        return true;
    }

    public void setUserAttribute(String str, String str2) {
        if (str == null || str.trim().equals("") || str2 == null || str2.trim().equals("")) {
            a("arguments cannot be null or empty");
            return;
        }
        if (str.length() > 15 || str2.length() > 20) {
            a("attribute name cannot exceed 15 chars and attribute val cannot exceed 20 chars. Please pass a valid attribute");
            return;
        }
        try {
            if (a()) {
                this.b.addElement(new FunctionSetUserAttribute(InternalSDKUtil.getContext(), str, str2));
                this.b.processFunctions();
            }
        } catch (Exception e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Set User Attribute Exception", e);
        }
    }
}
