package com.applovin.adview;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class s implements View.OnClickListener {
    final /* synthetic */ AppLovinInterstitialActivity a;

    s(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.z.performClick();
    }
}
