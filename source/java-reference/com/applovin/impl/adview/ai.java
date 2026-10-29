package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;

/* JADX INFO: loaded from: classes.dex */
class ai implements Runnable {
    final /* synthetic */ AppLovinAd a;
    final /* synthetic */ af b;

    ai(af afVar, AppLovinAd appLovinAd) {
        this.b = afVar;
        this.a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.b.g != null) {
            this.b.g.adReceived(this.a);
        }
    }
}
