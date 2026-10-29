package com.google.example.games.basegameutils;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public abstract class BaseGameActivity extends FragmentActivity implements GameHelper.GameHelperListener, TraceFieldInterface {
    public static final int CLIENT_ALL = 11;
    public static final int CLIENT_GAMES = 1;
    public static final int CLIENT_PLUS = 2;
    private static final String TAG = "BaseGameActivity";
    protected GameHelper mHelper;
    protected int mRequestedClients = 1;
    protected boolean mDebugLog = false;

    protected BaseGameActivity() {
    }

    protected BaseGameActivity(int requestedClients) {
        setRequestedClients(requestedClients);
    }

    protected void setRequestedClients(int requestedClients) {
        this.mRequestedClients = requestedClients;
    }

    public GameHelper getGameHelper() {
        if (this.mHelper == null) {
            this.mHelper = new GameHelper(this, this.mRequestedClients);
            this.mHelper.enableDebugLog(this.mDebugLog);
        }
        return this.mHelper;
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle bundle) {
        TraceMachine.startTracing(TAG);
        try {
            TraceMachine.enterMethod(this._nr_trace, "BaseGameActivity#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "BaseGameActivity#onCreate", null);
        }
        super.onCreate(bundle);
        if (this.mHelper == null) {
            getGameHelper();
        }
        this.mHelper.setup(this);
        TraceMachine.exitMethod();
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onStart() {
        ApplicationStateMonitor.getInstance().activityStarted();
        super.onStart();
        this.mHelper.onStart(this);
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onStop() {
        ApplicationStateMonitor.getInstance().activityStopped();
        super.onStop();
        this.mHelper.onStop();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int request, int response, Intent data) {
        super.onActivityResult(request, response, data);
        this.mHelper.onActivityResult(request, response, data);
    }

    protected GoogleApiClient getApiClient() {
        return this.mHelper.getApiClient();
    }

    protected boolean isSignedIn() {
        return this.mHelper.isSignedIn();
    }

    protected void beginUserInitiatedSignIn() {
        this.mHelper.beginUserInitiatedSignIn();
    }

    protected void signOut() {
        this.mHelper.signOut();
    }

    protected void showAlert(String message) {
        this.mHelper.makeSimpleDialog(message).show();
    }

    protected void showAlert(String title, String message) {
        this.mHelper.makeSimpleDialog(title, message).show();
    }

    protected void enableDebugLog(boolean enabled) {
        this.mDebugLog = true;
        if (this.mHelper != null) {
            this.mHelper.enableDebugLog(enabled);
        }
    }

    @Deprecated
    protected void enableDebugLog(boolean enabled, String tag) {
        Log.w(TAG, "BaseGameActivity.enabledDebugLog(bool,String) is deprecated. Use enableDebugLog(boolean)");
        enableDebugLog(enabled);
    }

    protected String getInvitationId() {
        return this.mHelper.getInvitationId();
    }

    protected void reconnectClient() {
        this.mHelper.reconnectClient();
    }

    protected boolean hasSignInError() {
        return this.mHelper.hasSignInError();
    }

    protected GameHelper.SignInFailureReason getSignInError() {
        return this.mHelper.getSignInError();
    }
}
