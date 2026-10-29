package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ch extends cg {
    public ch(AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        super("TaskCacheNativeAdVideos", appLovinSdkImpl, list, appLovinNativeAdLoadListener);
    }

    public ch(AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        super("TaskCacheNativeAdVideos", appLovinSdkImpl, list, appLovinNativeAdPrecacheListener);
    }

    private boolean b(NativeAdImpl nativeAdImpl) {
        this.g.w("TaskCacheNativeAdVideos", "Unable to cache video resource " + nativeAdImpl.getSourceVideoUrl());
        a(nativeAdImpl, AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES);
        return false;
    }

    @Override // com.applovin.impl.sdk.cg
    protected void a(NativeAdImpl nativeAdImpl) {
        if (this.b != null) {
            this.b.onNativeAdVideoPreceached(nativeAdImpl);
        }
    }

    protected void a(NativeAdImpl nativeAdImpl, int i) {
        if (this.b != null) {
            this.b.onNativeAdVideoPrecachingFailed(nativeAdImpl, i);
        }
    }

    @Override // com.applovin.impl.sdk.cg
    protected boolean a(NativeAdImpl nativeAdImpl, y yVar) {
        if (!AppLovinSdkUtils.isValidString(nativeAdImpl.getSourceVideoUrl())) {
            this.f.getLogger().d("TaskCacheNativeAdVideos", "No video attached to ad, nothing to cache...");
        }
        this.f.getLogger().d("TaskCacheNativeAdVideos", "Beginning slot video caching for ad " + nativeAdImpl.getAdId());
        String strA = a(nativeAdImpl.getSourceVideoUrl(), yVar);
        if (strA == null) {
            return b(nativeAdImpl);
        }
        nativeAdImpl.setVideoUrl(strA);
        return true;
    }

    @Override // com.applovin.impl.sdk.cg, java.lang.Runnable
    public /* bridge */ /* synthetic */ void run() {
        super.run();
    }
}
