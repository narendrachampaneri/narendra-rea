package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;

/* JADX INFO: loaded from: classes.dex */
class z implements AppLovinAdClickListener {
    final /* synthetic */ af a;
    final /* synthetic */ x b;

    z(x xVar, af afVar) {
        this.b = xVar;
        this.a = afVar;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        AppLovinAdClickListener appLovinAdClickListenerE = this.a.e();
        if (appLovinAdClickListenerE != null) {
            appLovinAdClickListenerE.adClicked(appLovinAd);
        }
    }
}
