package com.vungle.publisher;

import com.vungle.log.Logger;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
final class di implements Runnable {
    final Cdo a = new Cdo();
    volatile boolean b;
    private final dj c;

    di(dj djVar) {
        this.c = djVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                try {
                    dn dnVarB = this.a.b();
                    if (dnVarB == null) {
                        synchronized (this) {
                            try {
                                dnVarB = this.a.a();
                                if (dnVarB == null) {
                                    this.b = false;
                                    this.b = false;
                                    return;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    this.c.a(dnVarB);
                } catch (InterruptedException e) {
                    Logger.w("Event", Thread.currentThread().getName() + " was interruppted", e);
                    this.b = false;
                    return;
                }
            } catch (Throwable th2) {
                this.b = false;
                throw th2;
            }
        }
    }
}
