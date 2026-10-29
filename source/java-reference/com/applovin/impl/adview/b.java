package com.applovin.impl.adview;

/* JADX INFO: loaded from: classes.dex */
class b implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ AdViewControllerImpl b;

    b(AdViewControllerImpl adViewControllerImpl, int i) {
        this.b = adViewControllerImpl;
        this.a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.b.u != null) {
                this.b.u.failedToReceiveAd(this.a);
            }
        } catch (Throwable th) {
            this.b.d.userError("AppLovinAdView", "Exception while running app load  callback", th);
        }
    }
}
