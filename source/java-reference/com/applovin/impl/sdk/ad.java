package com.applovin.impl.sdk;

/* JADX INFO: loaded from: classes.dex */
class ad implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ ab b;

    ad(ab abVar, int i) {
        this.b = abVar;
        this.a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.b.failedToReceiveAd(this.a);
    }
}
