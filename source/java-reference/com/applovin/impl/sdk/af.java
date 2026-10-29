package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;

/* JADX INFO: loaded from: classes.dex */
class af implements Runnable {
    final /* synthetic */ AppLovinAd a;
    final /* synthetic */ int b;
    final /* synthetic */ ae c;

    af(ae aeVar, AppLovinAd appLovinAd, int i) {
        this.c = aeVar;
        this.a = appLovinAd;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.f.validationRequestFailed(this.a, this.b);
    }
}
