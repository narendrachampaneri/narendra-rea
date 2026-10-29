package com.amazon.identity.auth.device.authorization;

import android.text.TextUtils;
import com.amazon.identity.auth.device.authorization.api.AuthorizationListener;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class CallbackInfo {
    private static final int MAX_OUTSTANDING = 10;
    public final String mClientId;
    public final Date mDateCreated;
    public final String mRequestId;
    public final String[] mRequestedScopes;
    public final AuthorizationListener mlistener;
    private static final String LOG_TAG = CallbackInfo.class.getName();
    private static final Object lock = new Object();
    private static final Map<String, CallbackInfo> browserCallbacks = new HashMap();

    CallbackInfo(Date dateCreated, String requestId, String clientId, String[] requestedScopes, AuthorizationListener listener) {
        this.mDateCreated = dateCreated;
        this.mClientId = clientId;
        this.mRequestedScopes = requestedScopes;
        this.mRequestId = requestId;
        this.mlistener = listener;
        browserCallbacks.put(requestId, this);
    }

    static void addCallbackInfo(CallbackInfo callbackInfo) {
        synchronized (lock) {
            cleanUp();
            browserCallbacks.put(callbackInfo.mRequestId, callbackInfo);
        }
    }

    static CallbackInfo getCallbackInfo(String requestId) {
        CallbackInfo callbackInfo;
        synchronized (lock) {
            callbackInfo = browserCallbacks.get(requestId);
            if (callbackInfo != null) {
                browserCallbacks.remove(callbackInfo.mRequestId);
            }
        }
        return callbackInfo;
    }

    static void cleanUpAll() {
        browserCallbacks.clear();
    }

    static void cleanUp() {
        if (browserCallbacks.size() > 10) {
            long oldestTime = Long.MAX_VALUE;
            CallbackInfo oldest = null;
            for (Map.Entry<String, CallbackInfo> callbackEntry : browserCallbacks.entrySet()) {
                if (callbackEntry.getValue().mDateCreated != null) {
                    long callbackCreateTime = callbackEntry.getValue().mDateCreated.getTime();
                    if (callbackCreateTime < oldestTime) {
                        oldestTime = callbackCreateTime;
                        CallbackInfo oldest2 = callbackEntry.getValue();
                        oldest = oldest2;
                    }
                } else {
                    browserCallbacks.remove(callbackEntry.getValue().mRequestId);
                }
            }
            if (oldest != null) {
                MAPLog.i(LOG_TAG, "Removing oldest request id=" + oldest.mRequestId);
                browserCallbacks.remove(oldest.mRequestId);
            }
        }
    }

    static int getCallbackInfoCount() {
        return browserCallbacks.size();
    }

    public boolean equals(CallbackInfo callbackInfo) {
        return callbackInfo != null && this.mDateCreated.equals(callbackInfo.mDateCreated) && TextUtils.equals(this.mRequestId, callbackInfo.mRequestId) && TextUtils.equals(this.mClientId, callbackInfo.mClientId) && this.mlistener == callbackInfo.mlistener;
    }
}
