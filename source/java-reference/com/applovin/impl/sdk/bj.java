package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class bj implements AppLovinNativeAdLoadListener {
    final /* synthetic */ AppLovinNativeAdLoadListener a;
    final /* synthetic */ bd b;

    bj(bd bdVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.b = bdVar;
        this.a = appLovinNativeAdLoadListener;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        if (this.a != null) {
            this.a.onNativeAdsFailedToLoad(i);
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        if (this.a != null) {
            this.a.onNativeAdsLoaded(list);
        }
    }
}
