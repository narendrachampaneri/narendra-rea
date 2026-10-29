package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;

/* JADX INFO: loaded from: classes.dex */
class y implements AppLovinAdDisplayListener {
    final /* synthetic */ af a;
    final /* synthetic */ x b;

    y(x xVar, af afVar) {
        this.b = xVar;
        this.a = afVar;
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        super/*android.app.Dialog*/.show();
        if (this.b.h) {
            return;
        }
        AppLovinAdDisplayListener appLovinAdDisplayListenerD = this.a.d();
        if (appLovinAdDisplayListenerD != null) {
            appLovinAdDisplayListenerD.adDisplayed(appLovinAd);
        }
        this.b.h = true;
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        this.b.a.runOnUiThread(this.b.f);
        AppLovinAdDisplayListener appLovinAdDisplayListenerD = this.a.d();
        if (!this.b.i && appLovinAdDisplayListenerD != null) {
            appLovinAdDisplayListenerD.adHidden(appLovinAd);
            this.b.i = true;
        }
        this.a.a(false);
    }
}
