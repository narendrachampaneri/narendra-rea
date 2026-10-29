package com.applovin.impl.adview;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.sdk.ca;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class x extends Dialog implements w {
    private final Activity a;
    private final AppLovinSdk b;
    private final AppLovinLogger c;
    private RelativeLayout d;
    private AppLovinAdView e;
    private Runnable f;
    private af g;
    private volatile boolean h;
    private volatile boolean i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    x(AppLovinSdk appLovinSdk, Activity activity) {
        super(activity, R.style.Theme.Translucent.NoTitleBar);
        y yVar = null;
        this.g = null;
        this.h = false;
        this.i = false;
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.b = appLovinSdk;
        this.c = appLovinSdk.getLogger();
        this.a = activity;
        this.f = new ae(this, yVar);
        this.e = new AppLovinAdView(appLovinSdk, AppLovinAdSize.INTERSTITIAL, activity);
        this.e.setAutoDestroy(false);
        ((AdViewControllerImpl) this.e.getAdViewController()).setParentDialog(new WeakReference(this));
        requestWindowFeature(1);
        try {
            getWindow().setFlags(activity.getWindow().getAttributes().flags, activity.getWindow().getAttributes().flags);
        } catch (Exception e) {
            this.c.e("InterstitialAdDialog", "Set window flags failed.", e);
        }
    }

    private int a(int i) {
        return AppLovinSdkUtils.dpToPx(this.a, i);
    }

    private void a() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        this.e.setLayoutParams(layoutParams);
        this.d = new RelativeLayout(this.a);
        this.d.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.d.setBackgroundColor(-1157627904);
        this.d.addView(this.e);
        setContentView(this.d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(v vVar) {
        u uVarA = u.a(this.b, getContext(), vVar);
        uVarA.setOnClickListener(new ac(this));
        ca caVar = new ca(this.b);
        int iA = a(caVar.l());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA, iA);
        layoutParams.addRule(10);
        layoutParams.addRule(caVar.y() ? 9 : 11);
        uVarA.a(iA);
        int iA2 = a(caVar.n());
        int iA3 = a(caVar.p());
        layoutParams.setMargins(iA3, iA2, iA3, iA2);
        this.e.addView(uVarA, layoutParams);
        uVarA.bringToFront();
        int iA4 = a(new ca(this.b).r());
        View view = new View(this.a);
        view.setBackgroundColor(0);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iA + iA4, iA + iA4);
        layoutParams2.addRule(10);
        layoutParams2.addRule(caVar.x() ? 9 : 11);
        layoutParams2.setMargins(0, iA2 - a(5), iA3 - a(5), 0);
        view.setOnClickListener(new ad(this, uVarA));
        this.e.addView(view, layoutParams2);
        view.bringToFront();
    }

    public void a(af afVar) {
        this.e.setAdDisplayListener(new y(this, afVar));
        this.e.setAdClickListener(new z(this, afVar));
        this.e.setAdVideoPlaybackListener(new aa(this, afVar));
        this.g = afVar;
        afVar.a(true);
    }

    public void a(AppLovinAd appLovinAd) {
        this.a.runOnUiThread(new ab(this, appLovinAd));
    }

    @Override // android.app.Dialog, android.content.DialogInterface, com.applovin.impl.adview.w
    public void dismiss() {
        if (this.g != null) {
            this.g.g();
        }
        if (this.e != null) {
            this.e.destroy();
        }
        this.g = null;
        this.e = null;
        super.dismiss();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a();
    }
}
