package com.applovin.adview;

import android.media.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class b implements MediaPlayer.OnPreparedListener {
    final /* synthetic */ AppLovinInterstitialActivity a;

    b(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.a = appLovinInterstitialActivity;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.a.E = new WeakReference(mediaPlayer);
        int i = this.a.d() ? 0 : 1;
        mediaPlayer.setVolume(i, i);
        int videoWidth = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.a.t = (int) TimeUnit.MILLISECONDS.toSeconds(mediaPlayer.getDuration());
        this.a.w.setVideoSize(videoWidth, videoHeight);
        mediaPlayer.setDisplay(this.a.w.getHolder());
        mediaPlayer.setOnErrorListener(new c(this));
        this.a.n();
        this.a.i();
        this.a.p();
        this.a.g();
    }
}
