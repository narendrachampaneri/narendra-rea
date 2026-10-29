package com.applovin.adview;

import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
class h implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ UUID b;
    final /* synthetic */ AppLovinInterstitialActivity c;

    h(AppLovinInterstitialActivity appLovinInterstitialActivity, int i, UUID uuid) {
        this.c = appLovinInterstitialActivity;
        this.a = i;
        this.b = uuid;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.a(this.a, this.b);
    }
}
