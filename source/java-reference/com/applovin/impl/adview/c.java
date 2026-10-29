package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;

/* JADX INFO: loaded from: classes.dex */
class c implements AppLovinAdClickListener {
    final /* synthetic */ AdViewControllerImpl a;

    c(AdViewControllerImpl adViewControllerImpl) {
        this.a = adViewControllerImpl;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        if (this.a.x != null) {
            this.a.x.adClicked(appLovinAd);
        }
    }
}
