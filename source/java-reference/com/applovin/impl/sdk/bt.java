package com.applovin.impl.sdk;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
abstract class bt extends bv {
    protected bt(String str, AppLovinSdkImpl appLovinSdkImpl) {
        super(str, appLovinSdkImpl);
    }

    protected void a(String str, JSONObject jSONObject, p pVar) {
        bu buVar = new bu(this, "Repeat" + this.e, bw.h, this.f, str, jSONObject, pVar);
        buVar.a(bw.k);
        buVar.run();
    }
}
