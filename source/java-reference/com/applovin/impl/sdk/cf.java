package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class cf extends cg {
    public cf(AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        super("TaskCacheNativeAdImages", appLovinSdkImpl, list, appLovinNativeAdLoadListener);
    }

    public cf(AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        super("TaskCacheNativeAdImages", appLovinSdkImpl, list, appLovinNativeAdPrecacheListener);
    }

    private boolean b(NativeAdImpl nativeAdImpl) {
        a(nativeAdImpl, AppLovinErrorCodes.UNABLE_TO_PRECACHE_IMAGE_RESOURCES);
        return false;
    }

    @Override // com.applovin.impl.sdk.cg
    protected void a(NativeAdImpl nativeAdImpl) {
        if (this.b != null) {
            this.b.onNativeAdImagesPrecached(nativeAdImpl);
        }
    }

    protected void a(NativeAdImpl nativeAdImpl, int i) {
        if (this.b != null) {
            this.b.onNativeAdImagePrecachingFailed(nativeAdImpl, i);
        }
    }

    @Override // com.applovin.impl.sdk.cg
    protected boolean a(NativeAdImpl nativeAdImpl, y yVar) {
        this.f.getLogger().d("TaskCacheNativeAdImages", "Beginning slot image caching for ad " + nativeAdImpl.getAdId());
        String strA = a(nativeAdImpl.getSourceIconUrl(), yVar);
        if (strA == null) {
            return b(nativeAdImpl);
        }
        nativeAdImpl.setIconUrl(strA);
        String strA2 = a(nativeAdImpl.getSourceImageUrl(), yVar);
        if (strA2 == null) {
            return b(nativeAdImpl);
        }
        nativeAdImpl.setImageUrl(strA2);
        return true;
    }

    @Override // com.applovin.impl.sdk.cg, java.lang.Runnable
    public /* bridge */ /* synthetic */ void run() {
        super.run();
    }
}
