package com.applovin.impl.adview;

import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.sdk.AppLovinAd;

/* JADX INFO: loaded from: classes.dex */
class ab implements Runnable {
    final /* synthetic */ AppLovinAd a;
    final /* synthetic */ x b;

    ab(x xVar, AppLovinAd appLovinAd) {
        this.b = xVar;
        this.a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.e.renderAd(this.a);
        this.b.a(((AppLovinAdImpl) this.a).getCloseStyle());
    }
}
