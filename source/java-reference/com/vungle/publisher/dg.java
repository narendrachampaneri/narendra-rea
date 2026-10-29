package com.vungle.publisher;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class dg {
    private final AtomicInteger a = new AtomicInteger();

    public final int a(int i) {
        int i2;
        int i3;
        do {
            i2 = this.a.get();
            if (i < 0 || i > 31) {
                throw new IllegalArgumentException("bit index must be 0-31");
            }
            i3 = (1 << i) | i2;
        } while (!this.a.compareAndSet(i2, i3));
        return i3;
    }
}
