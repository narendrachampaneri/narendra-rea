package com.applovin.impl.sdk;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class da implements p {
    final /* synthetic */ cz a;

    da(cz czVar) {
        this.a = czVar;
    }

    @Override // com.applovin.impl.sdk.p
    public void a(int i) {
        this.a.g.d("TaskReportReward", "Failed to report reward for ad: " + this.a.a.getAdIdNumber() + " - error code: " + i);
    }

    @Override // com.applovin.impl.sdk.p
    public void a(JSONObject jSONObject, int i) {
        this.a.g.d("TaskReportReward", "Reported reward successfully for ad: " + this.a.a.getAdIdNumber());
    }
}
