package com.amazon.identity.auth.device.thread;

import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.authorization.api.AuthorizationListener;
import com.amazon.identity.auth.device.authorization.api.AuthzConstants;
import com.amazon.identity.auth.device.shared.APIListener;
import com.amazon.identity.auth.device.utils.MAPLog;

/* JADX INFO: loaded from: classes.dex */
public class AuthzCallbackFuture extends MAPCallbackFuture implements AuthorizationListener {
    private static final String LOG_TAG = AuthzCallbackFuture.class.getName();
    private Bundle mCancelResult;

    public AuthzCallbackFuture() {
        this((AuthorizationListener) null);
    }

    public AuthzCallbackFuture(AuthorizationListener listener) {
        super(listener);
    }

    public AuthzCallbackFuture(final APIListener listener) {
        super(new AuthorizationListener() { // from class: com.amazon.identity.auth.device.thread.AuthzCallbackFuture.1
            @Override // com.amazon.identity.auth.device.shared.APIListener
            public void onSuccess(Bundle response) {
                if (listener != null) {
                    listener.onSuccess(response);
                }
            }

            @Override // com.amazon.identity.auth.device.shared.APIListener
            public void onError(AuthError e) {
                if (listener != null) {
                    listener.onError(e);
                }
            }

            @Override // com.amazon.identity.auth.device.authorization.api.AuthorizationListener
            public void onCancel(Bundle cause) {
                MAPLog.w(AuthzCallbackFuture.LOG_TAG, "onCancel called in for APIListener");
            }
        });
    }

    @Override // com.amazon.identity.auth.device.authorization.api.AuthorizationListener
    public void onCancel(Bundle cause) {
        this.mCancelResult = cause;
        this.mCancelResult.putSerializable(AuthzConstants.BUNDLE_KEY.FUTURE.val, AuthzConstants.FUTURE_TYPE.CANCEL);
        this.mLatch.countDown();
        this.mListener.onCancel(this.mCancelResult);
    }

    @Override // com.amazon.identity.auth.device.thread.MAPCallbackFuture
    protected Bundle getResultHelper() {
        return this.mCancelResult != null ? this.mCancelResult : super.getResultHelper();
    }
}
