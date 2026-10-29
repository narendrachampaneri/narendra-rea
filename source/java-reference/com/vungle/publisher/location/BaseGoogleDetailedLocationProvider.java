package com.vungle.publisher.location;

import android.location.Location;
import com.google.android.gms.common.ConnectionResult;
import com.vungle.log.Logger;
import com.vungle.publisher.cj;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
abstract class BaseGoogleDetailedLocationProvider<T> implements cj {
    T a;
    private int b;
    private final Object c = new Object();
    private boolean d;

    protected abstract String a();

    protected abstract boolean a(T t);

    protected abstract void b(T t);

    protected abstract Location c(T t);

    protected abstract T c();

    protected abstract void d(T t);

    BaseGoogleDetailedLocationProvider() {
    }

    @Override // com.vungle.publisher.cj
    public Location b() {
        Location locationC = null;
        try {
            if (e()) {
                locationC = c(this.a);
                if (locationC == null) {
                    Logger.d(Logger.LOCATION_TAG, "no location returned from " + a());
                } else {
                    Logger.v(Logger.LOCATION_TAG, "provider: " + locationC.getProvider());
                    Logger.v(Logger.LOCATION_TAG, "latitude: " + locationC.getLatitude() + "°");
                    Logger.v(Logger.LOCATION_TAG, "longitude: " + locationC.getLongitude() + "°");
                    Logger.v(Logger.LOCATION_TAG, "accuracy: " + locationC.getAccuracy() + " m");
                    Logger.v(Logger.LOCATION_TAG, "speed: " + locationC.getSpeed() + " m/s");
                    Logger.v(Logger.LOCATION_TAG, "time: " + locationC.getTime() + " ms");
                }
            }
        } catch (Exception e) {
            Logger.w(Logger.LOCATION_TAG, "error obtaining detailed location using " + a(), e);
        } catch (SecurityException e2) {
            Logger.d(Logger.LOCATION_TAG, "no location permissions using " + a());
        } finally {
            g();
        }
        return locationC;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0112 */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ca, code lost:
    
        r0 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean e() throws Throwable {
        boolean zE;
        T t;
        Exception exc;
        T t2;
        boolean z = false;
        T t3 = null;
        try {
            synchronized (this.c) {
                this.b++;
                t3 = this.a;
                boolean zE2 = e(t3);
                try {
                    if (zE2) {
                        Logger.d(Logger.LOCATION_TAG, Thread.currentThread().getName() + " already connected to " + a() + " " + t3);
                        t2 = t3;
                        zE = zE2;
                    } else {
                        if (t3 == null) {
                            T tC = c();
                            this.a = tC;
                            try {
                                this.d = false;
                                b(tC);
                                t3 = tC;
                            } catch (Throwable th) {
                                th = th;
                                t3 = tC;
                                z = zE2;
                                while (true) {
                                    try {
                                        throw th;
                                    } catch (Exception e) {
                                        zE = z;
                                        t = t3;
                                        exc = e;
                                        Logger.w(Logger.LOCATION_TAG, Thread.currentThread().getName() + " error connecting to " + a() + " " + t, exc);
                                        return zE;
                                    }
                                }
                            }
                        }
                        while (!this.d) {
                            try {
                                Logger.d(Logger.LOCATION_TAG, Thread.currentThread().getName() + " waiting for " + a() + " to connect " + t3);
                                this.c.wait();
                            } catch (InterruptedException e2) {
                                Logger.d(Logger.LOCATION_TAG, Thread.currentThread().getName() + " interrupted while waiting for " + a() + " to connect " + t3);
                            }
                        }
                        zE = e(t3);
                        t2 = t3;
                    }
                    try {
                        return zE;
                    } catch (Throwable th2) {
                        t3 = t2;
                        z = zE;
                        th = th2;
                        while (true) {
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    z = zE2;
                    while (true) {
                        throw th;
                    }
                }
            }
        } catch (Exception e3) {
            zE = false;
            t = null;
            exc = e3;
        }
    }

    private boolean e(T t) {
        return t != null && a(t);
    }

    protected final void d() {
        Logger.d(Logger.LOCATION_TAG, "connected to " + a() + " " + this.a);
        f();
    }

    protected void onConnectionFailed(ConnectionResult connectionResult) {
        Logger.i(Logger.LOCATION_TAG, "failed to connect " + a() + " " + this.a + "; connection result " + connectionResult);
        f();
    }

    private void f() {
        synchronized (this.c) {
            this.d = true;
            this.c.notifyAll();
        }
    }

    private void g() {
        synchronized (this.c) {
            int i = this.b - 1;
            this.b = i;
            if (i > 0) {
                Logger.v(Logger.LOCATION_TAG, Thread.currentThread().getName() + " not disconnecting from " + a() + " because " + i + " clients still connected " + this.a);
            } else {
                Logger.d(Logger.LOCATION_TAG, Thread.currentThread().getName() + " disconnecting from " + a() + " " + this.a);
                T t = this.a;
                if (e(t)) {
                    d(t);
                    this.a = null;
                }
            }
        }
    }
}
