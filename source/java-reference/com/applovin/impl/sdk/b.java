package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b extends bq {
    public b(AppLovinSdkImpl appLovinSdkImpl) {
        super(appLovinSdkImpl);
    }

    private by a(AppLovinAdType appLovinAdType, AppLovinAdSize appLovinAdSize) {
        if (appLovinAdSize.equals(AppLovinAdSize.BANNER)) {
            return bw.aj;
        }
        if (appLovinAdSize.equals(AppLovinAdSize.MREC)) {
            return bw.ak;
        }
        if (appLovinAdSize.equals(AppLovinAdSize.INTERSTITIAL)) {
            return bw.al;
        }
        return appLovinAdSize.equals(AppLovinAdSize.LEADER) ? bw.am : bw.aj;
    }

    @Override // com.applovin.impl.sdk.bq
    bv a(c cVar) {
        cm cmVar = new cm(cVar.a(), cVar.b(), this, this.a);
        cmVar.a(true);
        return cmVar;
    }

    @Override // com.applovin.impl.sdk.bq
    c a(ay ayVar) {
        return new c((AppLovinAd) ayVar);
    }

    @Override // com.applovin.impl.sdk.bq
    Map a() {
        HashMap map = new HashMap(5);
        for (AppLovinAdSize appLovinAdSize : AppLovinAdSize.allSizes()) {
            map.put(new c(appLovinAdSize, AppLovinAdType.REGULAR), new br(((Integer) this.a.a(a(AppLovinAdType.REGULAR, appLovinAdSize))).intValue()));
        }
        map.put(new c(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED), new br(((Integer) this.a.a(bw.an)).intValue()));
        return map;
    }

    @Override // com.applovin.impl.sdk.w
    public void a(c cVar, int i) {
        b(cVar, i);
    }

    @Override // com.applovin.impl.sdk.bq
    void a(Object obj, ay ayVar) {
        ((AppLovinAdLoadListener) obj).adReceived((AppLovinAd) ayVar);
    }

    @Override // com.applovin.impl.sdk.bq
    void a(Object obj, c cVar, int i) {
        if (obj instanceof w) {
            ((w) obj).a(cVar, i);
        }
        if (obj instanceof AppLovinAdLoadListener) {
            ((AppLovinAdLoadListener) obj).failedToReceiveAd(i);
        }
    }

    @Override // com.applovin.impl.sdk.bq
    public /* bridge */ /* synthetic */ boolean a(c cVar, Object obj) {
        return super.a(cVar, obj);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        c((ay) appLovinAd);
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
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
    }
}
