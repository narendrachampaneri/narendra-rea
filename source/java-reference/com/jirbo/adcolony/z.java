package com.jirbo.adcolony;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
class z {
    static String a = new String("mutex");
    static ArrayList<a> b = new ArrayList<>();
    static ArrayList<a> c = new ArrayList<>();
    static ArrayList<Runnable> d = new ArrayList<>();
    static ArrayList<Runnable> e = new ArrayList<>();
    static volatile boolean f;

    z() {
    }

    static void a() {
        c();
        synchronized (a) {
            d.clear();
        }
        b();
    }

    static void a(Runnable runnable) {
        synchronized (a) {
            if (f) {
                d.add(runnable);
            } else if (0 == 0) {
                new Thread(runnable).start();
            }
        }
    }

    static void b() {
        synchronized (a) {
            f = false;
            e.clear();
            e.addAll(d);
            d.clear();
            c.clear();
        }
        Iterator<Runnable> it = e.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    static void c() {
        synchronized (a) {
            f = true;
            for (a aVar : b) {
                synchronized (aVar) {
                    aVar.notify();
                }
            }
            synchronized (a) {
                b.clear();
            }
        }
    }

    static class a extends Thread {
        Runnable a;

        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                if (this.a != null) {
                    try {
                        this.a.run();
                    } catch (RuntimeException e) {
                        com.jirbo.adcolony.a.e("Exception caught in reusable thread.");
                        com.jirbo.adcolony.a.e(e + "");
                        e.printStackTrace();
                    }
                    this.a = null;
                }
                if (z.f) {
                    return;
                }
                synchronized (this) {
                    synchronized (z.a) {
                        z.b.add(this);
                    }
                    try {
                        wait();
                    } catch (InterruptedException e2) {
                    }
                }
            }
        }
    }
}
