package com.google.android.exoplayer.hls;

/* JADX INFO: loaded from: classes2.dex */
public abstract class HlsPlaylist {
    public static final int TYPE_MASTER = 0;
    public static final int TYPE_MEDIA = 1;
    public final String baseUri;
    public final int type;

    protected HlsPlaylist(String baseUri, int type) {
        this.baseUri = baseUri;
        this.type = type;
    }
}
