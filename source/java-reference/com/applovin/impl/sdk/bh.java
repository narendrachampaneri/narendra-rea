package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class bh implements AppLovinNativeAdLoadListener {
    final /* synthetic */ List a;
    final /* synthetic */ AppLovinNativeAdLoadListener b;
    final /* synthetic */ List c;
    final /* synthetic */ bd d;

    bh(bd bdVar, List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, List list2) {
        this.d = bdVar;
        this.a = list;
        this.b = appLovinNativeAdLoadListener;
        this.c = list2;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        if (this.b != null) {
            this.b.onNativeAdsFailedToLoad(i);
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        this.d.c(this.a, new bi(this));
    }
}
