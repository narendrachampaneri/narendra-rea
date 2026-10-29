package com.google.android.gms.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.internal.zzfu;
import com.google.android.gms.internal.zzfv;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public class AdActivity extends Activity implements TraceFieldInterface {
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    public static final String SIMPLE_CLASS_NAME = "AdActivity";
    private zzfv zzoA;

    private void zzaD() {
        if (this.zzoA != null) {
            try {
                this.zzoA.zzaD();
            } catch (RemoteException e) {
                zzb.zzd("Could not forward setContentViewSet to ad overlay:", e);
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        boolean zZzfn = true;
        try {
            if (this.zzoA != null) {
                zZzfn = this.zzoA.zzfn();
            }
        } catch (RemoteException e) {
            zzb.zzd("Could not forward onBackPressed to ad overlay:", e);
        }
        if (zZzfn) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        TraceMachine.startTracing(SIMPLE_CLASS_NAME);
        try {
            TraceMachine.enterMethod(this._nr_trace, "AdActivity#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "AdActivity#onCreate", null);
        }
        super.onCreate(bundle);
        this.zzoA = zzfu.createAdOverlay(this);
        if (this.zzoA == null) {
            zzb.zzaK("Could not create ad overlay.");
            finish();
            TraceMachine.exitMethod();
        } else {
            try {
                this.zzoA.onCreate(bundle);
            } catch (RemoteException e2) {
                zzb.zzd("Could not forward onCreate to ad overlay:", e2);
                finish();
            }
            TraceMachine.exitMethod();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            if (this.zzoA != null) {
                this.zzoA.onDestroy();
            }
        } catch (RemoteException e) {
            zzb.zzd("Could not forward onDestroy to ad overlay:", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        try {
            if (this.zzoA != null) {
                this.zzoA.onPause();
            }
        } catch (RemoteException e) {
            zzb.zzd("Could not forward onPause to ad overlay:", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        try {
            if (this.zzoA != null) {
                this.zzoA.onRestart();
            }
        } catch (RemoteException e) {
            zzb.zzd("Could not forward onRestart to ad overlay:", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            if (this.zzoA != null) {
                this.zzoA.onResume();
            }
        } catch (RemoteException e) {
            zzb.zzd("Could not forward onResume to ad overlay:", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        try {
            if (this.zzoA != null) {
                this.zzoA.onSaveInstanceState(outState);
            }
        } catch (RemoteException e) {
            zzb.zzd("Could not forward onSaveInstanceState to ad overlay:", e);
            finish();
        }
        super.onSaveInstanceState(outState);
    }

    @Override // android.app.Activity
    protected void onStart() {
        ApplicationStateMonitor.getInstance().activityStarted();
        super.onStart();
        try {
            if (this.zzoA != null) {
                this.zzoA.onStart();
            }
        } catch (RemoteException e) {
            zzb.zzd("Could not forward onStart to ad overlay:", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        ApplicationStateMonitor.getInstance().activityStopped();
        try {
            if (this.zzoA != null) {
                this.zzoA.onStop();
            }
        } catch (RemoteException e) {
            zzb.zzd("Could not forward onStop to ad overlay:", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        zzaD();
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        zzaD();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        zzaD();
    }
}
