package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;

/* JADX INFO: loaded from: classes.dex */
class ag implements Runnable {
    final /* synthetic */ AppLovinAd a;
    final /* synthetic */ ae b;

    ag(ae aeVar, AppLovinAd appLovinAd) {
        this.b = aeVar;
        this.a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.c.adHidden(this.a);
    }
}
