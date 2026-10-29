package com.amazon.identity.auth.device.authorization;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.authorization.api.AuthorizationListener;
import com.amazon.identity.auth.device.authorization.api.AuthzConstants;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public class AuthorizationActivity extends Activity implements TraceFieldInterface {

    @SuppressLint({"Registered"})
    private static final String LOG_TAG = AuthorizationActivity.class.getName();

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        TraceMachine.startTracing("AuthorizationActivity");
        try {
            TraceMachine.enterMethod(this._nr_trace, "AuthorizationActivity#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "AuthorizationActivity#onCreate", null);
        }
        super.onCreate(bundle);
        MAPLog.w(LOG_TAG, "onCreate");
        Uri uri = getIntent().getData();
        if (uri == null) {
            MAPLog.i(LOG_TAG, "uri is null onCreate - closing activity");
            finish();
            TraceMachine.exitMethod();
            return;
        }
        AuthorizationResponseParser parser = new AuthorizationResponseParser();
        final CallbackInfo callbackIntentInfo = AuthorizationResponseParser.getCallbackInfo(uri.toString());
        if (uri != null && callbackIntentInfo != null) {
            MAPLog.pii(LOG_TAG, "Received response from WebBroswer for OAuth2 flow", "response=" + uri.toString());
            try {
                Bundle result = parser.extractResultsBundle(uri.toString(), callbackIntentInfo.mRequestId, callbackIntentInfo.mRequestedScopes);
                if (result.containsKey(AuthzConstants.BUNDLE_KEY.CAUSE_ID.val)) {
                    callbackIntentInfo.mlistener.onCancel(result);
                    finish();
                    TraceMachine.exitMethod();
                    return;
                }
                AuthorizationHelper helper = new AuthorizationHelper();
                helper.doExchange(getApplicationContext(), result, new AuthorizationListener() { // from class: com.amazon.identity.auth.device.authorization.AuthorizationActivity.1
                    @Override // com.amazon.identity.auth.device.shared.APIListener
                    public void onSuccess(Bundle response) {
                        MAPLog.w(AuthorizationActivity.LOG_TAG, "Code for Token Exchange success");
                        if (callbackIntentInfo.mlistener != null) {
                            callbackIntentInfo.mlistener.onSuccess(response);
                        }
                    }

                    @Override // com.amazon.identity.auth.device.shared.APIListener
                    public void onError(AuthError e2) {
                        MAPLog.w(AuthorizationActivity.LOG_TAG, "Code for Token Exchange Error. " + e2.getMessage());
                        if (callbackIntentInfo.mlistener != null) {
                            callbackIntentInfo.mlistener.onError(e2);
                        }
                    }

                    @Override // com.amazon.identity.auth.device.authorization.api.AuthorizationListener
                    public void onCancel(Bundle cause) {
                        MAPLog.w(AuthorizationActivity.LOG_TAG, "Code for Token Exchange Cancel");
                        if (callbackIntentInfo.mlistener != null) {
                            callbackIntentInfo.mlistener.onCancel(cause);
                        }
                    }
                });
            } catch (AuthError e2) {
                if (callbackIntentInfo.mlistener != null) {
                    callbackIntentInfo.mlistener.onError(e2);
                }
            }
        }
        finish();
        TraceMachine.exitMethod();
    }
}
