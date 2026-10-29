package com.amazon.device.iap.internal.c;

import java.util.Set;
import java.util.concurrent.ConcurrentSkipListSet;

/* JADX INFO: compiled from: PurchaseRequestTracker.java */
/* JADX INFO: loaded from: classes.dex */
public class b {
    private static final b b = new b();
    private final Set<String> a = new ConcurrentSkipListSet();

    public boolean a(String str) {
        if (com.amazon.device.iap.internal.util.d.a(str)) {
            return false;
        }
        return this.a.remove(str);
    }

    public void b(String str) {
        if (!com.amazon.device.iap.internal.util.d.a(str)) {
            this.a.add(str);
        }
    }

    public static b a() {
        return b;
    }
}
