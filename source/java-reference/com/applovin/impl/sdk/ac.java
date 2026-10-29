package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;

/* JADX INFO: loaded from: classes.dex */
class ac implements Runnable {
    final /* synthetic */ AppLovinAd a;
    final /* synthetic */ ab b;

    ac(ab abVar, AppLovinAd appLovinAd) {
        this.b = abVar;
        this.a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.b.adReceived(this.a);
    }
}
