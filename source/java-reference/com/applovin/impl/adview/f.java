package com.applovin.impl.adview;

/* JADX INFO: loaded from: classes.dex */
class f implements Runnable {
    final /* synthetic */ AdViewControllerImpl a;

    private f(AdViewControllerImpl adViewControllerImpl) {
        this.a = adViewControllerImpl;
    }

    /* synthetic */ f(AdViewControllerImpl adViewControllerImpl, a aVar) {
        this(adViewControllerImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.h.setVisibility(8);
    }
}
