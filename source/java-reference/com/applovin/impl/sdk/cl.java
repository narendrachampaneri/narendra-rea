package com.applovin.impl.sdk;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class cl extends cx {
    final /* synthetic */ ck a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    cl(ck ckVar, String str, int i, AppLovinSdkImpl appLovinSdkImpl) {
        super(str, i, appLovinSdkImpl);
        this.a = ckVar;
    }

    @Override // com.applovin.impl.sdk.cx, com.applovin.impl.sdk.p
    public void a(int i) {
        this.a.c.onPostbackFailure(this.a.a, i);
    }

    @Override // com.applovin.impl.sdk.cx
    protected void a(o oVar, p pVar) throws Throwable {
        int iIntValue = this.a.j < 0 ? ((Integer) this.f.a(bw.aF)).intValue() : this.a.j;
        if (this.a.b == null) {
            oVar.a(this.a.a, iIntValue, false, pVar);
        } else {
            oVar.a(this.a.a, iIntValue, new JSONObject(this.a.b), false, pVar);
        }
    }

    @Override // com.applovin.impl.sdk.cx, com.applovin.impl.sdk.p
    public void a(JSONObject jSONObject, int i) {
        this.a.c.onPostbackSuccess(this.a.a);
    }
}
