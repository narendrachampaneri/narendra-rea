package com.vungle.publisher;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
final class ds {
    final Object a;
    final dq b;
    final int c = 0;
    volatile boolean d = true;

    ds(Object obj, dq dqVar) {
        this.a = obj;
        this.b = dqVar;
    }

    public final boolean equals(Object other) {
        if (!(other instanceof ds)) {
            return false;
        }
        ds dsVar = (ds) other;
        return this.a == dsVar.a && this.b.equals(dsVar.b);
    }

    public final int hashCode() {
        return this.a.hashCode() + this.b.d.hashCode();
    }
}
