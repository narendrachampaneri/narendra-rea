package com.applovin.adview;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class r implements View.OnClickListener {
    final /* synthetic */ AppLovinInterstitialActivity a;

    r(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.x.performClick();
    }
}
