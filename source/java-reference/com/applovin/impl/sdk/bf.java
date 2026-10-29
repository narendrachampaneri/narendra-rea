package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;

/* JADX INFO: loaded from: classes.dex */
class bf implements AppLovinNativeAdPrecacheListener {
    final /* synthetic */ AppLovinNativeAdPrecacheListener a;
    final /* synthetic */ bd b;

    bf(bd bdVar, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        this.b = bdVar;
        this.a = appLovinNativeAdPrecacheListener;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        this.b.a(this.a, appLovinNativeAd, i, false);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd) {
        this.b.a(this.a, appLovinNativeAd, false);
        this.b.a(appLovinNativeAd, this.a);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd) {
    }
}
