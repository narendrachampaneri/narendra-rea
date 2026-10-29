package com.applovin.impl.adview;

/* JADX INFO: loaded from: classes.dex */
class ak implements Runnable {
    final /* synthetic */ af a;

    ak(af afVar) {
        this.a = afVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.m.dismiss();
    }
}
