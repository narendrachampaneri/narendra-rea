package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;

/* JADX INFO: loaded from: classes.dex */
class ag implements AppLovinAdLoadListener {
    final /* synthetic */ af a;

    ag(af afVar) {
        this.a = afVar;
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        this.a.a(appLovinAd);
        this.a.showAndRender(appLovinAd);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        this.a.a(i);
    }
}
