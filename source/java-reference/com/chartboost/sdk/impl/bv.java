package com.chartboost.sdk.impl;

/* JADX INFO: loaded from: classes.dex */
public class bv {
    final Object a;
    final String b;

    public String toString() {
        return "{ \"$ref\" : \"" + this.b + "\", \"$id\" : \"" + this.a + "\" }";
    }

    public Object a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        bv bvVar = (bv) o;
        if (this.a == null ? bvVar.a != null : !this.a.equals(bvVar.a)) {
            return false;
        }
        if (this.b != null) {
            if (this.b.equals(bvVar.b)) {
                return true;
            }
        } else if (bvVar.b == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.a != null ? this.a.hashCode() : 0) * 31) + (this.b != null ? this.b.hashCode() : 0);
    }
}
