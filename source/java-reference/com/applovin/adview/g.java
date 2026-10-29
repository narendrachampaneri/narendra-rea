package com.applovin.adview;

/* JADX INFO: loaded from: classes.dex */
class g implements Runnable {
    final /* synthetic */ com.applovin.impl.adview.u a;
    final /* synthetic */ AppLovinInterstitialActivity b;

    g(AppLovinInterstitialActivity appLovinInterstitialActivity, com.applovin.impl.adview.u uVar) {
        this.b = appLovinInterstitialActivity;
        this.a = uVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a.equals(this.b.x)) {
            this.b.j();
        } else if (this.a.equals(this.b.z)) {
            this.b.l();
        }
    }
}
