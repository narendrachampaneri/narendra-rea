package com.applovin.impl.adview;

/* JADX INFO: loaded from: classes.dex */
class aj implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ af b;

    aj(af afVar, int i) {
        this.b = afVar;
        this.a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.b.g != null) {
            this.b.g.failedToReceiveAd(this.a);
        }
    }
}
