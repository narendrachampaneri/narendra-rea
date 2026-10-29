package com.applovin.adview;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class p implements View.OnClickListener {
    final /* synthetic */ AppLovinInterstitialActivity a;

    p(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
    }
}
