package com.applovin.impl.sdk;

/* JADX INFO: loaded from: classes.dex */
class f implements Runnable {
    final /* synthetic */ e a;

    f(e eVar) {
        this.a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a.a.isForegroundClickInvalidated()) {
            return;
        }
        this.a.e.a(this.a.b, this.a.c, this.a.d, this.a.a);
    }
}
