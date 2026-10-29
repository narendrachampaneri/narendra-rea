package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class bi implements AppLovinNativeAdLoadListener {
    final /* synthetic */ bh a;

    bi(bh bhVar) {
        this.a = bhVar;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        if (this.a.b != null) {
            this.a.b.onNativeAdsFailedToLoad(i);
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        if (this.a.b != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.a.a);
            arrayList.addAll(this.a.c);
            this.a.b.onNativeAdsLoaded(arrayList);
        }
    }
}
