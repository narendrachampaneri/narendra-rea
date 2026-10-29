package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;

/* JADX INFO: loaded from: classes.dex */
class aj implements Runnable {
    final /* synthetic */ AppLovinAd a;
    final /* synthetic */ double b;
    final /* synthetic */ boolean c;
    final /* synthetic */ ae d;

    aj(ae aeVar, AppLovinAd appLovinAd, double d, boolean z) {
        this.d = aeVar;
        this.a = appLovinAd;
        this.b = d;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.d.e.videoPlaybackEnded(this.a, this.b, this.c);
    }
}
