package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;

/* JADX INFO: loaded from: classes.dex */
class h implements Runnable {
    final /* synthetic */ AdViewControllerImpl a;
    private final AppLovinAd b;

    public h(AdViewControllerImpl adViewControllerImpl, AppLovinAd appLovinAd) {
        this.a = adViewControllerImpl;
        this.b = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdDisplayListener appLovinAdDisplayListener = this.a.v;
        if (appLovinAdDisplayListener == null || this.b == null) {
            return;
        }
        try {
            appLovinAdDisplayListener.adHidden(this.b);
        } catch (Throwable th) {
            this.a.d.userError("AppLovinAdView", "Exception while notifying ad display listener", th);
        }
    }
}
