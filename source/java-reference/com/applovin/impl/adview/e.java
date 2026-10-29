package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;

/* JADX INFO: loaded from: classes.dex */
class e implements AppLovinAdVideoPlaybackListener {
    final /* synthetic */ AdViewControllerImpl a;

    e(AdViewControllerImpl adViewControllerImpl) {
        this.a = adViewControllerImpl;
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        if (this.a.w != null) {
            this.a.w.videoPlaybackBegan(appLovinAd);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        if (this.a.w != null) {
            this.a.w.videoPlaybackEnded(appLovinAd, d, z);
        }
    }
}
