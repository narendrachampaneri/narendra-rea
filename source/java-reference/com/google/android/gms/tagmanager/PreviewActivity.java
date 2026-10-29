package com.google.android.gms.tagmanager;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: loaded from: classes2.dex */
@Instrumented
public class PreviewActivity extends Activity implements TraceFieldInterface {
    private void zzm(String str, String str2, String str3) {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this).create();
        alertDialogCreate.setTitle(str);
        alertDialogCreate.setMessage(str2);
        alertDialogCreate.setButton(-1, str3, new DialogInterface.OnClickListener() { // from class: com.google.android.gms.tagmanager.PreviewActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
            }
        });
        alertDialogCreate.show();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        TraceMachine.startTracing("PreviewActivity");
        try {
            TraceMachine.enterMethod(this._nr_trace, "PreviewActivity#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "PreviewActivity#onCreate", null);
        }
        try {
            super.onCreate(bundle);
            zzbg.zzaJ("Preview activity");
            Uri data = getIntent().getData();
            if (!TagManager.getInstance(this).zzp(data)) {
                String str = "Cannot preview the app with the uri: " + data + ". Launching current version instead.";
                zzbg.zzaK(str);
                zzm("Preview failure", str, "Continue");
            }
            Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName());
            if (launchIntentForPackage != null) {
                zzbg.zzaJ("Invoke the launch activity for package name: " + getPackageName());
                startActivity(launchIntentForPackage);
            } else {
                zzbg.zzaJ("No launch activity found for package name: " + getPackageName());
            }
        } catch (Exception e2) {
            zzbg.e("Calling preview threw an exception: " + e2.getMessage());
        }
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
