package com.applovin.impl.sdk;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class cn extends cx {
    final /* synthetic */ cm a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    cn(cm cmVar, String str, by byVar, AppLovinSdkImpl appLovinSdkImpl) {
        super(str, byVar, appLovinSdkImpl);
        this.a = cmVar;
    }

    @Override // com.applovin.impl.sdk.cx, com.applovin.impl.sdk.p
    public void a(int i) {
        this.a.b(i);
    }

    @Override // com.applovin.impl.sdk.cx
    protected void a(o oVar, p pVar) throws Throwable {
        oVar.a(this.a.c(), ((Integer) this.f.a(bw.u)).intValue(), pVar);
    }

    @Override // com.applovin.impl.sdk.cx, com.applovin.impl.sdk.p
    public void a(JSONObject jSONObject, int i) {
        if (i == 200) {
            this.a.b(jSONObject);
        } else {
            this.a.b(i);
        }
    }
}
