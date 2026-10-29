package com.vungle.publisher;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class bx implements bz {
    public final long e;

    public bx() {
        this(System.currentTimeMillis());
    }

    public bx(long j) {
        this.e = j;
    }

    @Override // com.vungle.publisher.bz
    public final long b() {
        return this.e;
    }
}
