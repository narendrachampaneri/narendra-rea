package com.applovin.adview;

import android.view.animation.AlphaAnimation;

/* JADX INFO: loaded from: classes.dex */
class e implements Runnable {
    final /* synthetic */ AppLovinInterstitialActivity a;

    e(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.a = appLovinInterstitialActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.a.n) {
                this.a.x.setVisibility(0);
                return;
            }
            this.a.n = true;
            if (this.a.k() && this.a.y != null) {
                this.a.y.setVisibility(0);
                this.a.y.bringToFront();
            }
            this.a.x.setVisibility(0);
            this.a.x.bringToFront();
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(this.a.e.e());
            alphaAnimation.setRepeatCount(0);
            this.a.x.startAnimation(alphaAnimation);
        } catch (Throwable th) {
            this.a.dismiss();
        }
    }
}
