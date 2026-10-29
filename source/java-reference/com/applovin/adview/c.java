package com.applovin.adview;

import android.media.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
class c implements MediaPlayer.OnErrorListener {
    final /* synthetic */ b a;

    c(b bVar) {
        this.a = bVar;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        this.a.a.u.post(new d(this, i, i2));
        return true;
    }
}
