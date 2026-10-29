package com.applovin.impl.sdk;

import android.app.Activity;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class ao {
    private final AppLovinSdkImpl a;
    private final String b;
    private final Activity c;

    public ao(AppLovinSdkImpl appLovinSdkImpl, Activity activity, String str) {
        this.a = appLovinSdkImpl;
        this.b = str;
        this.c = activity;
    }

    void a() {
        this.c.runOnUiThread(new ap(this));
    }

    void a(String str, Throwable th) {
        this.a.getLogger().userError("IncentivizedConfirmationManager", "Unable to show incentivized ad reward dialog. Have you defined com.applovin.adview.AppLovinConfirmationActivity in your manifest?", th);
        Toast.makeText(this.c, str, 1).show();
    }

    String b() {
        if (this.b.equals("accepted")) {
            return (String) this.a.a(bw.ac);
        }
        if (this.b.equals("quota_exceeded")) {
            return (String) this.a.a(bw.ad);
        }
        return this.b.equals("rejected") ? (String) this.a.a(bw.ae) : (String) this.a.a(bw.af);
    }
}
