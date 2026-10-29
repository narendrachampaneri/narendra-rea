package com.applovin.adview;

import android.view.animation.AlphaAnimation;

/* JADX INFO: loaded from: classes.dex */
class f implements Runnable {
    final /* synthetic */ AppLovinInterstitialActivity a;

    f(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.a = appLovinInterstitialActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.a.o || this.a.z == null) {
                return;
            }
            this.a.o = true;
            this.a.z.setVisibility(0);
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(this.a.e.e());
            alphaAnimation.setRepeatCount(0);
            this.a.z.startAnimation(alphaAnimation);
            if (!this.a.k() || this.a.A == null) {
                return;
            }
            this.a.A.setVisibility(0);
            this.a.A.bringToFront();
        } catch (Throwable th) {
            this.a.d.w("AppLovinInterstitialActivity", "Unable to show skip button: " + th);
        }
    }
}
