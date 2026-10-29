package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseFragmentActivityDonut extends Activity implements TraceFieldInterface {
    abstract View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet);

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

    BaseFragmentActivityDonut() {
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        TraceMachine.startTracing("BaseFragmentActivityDonut");
        try {
            TraceMachine.enterMethod(this._nr_trace, "BaseFragmentActivityDonut#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "BaseFragmentActivityDonut#onCreate", null);
        }
        if (Build.VERSION.SDK_INT < 11 && getLayoutInflater().getFactory() == null) {
            getLayoutInflater().setFactory(this);
        }
        super.onCreate(bundle);
        TraceMachine.exitMethod();
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String name, Context context, AttributeSet attrs) {
        View v = dispatchFragmentsOnCreateView(null, name, context, attrs);
        if (v == null) {
            return super.onCreateView(name, context, attrs);
        }
        return v;
    }
}
