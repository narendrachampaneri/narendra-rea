package com.applovin.impl.sdk;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class db {
    private static final db a = new db();
    private final Map c = new HashMap(2);
    private final Object b = new Object();

    private db() {
    }

    static db a() {
        return a;
    }

    dd a(String str) {
        dd ddVar;
        synchronized (this.b) {
            ddVar = (dd) this.c.remove(str);
        }
        return ddVar;
    }

    void a(String str, long j, String str2, boolean z) {
        dd ddVar = new dd(this, str2, j, z);
        synchronized (this.b) {
            this.c.put(str, ddVar);
        }
    }
}
