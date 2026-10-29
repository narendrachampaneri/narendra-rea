package com.applovin.impl.sdk;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class bs {
    private final String a;
    private final Map b;
    private final long c;
    private final String d;

    public bs(String str, Map map, long j, String str2) {
        this.a = str;
        this.b = map;
        this.c = j;
        this.d = str2;
    }

    public String a() {
        return this.a;
    }

    public Map b() {
        return this.b;
    }

    public long c() {
        return this.c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        bs bsVar = (bs) obj;
        if (this.c != bsVar.c) {
            return false;
        }
        if (this.a != null) {
            if (!this.a.equals(bsVar.a)) {
                return false;
            }
        } else if (bsVar.a != null) {
            return false;
        }
        if (this.b != null) {
            if (!this.b.equals(bsVar.b)) {
                return false;
            }
        } else if (bsVar.b != null) {
            return false;
        }
        if (this.d == null ? bsVar.d != null : !this.d.equals(bsVar.d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((((this.b != null ? this.b.hashCode() : 0) + ((this.a != null ? this.a.hashCode() : 0) * 31)) * 31) + ((int) (this.c ^ (this.c >>> 32)))) * 31) + (this.d != null ? this.d.hashCode() : 0);
    }

    public String toString() {
        return "SdkEvent{eventType='" + this.a + "', parameters=" + this.b + ", creationTsMillis=" + this.c + ", uniqueIdentifier='" + this.d + "'}";
    }
}
