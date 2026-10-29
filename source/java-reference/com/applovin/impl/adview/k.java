package com.applovin.impl.adview;

/* JADX INFO: loaded from: classes.dex */
class k implements Runnable {
    final /* synthetic */ AdViewControllerImpl a;

    private k(AdViewControllerImpl adViewControllerImpl) {
        this.a = adViewControllerImpl;
    }

    /* synthetic */ k(AdViewControllerImpl adViewControllerImpl, a aVar) {
        this(adViewControllerImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a.m != null) {
            AdViewControllerImpl.b(this.a.h, this.a.m.getSize());
            this.a.h.a(this.a.m);
        }
    }
}
