package com.google.android.gms.ads.purchase;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.zzge;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzin;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public class InAppPurchaseActivity extends Activity implements TraceFieldInterface {
    public static final String CLASS_NAME = "com.google.android.gms.ads.purchase.InAppPurchaseActivity";
    public static final String SIMPLE_CLASS_NAME = "InAppPurchaseActivity";
    private zzge zzOw;

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        try {
            if (this.zzOw != null) {
                this.zzOw.onActivityResult(requestCode, resultCode, data);
            }
        } catch (RemoteException e) {
            zzin.zzd("Could not forward onActivityResult to in-app purchase manager:", e);
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        TraceMachine.startTracing(SIMPLE_CLASS_NAME);
        try {
            TraceMachine.enterMethod(this._nr_trace, "InAppPurchaseActivity#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "InAppPurchaseActivity#onCreate", null);
        }
        super.onCreate(bundle);
        this.zzOw = zzgj.createInAppPurchaseManager(this);
        if (this.zzOw == null) {
            zzin.zzaK("Could not create in-app purchase manager.");
            finish();
            TraceMachine.exitMethod();
        } else {
            try {
                this.zzOw.onCreate();
            } catch (RemoteException e2) {
                zzin.zzd("Could not forward onCreate to in-app purchase manager:", e2);
                finish();
            }
            TraceMachine.exitMethod();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            if (this.zzOw != null) {
                this.zzOw.onDestroy();
            }
        } catch (RemoteException e) {
            zzin.zzd("Could not forward onDestroy to in-app purchase manager:", e);
        }
        super.onDestroy();
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
