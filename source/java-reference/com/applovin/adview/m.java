package com.applovin.adview;

import com.amazon.identity.auth.device.dataobject.AppInfo;

/* JADX INFO: loaded from: classes.dex */
class m implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ l c;

    m(l lVar, int i, int i2) {
        this.c = lVar;
        this.a = i;
        this.b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.a.d.e("AppLovinInterstitialActivity", "Video view error (" + this.a + AppInfo.DELIM + this.b + ") - showing close button.");
        this.c.a.f();
    }
}
