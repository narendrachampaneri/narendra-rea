package com.applovin.adview;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public class AppLovinConfirmationActivity extends Activity implements TraceFieldInterface {
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        TraceMachine.startTracing("AppLovinConfirmationActivity");
        try {
            TraceMachine.enterMethod(this._nr_trace, "AppLovinConfirmationActivity#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "AppLovinConfirmationActivity#onCreate", null);
        }
        super.onCreate(bundle);
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        Intent intent = getIntent();
        builder.setTitle(intent.getStringExtra("dialog_title"));
        builder.setMessage(intent.getStringExtra("dialog_body"));
        builder.setCancelable(false);
        builder.setPositiveButton(intent.getStringExtra("dialog_button_text"), new a(this));
        builder.show();
        TraceMachine.exitMethod();
    }

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
}
