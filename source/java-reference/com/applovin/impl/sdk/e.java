package com.applovin.impl.sdk;

import android.net.Uri;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.sdk.AppLovinPostbackListener;

/* JADX INFO: loaded from: classes.dex */
class e implements AppLovinPostbackListener {
    final /* synthetic */ AdViewControllerImpl a;
    final /* synthetic */ Uri b;
    final /* synthetic */ AppLovinAdImpl c;
    final /* synthetic */ AppLovinAdView d;
    final /* synthetic */ AppLovinAdServiceImpl e;

    e(AppLovinAdServiceImpl appLovinAdServiceImpl, AdViewControllerImpl adViewControllerImpl, Uri uri, AppLovinAdImpl appLovinAdImpl, AppLovinAdView appLovinAdView) {
        this.e = appLovinAdServiceImpl;
        this.a = adViewControllerImpl;
        this.b = uri;
        this.c = appLovinAdImpl;
        this.d = appLovinAdView;
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackFailure(String str, int i) {
        this.e.c.post(new g(this));
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackSuccess(String str) {
        this.e.c.post(new f(this));
    }
}
