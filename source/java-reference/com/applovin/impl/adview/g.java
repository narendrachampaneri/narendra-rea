package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;

/* JADX INFO: loaded from: classes.dex */
class g implements Runnable {
    final /* synthetic */ AdViewControllerImpl a;
    private final AppLovinAd b;

    public g(AdViewControllerImpl adViewControllerImpl, AppLovinAd appLovinAd) {
        this.a = adViewControllerImpl;
        this.b = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdClickListener appLovinAdClickListener = this.a.x;
        if (appLovinAdClickListener == null || this.b == null) {
            return;
        }
        try {
            appLovinAdClickListener.adClicked(this.b);
        } catch (Throwable th) {
            this.a.d.userError("AppLovinAdView", "Exception while notifying ad click listener", th);
        }
    }
}
