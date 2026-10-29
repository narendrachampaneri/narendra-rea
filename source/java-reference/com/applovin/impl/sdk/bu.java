package com.applovin.impl.sdk;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class bu extends cx {
    final /* synthetic */ String a;
    final /* synthetic */ JSONObject b;
    final /* synthetic */ p c;
    final /* synthetic */ bt d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    bu(bt btVar, String str, by byVar, AppLovinSdkImpl appLovinSdkImpl, String str2, JSONObject jSONObject, p pVar) {
        super(str, byVar, appLovinSdkImpl);
        this.d = btVar;
        this.a = str2;
        this.b = jSONObject;
        this.c = pVar;
    }

    @Override // com.applovin.impl.sdk.cx, com.applovin.impl.sdk.p
    public void a(int i) {
        this.c.a(i);
    }

    @Override // com.applovin.impl.sdk.cx
    protected void a(o oVar, p pVar) throws Throwable {
        oVar.a(q.a(q.a(this.a, this.f)), this.b, pVar);
    }

    @Override // com.applovin.impl.sdk.cx, com.applovin.impl.sdk.p
    public void a(JSONObject jSONObject, int i) {
        this.c.a(jSONObject, i);
    }
}
