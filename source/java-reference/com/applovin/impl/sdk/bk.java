package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class bk implements AppLovinNativeAdLoadListener {
    final /* synthetic */ AppLovinNativeAdLoadListener a;
    final /* synthetic */ bd b;

    bk(bd bdVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.b = bdVar;
        this.a = appLovinNativeAdLoadListener;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        this.b.a(this.a, i);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        this.b.a(this.a, list);
    }
}
