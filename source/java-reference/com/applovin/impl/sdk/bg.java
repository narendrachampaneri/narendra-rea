package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;

/* JADX INFO: loaded from: classes.dex */
class bg implements AppLovinNativeAdPrecacheListener {
    final /* synthetic */ AppLovinNativeAdPrecacheListener a;
    final /* synthetic */ bd b;

    bg(bd bdVar, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        this.b = bdVar;
        this.a = appLovinNativeAdPrecacheListener;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        this.b.a(this.a, appLovinNativeAd, i, true);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd) {
        this.b.a(this.a, appLovinNativeAd, true);
    }
}
