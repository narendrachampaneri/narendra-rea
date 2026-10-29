package com.vungle.publisher;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class db {
    public static boolean a(AtomicInteger atomicInteger) {
        int i;
        if (atomicInteger.compareAndSet(0, 1)) {
            return true;
        }
        do {
            i = atomicInteger.get();
        } while (!atomicInteger.compareAndSet(i, i + 1));
        return false;
    }
}
