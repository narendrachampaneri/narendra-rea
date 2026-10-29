package com.applovin.adview;

import com.amazon.identity.auth.device.dataobject.AppInfo;

/* JADX INFO: loaded from: classes.dex */
class d implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ c c;

    d(c cVar, int i, int i2) {
        this.c = cVar;
        this.a = i;
        this.b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.a.a.d.e("AppLovinInterstitialActivity", "Media player error (" + this.a + AppInfo.DELIM + this.b + ") - showing close button.");
        this.c.a.a.f();
    }
}
