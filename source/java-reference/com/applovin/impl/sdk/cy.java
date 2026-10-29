package com.applovin.impl.sdk;

import android.util.Log;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class cy implements p {
    final /* synthetic */ AppLovinSdkImpl a;
    final /* synthetic */ String b;
    final /* synthetic */ cx c;

    cy(cx cxVar, AppLovinSdkImpl appLovinSdkImpl, String str) {
        this.c = cxVar;
        this.a = appLovinSdkImpl;
        this.b = str;
    }

    @Override // com.applovin.impl.sdk.p
    public void a(int i) {
        boolean z = i < 200 || i >= 500;
        boolean z2 = i != -103;
        if (!z || !z2 || this.c.a <= 0) {
            this.c.a(i);
            return;
        }
        long jLongValue = this.c.b < 0 ? ((Long) this.a.a(bw.n)).longValue() : this.c.b;
        Log.w(this.b, "Unable to send request due to server failure (code " + i + "). " + this.c.a + " attempts left, retrying in " + (jLongValue / 1000.0d) + " seconds...");
        this.c.a--;
        if (this.c.a == 0) {
            this.c.c();
        }
        this.a.a().a(this.c, cr.BACKGROUND, jLongValue);
    }

    @Override // com.applovin.impl.sdk.p
    public void a(JSONObject jSONObject, int i) {
        this.c.a = 0;
        this.c.a(jSONObject, i);
    }
}
