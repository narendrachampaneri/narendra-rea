package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.sdk.AppLovinAd;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class bb extends bq {
    public bb(AppLovinSdkImpl appLovinSdkImpl) {
        super(appLovinSdkImpl);
    }

    @Override // com.applovin.impl.sdk.bq
    bv a(c cVar) {
        co coVar = new co(this.a, 1, this);
        coVar.a(true);
        return coVar;
    }

    @Override // com.applovin.impl.sdk.bq
    c a(ay ayVar) {
        return NativeAdImpl.SPEC_NATIVE;
    }

    @Override // com.applovin.impl.sdk.bq
    Map a() {
        HashMap map = new HashMap(1);
        map.put(NativeAdImpl.SPEC_NATIVE, new br(((Integer) this.a.a(bw.aR)).intValue()));
        return map;
    }

    @Override // com.applovin.impl.sdk.w
    public void a(c cVar, int i) {
    }

    @Override // com.applovin.impl.sdk.bq
    void a(Object obj, ay ayVar) {
        ((AppLovinNativeAdLoadListener) obj).onNativeAdsLoaded(Arrays.asList((AppLovinNativeAd) ayVar));
    }

    @Override // com.applovin.impl.sdk.bq
    void a(Object obj, c cVar, int i) {
        ((AppLovinNativeAdLoadListener) obj).onNativeAdsFailedToLoad(i);
    }

    @Override // com.applovin.impl.sdk.bq
    public /* bridge */ /* synthetic */ boolean a(c cVar, Object obj) {
        return super.a(cVar, obj);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
    }

    @Override // com.applovin.impl.sdk.bq
    public /* bridge */ /* synthetic */ ay b(c cVar) {
        return super.b(cVar);
    }

    @Override // com.applovin.impl.sdk.bq
    public /* bridge */ /* synthetic */ void b(c cVar, Object obj) {
        super.b(cVar, obj);
    }

    @Override // com.applovin.impl.sdk.bq
    public /* bridge */ /* synthetic */ boolean c(c cVar) {
        return super.c(cVar);
    }

    @Override // com.applovin.impl.sdk.bq
    public /* bridge */ /* synthetic */ void d(c cVar) {
        super.d(cVar);
    }

    @Override // com.applovin.impl.sdk.bq
    public /* bridge */ /* synthetic */ boolean e(c cVar) {
        return super.e(cVar);
    }

    @Override // com.applovin.impl.sdk.bq
    public /* bridge */ /* synthetic */ void f(c cVar) {
        super.f(cVar);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        b(NativeAdImpl.SPEC_NATIVE, i);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        this.a.getNativeAdService().precacheResources((AppLovinNativeAd) list.get(0), new bc(this));
    }
}
