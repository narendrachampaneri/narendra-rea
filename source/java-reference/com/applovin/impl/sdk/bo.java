package com.applovin.impl.sdk;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class bo {
    final /* synthetic */ bm a;
    private int b;
    private String c;
    private Map d;

    bo(bm bmVar, String str, Map map) {
        this(bmVar, str, map, 0);
    }

    bo(bm bmVar, String str, Map map, int i) {
        this.a = bmVar;
        this.b = i;
        this.c = str + "&postback_ts=" + System.currentTimeMillis();
        this.d = map;
    }

    public int a() {
        return this.b;
    }

    public void a(int i) {
        this.b = i;
    }

    public String b() {
        return this.c;
    }

    public Map c() {
        return this.d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        bo boVar = (bo) obj;
        if (this.b != boVar.b) {
            return false;
        }
        if (this.c != null) {
            if (!this.c.equals(boVar.c)) {
                return false;
            }
        } else if (boVar.c != null) {
            return false;
        }
        if (this.d == null ? boVar.d != null : !this.d.equals(boVar.d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((this.c != null ? this.c.hashCode() : 0) + (this.b * 31)) * 31) + (this.d != null ? this.d.hashCode() : 0);
    }

    public String toString() {
        return "PostbackRequest{attemptNumber=" + this.b + ", targetUrl='" + this.c + "', requestBody=" + this.d + '}';
    }
}
