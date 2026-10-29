package com.amazon.identity.auth.device.thread;

import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.authorization.api.AuthorizationListener;
import com.amazon.identity.auth.device.utils.MAPLog;

/* JADX INFO: loaded from: classes.dex */
public class DefaultAuthorizationListener implements AuthorizationListener {
    private static final String LOG_TAG = DefaultAuthorizationListener.class.getName();

    @Override // com.amazon.identity.auth.device.shared.APIListener
    public void onSuccess(Bundle response) {
        MAPLog.i(LOG_TAG, "onSuccess");
    }

    @Override // com.amazon.identity.auth.device.shared.APIListener
    public void onError(AuthError e) {
        MAPLog.i(LOG_TAG, "onError");
    }

    @Override // com.amazon.identity.auth.device.authorization.api.AuthorizationListener
    public void onCancel(Bundle cause) {
        MAPLog.i(LOG_TAG, "onCancel");
    }
}
