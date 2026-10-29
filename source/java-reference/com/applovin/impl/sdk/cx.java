package com.applovin.impl.sdk;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
abstract class cx extends bv implements p {
    private int a;
    private long b;
    private final p c;
    private by d;

    cx(String str, int i, AppLovinSdkImpl appLovinSdkImpl) {
        super(str, appLovinSdkImpl);
        this.b = -1L;
        this.d = null;
        this.a = i;
        this.c = new cy(this, appLovinSdkImpl, str);
    }

    cx(String str, by byVar, AppLovinSdkImpl appLovinSdkImpl) {
        this(str, ((Integer) appLovinSdkImpl.a(byVar)).intValue(), appLovinSdkImpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.d != null) {
            bz settingsManager = this.f.getSettingsManager();
            settingsManager.a(this.d, this.d.c());
            settingsManager.b();
        }
    }

    public void a(int i) {
    }

    public void a(long j) {
        this.b = j;
    }

    public void a(by byVar) {
        this.d = byVar;
    }

    protected abstract void a(o oVar, p pVar);

    public void a(JSONObject jSONObject, int i) {
    }

    @Override // java.lang.Runnable
    public void run() {
        a(this.f.getConnectionManager(), this.c);
    }
}
