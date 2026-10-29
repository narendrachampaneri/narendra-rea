package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class cg extends bv {
    protected AppLovinNativeAdLoadListener a;
    protected AppLovinNativeAdPrecacheListener b;
    private List c;
    private int d;

    cg(String str, AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        super(str, appLovinSdkImpl);
        this.d = 0;
        this.a = appLovinNativeAdLoadListener;
        this.c = list;
    }

    cg(String str, AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        super(str, appLovinSdkImpl);
        this.d = 0;
        if (list == null) {
            throw new IllegalArgumentException("Slots cannot be null");
        }
        this.c = list;
        this.b = appLovinNativeAdPrecacheListener;
    }

    private void a(int i) {
        if (this.a != null) {
            this.a.onNativeAdsFailedToLoad(i);
        }
    }

    private void a(List list) {
        if (this.a != null) {
            this.a.onNativeAdsLoaded(list);
        }
    }

    protected String a(String str, y yVar) {
        try {
            String strA = yVar.a(this.h, str, true);
            if (strA != null) {
                return strA;
            }
            this.g.w(a(), "Unable to cache icon resource " + str);
            return null;
        } catch (Exception e) {
            this.g.w(a(), "Unable to cache icon resource " + str, e);
            return null;
        }
    }

    protected abstract void a(NativeAdImpl nativeAdImpl);

    protected abstract boolean a(NativeAdImpl nativeAdImpl, y yVar);

    @Override // java.lang.Runnable
    public void run() {
        for (NativeAdImpl nativeAdImpl : this.c) {
            y fileManager = this.f.getFileManager();
            this.f.getLogger().d(a(), "Beginning resource caching phase...");
            if (a(nativeAdImpl, fileManager)) {
                this.d++;
                a(nativeAdImpl);
            } else {
                this.f.getLogger().e(a(), "Unable to cache resources");
            }
        }
        try {
            if (this.d != this.c.size() && ((Boolean) this.f.a(bw.aN)).booleanValue()) {
                this.f.getLogger().e(a(), "Mismatch between successful populations and requested size");
                a(-6);
            } else {
                a(this.c);
            }
        } catch (Throwable th) {
            this.f.getLogger().userError(a(), "Encountered exception while notifying publisher code", th);
        }
    }
}
