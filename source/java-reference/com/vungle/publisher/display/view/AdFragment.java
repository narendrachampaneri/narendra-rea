package com.vungle.publisher.display.view;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.vungle.log.Logger;
import com.vungle.publisher.inject.Injector;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public abstract class AdFragment extends Fragment implements TraceFieldInterface {
    public abstract void a();

    public abstract String b();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }

    public boolean a(int i) {
        return false;
    }

    public void a(boolean z) {
        Logger.v(Logger.AD_TAG, (z ? "gained" : "lost") + " window focus");
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        TraceMachine.startTracing("AdFragment");
        try {
            TraceMachine.enterMethod(this._nr_trace, "AdFragment#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "AdFragment#onCreate", null);
        }
        super.onCreate(bundle);
        Injector.getInstance().a.inject(this);
        TraceMachine.exitMethod();
    }
}
