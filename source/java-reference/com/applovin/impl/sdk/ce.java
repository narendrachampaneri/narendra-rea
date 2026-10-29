package com.applovin.impl.sdk;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class ce extends cx {
    final /* synthetic */ JSONObject a;
    final /* synthetic */ cd b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ce(cd cdVar, String str, by byVar, AppLovinSdkImpl appLovinSdkImpl, JSONObject jSONObject) {
        super(str, byVar, appLovinSdkImpl);
        this.b = cdVar;
        this.a = jSONObject;
    }

    @Override // com.applovin.impl.sdk.cx, com.applovin.impl.sdk.p
    public void a(int i) {
        q.a(i, this.f);
    }

    @Override // com.applovin.impl.sdk.cx
    protected void a(o oVar, p pVar) throws Throwable {
        oVar.a(q.a("device", this.f), this.a, pVar);
    }

    @Override // com.applovin.impl.sdk.cx, com.applovin.impl.sdk.p
    public void a(JSONObject jSONObject, int i) {
        this.b.a(jSONObject);
    }
}
