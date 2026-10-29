package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinPostbackListener;

/* JADX INFO: loaded from: classes.dex */
class bn implements AppLovinPostbackListener {
    final /* synthetic */ bo a;
    final /* synthetic */ bm b;

    bn(bm bmVar, bo boVar) {
        this.b = bmVar;
        this.a = boVar;
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackFailure(String str, int i) {
        this.b.b.i("PersistentPostbackManager", "Failed to submit postback with errorCode " + i + ". Will retry later...  Postback: " + this.a);
        this.b.e(this.a);
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackSuccess(String str) {
        this.b.d(this.a);
        this.b.b.d("PersistentPostbackManager", "Successfully submitted postback: " + this.a);
        this.b.b();
    }
}
