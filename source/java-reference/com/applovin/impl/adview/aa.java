package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;

/* JADX INFO: loaded from: classes.dex */
class aa implements AppLovinAdVideoPlaybackListener {
    final /* synthetic */ af a;
    final /* synthetic */ x b;

    aa(x xVar, af afVar) {
        this.b = xVar;
        this.a = afVar;
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListenerC = this.a.c();
        if (appLovinAdVideoPlaybackListenerC != null) {
            appLovinAdVideoPlaybackListenerC.videoPlaybackBegan(appLovinAd);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListenerC = this.a.c();
        if (appLovinAdVideoPlaybackListenerC != null) {
            appLovinAdVideoPlaybackListenerC.videoPlaybackEnded(appLovinAd, d, z);
        }
    }
}
