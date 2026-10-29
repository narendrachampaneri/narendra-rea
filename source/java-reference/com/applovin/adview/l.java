package com.applovin.adview;

import android.media.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
class l implements MediaPlayer.OnErrorListener {
    final /* synthetic */ AppLovinInterstitialActivity a;

    l(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.a = appLovinInterstitialActivity;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        this.a.u.post(new m(this, i, i2));
        return true;
    }
}
