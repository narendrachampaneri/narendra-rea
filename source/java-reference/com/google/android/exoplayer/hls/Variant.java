package com.google.android.exoplayer.hls;

import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.FormatWrapper;
import com.google.android.exoplayer.util.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public final class Variant implements FormatWrapper {
    public final Format format;
    public final String url;

    public Variant(int index, String url, int bitrate, String codecs, int width, int height) {
        this.url = url;
        this.format = new Format(Integer.toString(index), MimeTypes.APPLICATION_M3U8, width, height, -1.0f, -1, -1, bitrate, null, codecs);
    }

    @Override // com.google.android.exoplayer.chunk.FormatWrapper
    public Format getFormat() {
        return this.format;
    }
}
