package com.jirbo.adcolony;

import android.os.Handler;
import android.os.Message;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.google.android.exoplayer.hls.HlsChunkSource;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
class p implements Runnable {
    public static final int a = 5;
    public static final int b = 10;
    static String c = "MONITOR_MUTEX";
    static volatile p d;
    static volatile long e;
    long f;

    p() {
    }

    static void a() {
        synchronized (c) {
            e = System.currentTimeMillis();
            if (d == null) {
                com.jirbo.adcolony.a.b("Creating ADC Monitor singleton.");
                d = new p();
                new Thread(d).start();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:82:0x0191  */
    /* JADX WARN: Code duplicated, block: B:84:0x0195  */
    @Override // java.lang.Runnable
    public void run() {
        long j;
        boolean z;
        long jCurrentTimeMillis;
        com.jirbo.adcolony.a.a(com.jirbo.adcolony.a.n);
        l.a.b((Object) "ADC Monitor Started.");
        com.jirbo.adcolony.a.l.b();
        boolean z2 = false;
        while (com.jirbo.adcolony.a.P != null && !AdColony.activity().isFinishing()) {
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            com.jirbo.adcolony.a.z = false;
            com.jirbo.adcolony.a.l.g();
            if (com.jirbo.adcolony.a.z) {
                j = 50;
            } else {
                j = z2 ? 2000 : ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
            }
            long jCurrentTimeMillis3 = System.currentTimeMillis();
            int i = (int) ((jCurrentTimeMillis3 - e) / 1000);
            com.jirbo.adcolony.a.l.g();
            if (z2) {
                if (i >= 10) {
                    break;
                }
                if (i < 5) {
                    com.jirbo.adcolony.a.l.b();
                    com.jirbo.adcolony.a.b("AdColony is active.");
                    z = false;
                }
                if (!q.c()) {
                    if (com.jirbo.adcolony.a.L) {
                        com.jirbo.adcolony.a.h();
                    }
                    com.jirbo.adcolony.a.L = false;
                } else {
                    if (!com.jirbo.adcolony.a.L) {
                        com.jirbo.adcolony.a.h();
                    }
                    com.jirbo.adcolony.a.L = true;
                }
                if (com.jirbo.adcolony.a.l.b.i != null && com.jirbo.adcolony.a.l.b.i.n != null) {
                    com.jirbo.adcolony.a.l.b.i.n.a();
                }
                a(j);
                jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - jCurrentTimeMillis2 > 3000 && jCurrentTimeMillis - jCurrentTimeMillis2 > 0) {
                    u uVar = com.jirbo.adcolony.a.l.e;
                    uVar.i = ((jCurrentTimeMillis - jCurrentTimeMillis2) / 1000.0d) + uVar.i;
                    if (com.jirbo.adcolony.a.P != null && jCurrentTimeMillis3 - this.f > 1000) {
                        this.f = System.currentTimeMillis();
                        Iterator<n.ad> it = com.jirbo.adcolony.a.l.b.i.n.a.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                n.ad next = it.next();
                                if ((next.a() && next.q != 0 && System.currentTimeMillis() - next.q > next.p) || (next.q != 0 && System.currentTimeMillis() - next.q > next.o)) {
                                    if (com.jirbo.adcolony.a.P != null && !com.jirbo.adcolony.a.p) {
                                        com.jirbo.adcolony.a.l.b.a(com.jirbo.adcolony.a.P);
                                        com.jirbo.adcolony.a.p = true;
                                    }
                                }
                            }
                        }
                    }
                }
                z2 = z;
            } else if (i >= 5) {
                com.jirbo.adcolony.a.b("AdColony is idle.");
                z2 = true;
                com.jirbo.adcolony.a.l.c();
            }
            z = z2;
            if (!q.c()) {
                if (com.jirbo.adcolony.a.L) {
                    com.jirbo.adcolony.a.h();
                }
                com.jirbo.adcolony.a.L = false;
            } else {
                if (!com.jirbo.adcolony.a.L) {
                    com.jirbo.adcolony.a.h();
                }
                com.jirbo.adcolony.a.L = true;
            }
            if (com.jirbo.adcolony.a.l.b.i != null) {
                com.jirbo.adcolony.a.l.b.i.n.a();
            }
            a(j);
            jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - jCurrentTimeMillis2 > 3000) {
            }
            z2 = z;
        }
        synchronized (c) {
            d = null;
        }
        if (!z2) {
            com.jirbo.adcolony.a.l.c();
        }
        if (com.jirbo.adcolony.a.P != null && AdColony.activity().isFinishing()) {
            com.jirbo.adcolony.a.A = true;
            a(HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
            if (com.jirbo.adcolony.a.A) {
                l.c.b((Object) "ADC.finishing, controller on_stop");
                com.jirbo.adcolony.a.l.d();
                z.a();
            }
            a(HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
            if (com.jirbo.adcolony.a.A) {
                l.c.b((Object) "Releasing Activity reference");
                com.jirbo.adcolony.a.P = null;
                com.jirbo.adcolony.a.h();
            }
        }
        System.out.println("Exiting monitor");
    }

    void a(long j) {
        try {
            Thread.sleep(j);
        } catch (InterruptedException e2) {
        }
    }

    static class a extends Handler {
        a() {
            com.jirbo.adcolony.a.s = true;
            sendMessageDelayed(obtainMessage(), 1000L);
        }

        @Override // android.os.Handler
        public void handleMessage(Message m) {
            if (com.jirbo.adcolony.a.P == null || com.jirbo.adcolony.a.b().isFinishing()) {
                com.jirbo.adcolony.a.b("Monitor pinger exiting.");
                com.jirbo.adcolony.a.s = false;
            } else {
                if (!com.jirbo.adcolony.a.r) {
                    p.a();
                }
                sendMessageDelayed(obtainMessage(), 1000L);
            }
        }
    }
}
