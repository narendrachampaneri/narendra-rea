package com.applovin.impl.adview;

import com.applovin.adview.AppLovinInterstitialAdDialog;

/* JADX INFO: loaded from: classes.dex */
class i implements Runnable {
    final /* synthetic */ AdViewControllerImpl a;

    private i(AdViewControllerImpl adViewControllerImpl) {
        this.a = adViewControllerImpl;
    }

    /* synthetic */ i(AdViewControllerImpl adViewControllerImpl, a aVar) {
        this(adViewControllerImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a.m != null) {
            try {
                AppLovinInterstitialAdDialog appLovinInterstitialAdDialogCreateInterstitialAdDialog = new InterstitialAdDialogCreatorImpl().createInterstitialAdDialog(this.a.b, this.a.a);
                appLovinInterstitialAdDialogCreateInterstitialAdDialog.setAdDisplayListener(new d(this.a));
                appLovinInterstitialAdDialogCreateInterstitialAdDialog.setAdVideoPlaybackListener(new e(this.a));
                appLovinInterstitialAdDialogCreateInterstitialAdDialog.setAdClickListener(new c(this.a));
                appLovinInterstitialAdDialogCreateInterstitialAdDialog.showAndRender(this.a.m);
            } catch (Throwable th) {
            }
        }
    }
}
