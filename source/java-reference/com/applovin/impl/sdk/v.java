package com.applovin.impl.sdk;

/* JADX INFO: loaded from: classes.dex */
class v implements cj {
    final /* synthetic */ bs a;
    final /* synthetic */ EventServiceImpl b;

    v(EventServiceImpl eventServiceImpl, bs bsVar) {
        this.b = eventServiceImpl;
        this.a = bsVar;
    }

    @Override // com.applovin.impl.sdk.cj
    public void a(s sVar) {
        try {
            this.b.a.getPersistentPostbackManager().a(this.b.a(this.a, sVar).toString(), this.a.b());
        } catch (Exception e) {
            this.b.a.getLogger().e("EventServiceImpl", "Unable to track event due to failure to convert event parameters into JSONObject for event: " + this.a, e);
        }
    }
}
