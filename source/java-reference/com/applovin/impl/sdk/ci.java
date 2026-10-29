package com.applovin.impl.sdk;

/* JADX INFO: loaded from: classes.dex */
public class ci extends bv {
    private final cj a;

    public ci(AppLovinSdkImpl appLovinSdkImpl, cj cjVar) {
        super("TaskCollectAdvertisingId", appLovinSdkImpl);
        this.a = cjVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.a(this.f.getDataCollector().c());
    }
}
