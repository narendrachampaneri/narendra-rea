package com.applovin.adview;

import android.app.Activity;
import com.applovin.impl.adview.InterstitialAdDialogCreatorImpl;
import com.applovin.sdk.AppLovinSdk;

/* JADX INFO: loaded from: classes.dex */
final class u implements Runnable {
    final /* synthetic */ AppLovinSdk a;
    final /* synthetic */ Activity b;

    u(AppLovinSdk appLovinSdk, Activity activity) {
        this.a = appLovinSdk;
        this.b = activity;
    }

    @Override // java.lang.Runnable
    public void run() {
        new InterstitialAdDialogCreatorImpl().createInterstitialAdDialog(this.a, this.b).show();
    }
}
