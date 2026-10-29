package com.applovin.adview;

import android.view.View;
import android.view.animation.AlphaAnimation;

/* JADX INFO: loaded from: classes.dex */
class n implements View.OnClickListener {
    final /* synthetic */ AppLovinInterstitialActivity a;

    n(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.f.getLogger().d("AppLovinInterstitialActivity", "Video view tapped!");
        if (!this.a.e.z() || this.a.B == null || this.a.B.getVisibility() == 8) {
            return;
        }
        boolean z = this.a.B.getVisibility() == 4;
        AlphaAnimation alphaAnimation = new AlphaAnimation(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
        alphaAnimation.setDuration(750L);
        alphaAnimation.setAnimationListener(new o(this, z));
        this.a.B.startAnimation(alphaAnimation);
    }
}
