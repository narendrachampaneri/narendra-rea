package com.vungle.publisher;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
final class dh implements Runnable {
    final Cdo a = new Cdo();
    private final dj b;

    dh(dj djVar) {
        this.b = djVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dn dnVarA = this.a.a();
        if (dnVarA == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.b.a(dnVarA);
    }
}
