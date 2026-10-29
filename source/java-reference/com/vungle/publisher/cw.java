package com.vungle.publisher;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class cw {
    public long a;
    public int b;
    public int c;

    public final int a(int i) {
        return df.a(this.b, i, 300000);
    }

    public final String toString() {
        return "{firstAttemptMillis: " + this.a + ", hardRetryCount: " + this.b + ", softRetryCount: " + this.c + "}";
    }
}
