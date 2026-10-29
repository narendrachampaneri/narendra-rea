package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
class bc implements AppLovinNativeAdPrecacheListener {
    final /* synthetic */ bb a;

    bc(bb bbVar) {
        this.a = bbVar;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        this.a.b(NativeAdImpl.SPEC_NATIVE, i);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd) {
        if (AppLovinSdkUtils.isValidString(appLovinNativeAd.getVideoUrl())) {
            return;
        }
        this.a.c((ay) appLovinNativeAd);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        this.a.b.w("NativeAdPreloadManager", "Video failed to cache during native ad preload. " + i);
        this.a.c((ay) appLovinNativeAd);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd) {
        this.a.c((ay) appLovinNativeAd);
    }
}
