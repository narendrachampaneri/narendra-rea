package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.nativeAds.AppLovinNativeAdService;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class bd implements AppLovinNativeAdService {
    private final AppLovinSdkImpl a;
    private final Object b = new Object();

    bd(AppLovinSdkImpl appLovinSdkImpl) {
        this.a = appLovinSdkImpl;
    }

    private List a(AppLovinNativeAd appLovinNativeAd) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add((NativeAdImpl) appLovinNativeAd);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAd appLovinNativeAd, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        if (appLovinNativeAd.isVideoPrecached()) {
            appLovinNativeAdPrecacheListener.onNativeAdVideoPreceached(appLovinNativeAd);
            return;
        }
        this.a.a().a(new ch(this.a, a(appLovinNativeAd), new bg(this, appLovinNativeAdPrecacheListener)), cr.MAIN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, int i) {
        if (appLovinNativeAdLoadListener != null) {
            try {
                appLovinNativeAdLoadListener.onNativeAdsFailedToLoad(i);
            } catch (Exception e) {
                this.a.getLogger().userError("WidgetServiceImpl", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, List list) {
        if (appLovinNativeAdLoadListener != null) {
            try {
                appLovinNativeAdLoadListener.onNativeAdsLoaded(list);
            } catch (Exception e) {
                this.a.getLogger().userError("WidgetServiceImpl", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener, AppLovinNativeAd appLovinNativeAd, int i, boolean z) {
        if (appLovinNativeAdPrecacheListener != null) {
            try {
                if (z) {
                    appLovinNativeAdPrecacheListener.onNativeAdVideoPrecachingFailed(appLovinNativeAd, i);
                } else {
                    appLovinNativeAdPrecacheListener.onNativeAdImagePrecachingFailed(appLovinNativeAd, i);
                }
            } catch (Exception e) {
                this.a.getLogger().userError("WidgetServiceImpl", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener, AppLovinNativeAd appLovinNativeAd, boolean z) {
        if (appLovinNativeAdPrecacheListener != null) {
            try {
                if (z) {
                    appLovinNativeAdPrecacheListener.onNativeAdVideoPreceached(appLovinNativeAd);
                } else {
                    appLovinNativeAdPrecacheListener.onNativeAdImagesPrecached(appLovinNativeAd);
                }
            } catch (Exception e) {
                this.a.getLogger().userError("WidgetServiceImpl", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    private void b(List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.a.a().a(new cf(this.a, list, new bj(this, appLovinNativeAdLoadListener)), cr.MAIN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.a.a().a(new ch(this.a, list, new bk(this, appLovinNativeAdLoadListener)), cr.MAIN);
    }

    public void a(List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        int iIntValue = ((Integer) this.a.a(bw.aY)).intValue();
        if (iIntValue <= 0) {
            if (appLovinNativeAdLoadListener != null) {
                appLovinNativeAdLoadListener.onNativeAdsLoaded(list);
                return;
            }
            return;
        }
        List list2 = list;
        int size = list2.size();
        if (size == 0) {
            if (appLovinNativeAdLoadListener != null) {
                appLovinNativeAdLoadListener.onNativeAdsFailedToLoad(AppLovinErrorCodes.UNABLE_TO_PREPARE_NATIVE_AD);
            }
        } else {
            int iMin = Math.min(iIntValue, size);
            List listSubList = list2.subList(0, iMin);
            b(listSubList, new bh(this, listSubList, appLovinNativeAdLoadListener, list2.subList(iMin, size)));
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdService
    public void loadNativeAds(int i, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        AppLovinNativeAd appLovinNativeAd = null;
        synchronized (this.b) {
            if (i == 1) {
                if (this.a.d().e(NativeAdImpl.SPEC_NATIVE)) {
                    appLovinNativeAd = (AppLovinNativeAd) this.a.d().b(NativeAdImpl.SPEC_NATIVE);
                }
            }
        }
        if (appLovinNativeAd != null) {
            a(appLovinNativeAdLoadListener, Arrays.asList(appLovinNativeAd));
        } else {
            this.a.a().a(new co(this.a, i, new be(this, appLovinNativeAdLoadListener)), cr.MAIN);
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdService
    public void precacheResources(AppLovinNativeAd appLovinNativeAd, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        if (appLovinNativeAd.isImagePrecached()) {
            appLovinNativeAdPrecacheListener.onNativeAdImagesPrecached(appLovinNativeAd);
            a(appLovinNativeAd, appLovinNativeAdPrecacheListener);
        } else {
            this.a.a().a(new cf(this.a, a(appLovinNativeAd), new bf(this, appLovinNativeAdPrecacheListener)), cr.MAIN);
        }
    }
}
