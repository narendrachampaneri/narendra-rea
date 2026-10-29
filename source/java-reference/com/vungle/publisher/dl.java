package com.vungle.publisher;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
final class dl extends Handler {
    final Cdo a;
    boolean b;
    private final int c;
    private final dj d;

    dl(dj djVar, Looper looper) {
        super(looper);
        this.d = djVar;
        this.c = 10;
        this.a = new Cdo();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                dn dnVarA = this.a.a();
                if (dnVarA == null) {
                    synchronized (this) {
                        dnVarA = this.a.a();
                        if (dnVarA == null) {
                            this.b = false;
                            this.b = false;
                            return;
                        }
                    }
                }
                this.d.a(dnVarA);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.c);
            if (!sendMessage(obtainMessage())) {
                throw new dk("Could not send handler message");
            }
            this.b = true;
        } catch (Throwable th) {
            this.b = false;
            throw th;
        }
    }
}
