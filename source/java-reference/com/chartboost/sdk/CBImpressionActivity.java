package com.chartboost.sdk;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.chartboost.sdk.Libraries.k;
import com.chartboost.sdk.impl.ba;
import com.chartboost.sdk.impl.bg;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class CBImpressionActivity extends Activity implements TraceFieldInterface {
    private Activity a = null;

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent event) {
        return this.a != null ? this.a.dispatchTouchEvent(event) : super.dispatchTouchEvent(event);
    }

    public void forwardTouchEvents(Activity host) {
        this.a = host;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        TraceMachine.startTracing("CBImpressionActivity");
        try {
            TraceMachine.enterMethod(this._nr_trace, "CBImpressionActivity#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "CBImpressionActivity#onCreate", null);
        }
        super.onCreate(bundle);
        if (bg.c()) {
            getWindow().setFlags(ViewCompat.MEASURED_STATE_TOO_SMALL, ViewCompat.MEASURED_STATE_TOO_SMALL);
        }
        requestWindowFeature(1);
        if (getIntent().getBooleanExtra("paramFullscreen", false)) {
            getWindow().addFlags(1024);
        }
        getWindow().setWindowAnimations(0);
        setContentView(new RelativeLayout(this));
        Chartboost.a(this);
        Chartboost.c(this);
        ba.d();
        TraceMachine.exitMethod();
    }

    @Override // android.app.Activity
    protected void onStart() {
        ApplicationStateMonitor.getInstance().activityStarted();
        super.onStart();
        Chartboost.a();
        Chartboost.a((Activity) this);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Chartboost.a(k.a(this));
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        Chartboost.b(k.a(this));
    }

    @Override // android.app.Activity
    protected void onStop() {
        ApplicationStateMonitor.getInstance().activityStopped();
        super.onStop();
        Chartboost.c(k.a(this));
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Chartboost.b((Activity) this);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!Chartboost.d()) {
            super.onBackPressed();
        }
    }
}
