package com.google.android.exoplayer.dash.mpd;

import android.net.Uri;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.UriUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class RangedUri {
    private final String baseUri;
    private int hashCode;
    public final long length;
    private final String referenceUri;
    public final long start;

    public RangedUri(String baseUri, String referenceUri, long start, long length) {
        Assertions.checkArgument((baseUri == null && referenceUri == null) ? false : true);
        this.baseUri = baseUri;
        this.referenceUri = referenceUri;
        this.start = start;
        this.length = length;
    }

    public Uri getUri() {
        return UriUtil.resolveToUri(this.baseUri, this.referenceUri);
    }

    public String getUriString() {
        return UriUtil.resolve(this.baseUri, this.referenceUri);
    }

    public RangedUri attemptMerge(RangedUri other) {
        RangedUri rangedUri = null;
        if (other != null && getUriString().equals(other.getUriString())) {
            if (this.length != -1 && this.start + this.length == other.start) {
                rangedUri = new RangedUri(this.baseUri, this.referenceUri, this.start, other.length != -1 ? this.length + other.length : -1L);
            } else if (other.length != -1 && other.start + other.length == this.start) {
                rangedUri = new RangedUri(this.baseUri, this.referenceUri, other.start, this.length != -1 ? other.length + this.length : -1L);
            }
        }
        return rangedUri;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            int result = ((int) this.start) + 527;
            this.hashCode = (((result * 31) + ((int) this.length)) * 31) + getUriString().hashCode();
        }
        return this.hashCode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RangedUri other = (RangedUri) obj;
        return this.start == other.start && this.length == other.length && getUriString().equals(other.getUriString());
    }
}
