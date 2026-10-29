package com.amazon.identity.auth.device.utils;

import com.amazon.identity.auth.device.AccountManagerConstants;

/* JADX INFO: loaded from: classes.dex */
public abstract class DefaultLibraryInfo {
    private static final String TAG = DefaultLibraryInfo.class.getName();
    private static AccountManagerConstants.OVERIDE_APP_STATE eState = AccountManagerConstants.OVERIDE_APP_STATE.NO_FORCE;

    public static synchronized boolean isProd() {
        return eState == AccountManagerConstants.OVERIDE_APP_STATE.FORCE_PROD || eState == AccountManagerConstants.OVERIDE_APP_STATE.NO_FORCE;
    }

    public static synchronized AccountManagerConstants.OVERIDE_APP_STATE getOverrideLibraryState() {
        return eState;
    }

    public static synchronized void setOverrideAppState(AccountManagerConstants.OVERIDE_APP_STATE state) {
        eState = state;
        MAPLog.i(TAG, "App State overwritten : " + eState);
    }
}
