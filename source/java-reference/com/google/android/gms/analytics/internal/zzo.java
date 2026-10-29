package com.google.android.gms.analytics.internal;

/* JADX INFO: loaded from: classes2.dex */
public enum zzo {
    NONE,
    GZIP;

    public static zzo zzbn(String str) {
        return "GZIP".equalsIgnoreCase(str) ? GZIP : NONE;
    }
}
