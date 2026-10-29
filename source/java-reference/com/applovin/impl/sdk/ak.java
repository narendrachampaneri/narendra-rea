package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class ak implements Runnable {
    final /* synthetic */ AppLovinAd a;
    final /* synthetic */ Map b;
    final /* synthetic */ ae c;

    ak(ae aeVar, AppLovinAd appLovinAd, Map map) {
        this.c = aeVar;
        this.a = appLovinAd;
        this.b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.f.userRewardVerified(this.a, this.b);
    }
}
