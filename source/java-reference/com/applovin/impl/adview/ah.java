package com.applovin.impl.adview;

/* JADX INFO: loaded from: classes.dex */
class ah implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ boolean b;
    final /* synthetic */ af c;

    ah(af afVar, boolean z, boolean z2) {
        this.c = afVar;
        this.a = z;
        this.b = z2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a && this.b) {
            this.c.i();
        } else {
            this.c.h();
        }
    }
}
