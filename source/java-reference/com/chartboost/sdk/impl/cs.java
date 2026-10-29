package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class cs implements Serializable, Comparable<cs> {
    static final boolean a = Boolean.getBoolean("DEBUG.DBTIMESTAMP");
    final int b = 0;
    final Date c = null;

    public int a() {
        if (this.c == null) {
            return 0;
        }
        return (int) (this.c.getTime() / 1000);
    }

    public int b() {
        return this.b;
    }

    public String toString() {
        return "TS time:" + this.c + " inc:" + this.b;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(cs csVar) {
        return a() != csVar.a() ? a() - csVar.a() : b() - csVar.b();
    }

    public int hashCode() {
        return ((this.b + 31) * 31) + a();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof cs)) {
            return false;
        }
        cs csVar = (cs) obj;
        return a() == csVar.a() && b() == csVar.b();
    }
}
