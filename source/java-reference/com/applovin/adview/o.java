package com.applovin.adview;

import android.view.animation.Animation;

/* JADX INFO: loaded from: classes.dex */
class o implements Animation.AnimationListener {
    final /* synthetic */ boolean a;
    final /* synthetic */ n b;

    o(n nVar, boolean z) {
        this.b = nVar;
        this.a = z;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        if (this.a) {
            return;
        }
        this.b.a.B.setVisibility(4);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        this.b.a.B.setVisibility(0);
    }
}
