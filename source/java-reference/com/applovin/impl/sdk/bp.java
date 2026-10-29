package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinPostbackListener;

/* JADX INFO: loaded from: classes.dex */
class bp implements AppLovinPostbackListener {
    final /* synthetic */ AppLovinPostbackListener a;
    final /* synthetic */ PostbackServiceImpl b;

    bp(PostbackServiceImpl postbackServiceImpl, AppLovinPostbackListener appLovinPostbackListener) {
        this.b = postbackServiceImpl;
        this.a = appLovinPostbackListener;
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackFailure(String str, int i) {
        this.b.a.getLogger().e("PostbackService", "Failed to dispatch postback to URL " + str + ": " + i);
        if (this.a != null) {
            this.a.onPostbackFailure(str, i);
        }
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackSuccess(String str) {
        this.b.a.getLogger().d("PostbackService", "Successfully dispatched postback to URL " + str);
        if (this.a != null) {
            this.a.onPostbackSuccess(str);
        }
    }
}
