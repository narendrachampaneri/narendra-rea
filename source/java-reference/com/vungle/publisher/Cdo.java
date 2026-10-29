package com.vungle.publisher;

/* JADX INFO: renamed from: com.vungle.publisher.do, reason: invalid class name */
/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
final class Cdo {
    private dn a;
    private dn b;

    Cdo() {
    }

    final synchronized void a(dn dnVar) {
        try {
            if (dnVar == null) {
                throw new NullPointerException("null cannot be enqueued");
            }
            if (this.b != null) {
                this.b.c = dnVar;
                this.b = dnVar;
            } else if (this.a == null) {
                this.b = dnVar;
                this.a = dnVar;
            } else {
                throw new IllegalStateException("Head present, but no tail");
            }
            notifyAll();
        } catch (Throwable th) {
            throw th;
        }
    }

    final synchronized dn a() {
        dn dnVar;
        dnVar = this.a;
        if (this.a != null) {
            this.a = this.a.c;
            if (this.a == null) {
                this.b = null;
            }
        }
        return dnVar;
    }

    final synchronized dn b() throws InterruptedException {
        if (this.a == null) {
            wait(1000L);
        }
        return a();
    }
}
