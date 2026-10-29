package com.amazon.ags.html5.javascript;

import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.amazon.ags.auth.AuthManager;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.NativeCallResultCode;
import com.amazon.ags.constants.NativeCallTypes;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.authorization.api.AuthorizationListener;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NativeAuthCallHandler extends CallHandlerBase {
    private static final Set<String> supportedCalls = new HashSet(Arrays.asList(NativeCallTypes.GET_LOGGED_IN_STATUS, NativeCallTypes.DO_LOGIN, NativeCallTypes.DO_LOGOUT));
    private final AuthManager authManager;

    public NativeAuthCallHandler(Handler uiThreadHandler, AuthManager authManager) {
        super(uiThreadHandler, supportedCalls);
        this.authManager = authManager;
    }

    @Override // com.amazon.ags.html5.javascript.CallHandlerBase
    protected boolean handleMessage(String rid, String nativeCallType, JSONObject request) {
        if (NativeCallTypes.GET_LOGGED_IN_STATUS.equals(nativeCallType)) {
            getLoggedInStatus(rid);
            return true;
        }
        if (NativeCallTypes.DO_LOGIN.equals(nativeCallType)) {
            doLogin(rid);
            return true;
        }
        if (NativeCallTypes.DO_LOGOUT.equals(nativeCallType)) {
            doLogout(rid);
            return true;
        }
        return false;
    }

    private void getLoggedInStatus(String rid) {
        JSONObject reply = new JSONObject();
        try {
            boolean isLoggedIn = this.authManager.isLoggedIn();
            Log.d(this.TAG, "Logged in: " + isLoggedIn);
            reply.put(NativeCallKeys.LOGGED_IN_STATUS, isLoggedIn);
        } catch (JSONException e) {
            Log.e(this.TAG, "Error building GET_LOGGED_IN_STATUS response", e);
        }
        sendReply(rid, !(reply instanceof JSONObject) ? reply.toString() : JSONObjectInstrumentation.toString(reply), NativeCallResultCode.SUCCESS);
    }

    private void doLogin(final String rid) {
        this.authManager.tryLogin(new AuthorizationListener() { // from class: com.amazon.ags.html5.javascript.NativeAuthCallHandler.1
            @Override // com.amazon.identity.auth.device.shared.APIListener
            public void onSuccess(Bundle response) {
                NativeAuthCallHandler.this.sendReply(rid, "{}", NativeCallResultCode.SUCCESS);
            }

            @Override // com.amazon.identity.auth.device.shared.APIListener
            public void onError(AuthError e) {
                NativeAuthCallHandler.this.sendReply(rid, "{}", "ERROR");
            }

            @Override // com.amazon.identity.auth.device.authorization.api.AuthorizationListener
            public void onCancel(Bundle cause) {
                NativeAuthCallHandler.this.sendReply(rid, "{}", "ERROR");
            }
        });
    }

    private void doLogout(String rid) {
        try {
            this.authManager.logout();
            sendReply(rid, "{}", NativeCallResultCode.SUCCESS);
        } catch (AuthError e) {
            Log.e(this.TAG, "Failed to log out", e);
            sendReply(rid, "{}", "ERROR");
        }
    }
}
