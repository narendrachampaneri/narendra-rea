package com.applovin.impl.sdk;

/* JADX INFO: loaded from: classes.dex */
class g implements Runnable {
    final /* synthetic */ e a;

    g(e eVar) {
        this.a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.a.removeClickTrackingOverlay();
    }
}
