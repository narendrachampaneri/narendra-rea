package com.applovin.adview;

import android.media.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
class k implements MediaPlayer.OnCompletionListener {
    final /* synthetic */ AppLovinInterstitialActivity a;

    k(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.a = appLovinInterstitialActivity;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.a.m = true;
        this.a.t();
    }
}
