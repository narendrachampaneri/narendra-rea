package com.amazon.identity.auth.device.service;

import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.authorization.api.AuthzConstants;

/* JADX INFO: loaded from: classes.dex */
public final class MAPServiceResult {
    private MAPServiceResult() throws Exception {
        throw new Exception("This class is not instantiable!");
    }

    public static Bundle getOnSuccessBundle(String key, String value) {
        Bundle to_return = new Bundle();
        to_return.putString(key, value);
        return to_return;
    }

    public static Bundle getOnCancelBundle(int causeId, String[] rejectedScopes) {
        Bundle to_return = new Bundle();
        to_return.putInt(AuthzConstants.BUNDLE_KEY.CAUSE_ID.val, causeId);
        if (causeId == 1 && rejectedScopes != null) {
            to_return.putStringArray(AuthzConstants.BUNDLE_KEY.REJECTED_SCOPE_LIST.val, rejectedScopes);
        }
        return to_return;
    }

    public static Bundle getOnErrorBundle(AuthError e) {
        return AuthError.getErrorBundle(e);
    }
}
