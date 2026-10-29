package com.applovin.impl.sdk;

import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
class br {
    private final int a;
    private final Queue b;
    private final Object c;

    br(int i) {
        this.a = i > 10 ? 10 : i;
        this.b = new LinkedList();
        this.c = new Object();
    }

    int a() {
        int size;
        synchronized (this.c) {
            size = this.b.size();
        }
        return size;
    }

    void a(ay ayVar) {
        synchronized (this.c) {
            if (!c()) {
                this.b.offer(ayVar);
            }
        }
    }

    int b() {
        return this.a;
    }

    boolean c() {
        boolean z;
        synchronized (this.c) {
            z = a() >= this.a;
        }
        return z;
    }

    boolean d() {
        boolean z;
        synchronized (this.c) {
            z = a() == 0;
        }
        return z;
    }

    ay e() {
        ay ayVar;
        try {
            synchronized (this.c) {
                try {
                    ayVar = !d() ? (ay) this.b.poll() : null;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return ayVar;
        } catch (Exception e) {
            return null;
        }
    }
}
