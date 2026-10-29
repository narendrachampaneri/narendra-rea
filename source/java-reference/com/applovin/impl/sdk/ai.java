package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;

/* JADX INFO: loaded from: classes.dex */
class ai implements Runnable {
    final /* synthetic */ AppLovinAd a;
    final /* synthetic */ ae b;

    ai(ae aeVar, AppLovinAd appLovinAd) {
        this.b = aeVar;
        this.a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.e.videoPlaybackBegan(this.a);
    }
}
