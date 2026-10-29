package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;

/* JADX INFO: loaded from: classes.dex */
class d implements AppLovinAdDisplayListener {
    final /* synthetic */ AdViewControllerImpl a;

    d(AdViewControllerImpl adViewControllerImpl) {
        this.a = adViewControllerImpl;
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        if (this.a.v != null) {
            this.a.v.adHidden(appLovinAd);
        }
    }
}
