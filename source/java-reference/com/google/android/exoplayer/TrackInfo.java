package com.google.android.exoplayer;

/* JADX INFO: loaded from: classes2.dex */
public final class TrackInfo {
    public final long durationUs;
    public final String mimeType;

    public TrackInfo(String mimeType, long durationUs) {
        this.mimeType = mimeType;
        this.durationUs = durationUs;
    }
}
