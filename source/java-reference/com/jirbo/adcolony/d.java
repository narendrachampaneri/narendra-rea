package com.jirbo.adcolony;

import android.content.Intent;
import com.inmobi.re.controller.JSController;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class d {
    volatile boolean j;
    boolean k;
    boolean l;
    c a = new c(this);
    b b = new b(this);
    o c = new o(this);
    t d = new t(this);
    u e = new u(this);
    ADCStorage f = new ADCStorage(this);
    ag g = new ag(this);
    ArrayList<j> h = new ArrayList<>();
    ArrayList<j> i = new ArrayList<>();
    aa.a m = new aa.a();

    d() {
    }

    void a(final j jVar) {
        new Thread(new Runnable() { // from class: com.jirbo.adcolony.d.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (d.this.h) {
                    if (a.d()) {
                        d.this.h.add(jVar);
                        if (!d.this.j) {
                            d.this.g();
                        }
                    }
                }
            }
        }).start();
    }

    void a() {
        if (!this.k && a.d()) {
            while (true) {
                try {
                    if (this.k && (this.j || this.h.size() <= 0)) {
                        break;
                    }
                    this.k = true;
                    this.i.addAll(this.h);
                    this.h.clear();
                    for (int i = 0; i < this.i.size(); i++) {
                        if (this.i.get(i) != null) {
                            this.i.get(i).a();
                        }
                    }
                    this.i.clear();
                } catch (RuntimeException e) {
                    this.k = false;
                    this.i.clear();
                    this.h.clear();
                    a.a(e);
                    return;
                }
            }
            this.k = false;
        }
    }

    void b() {
        this.j = true;
        new j(this) { // from class: com.jirbo.adcolony.d.2
            @Override // com.jirbo.adcolony.j
            void a() {
                this.o.e.c();
            }
        };
    }

    void c() {
        this.j = false;
        new j(this) { // from class: com.jirbo.adcolony.d.3
            @Override // com.jirbo.adcolony.j
            void a() {
                this.o.e.d();
            }
        };
    }

    void d() {
        new j(this) { // from class: com.jirbo.adcolony.d.4
            @Override // com.jirbo.adcolony.j
            void a() {
                this.o.e.e();
            }
        };
    }

    synchronized void a(final AdColonyAd adColonyAd) {
        this.a.o = 0.0d;
        l.a.b((Object) "Tracking ad event - start");
        adColonyAd.i.r.d++;
        if (!adColonyAd.b()) {
            adColonyAd.i.m();
        }
        new j(this) { // from class: com.jirbo.adcolony.d.5
            @Override // com.jirbo.adcolony.j
            void a() {
                if (AdColony.isZoneV4VC(adColonyAd.h) || adColonyAd.j.A == null || !adColonyAd.j.A.a || (adColonyAd.j.A.a && adColonyAd.u && adColonyAd.l.equals(JSController.FULL_SCREEN))) {
                    d.this.a("start", "{\"ad_slot\":" + (a.l.e.j + 1) + ", \"replay\":" + adColonyAd.u + "}", adColonyAd);
                    adColonyAd.j.q = true;
                    adColonyAd.j.r = true;
                    a.h();
                    adColonyAd.i.j.a(adColonyAd.j.a);
                }
            }
        };
    }

    void a(final double d, final AdColonyAd adColonyAd) {
        new j(this) { // from class: com.jirbo.adcolony.d.6
            @Override // com.jirbo.adcolony.j
            void a() {
                if (!a.o && adColonyAd.j.w != null && adColonyAd.j.w.a && d > 0.9d) {
                    l.c.b((Object) "V4VC validated.");
                    a.o = true;
                }
                this.o.d.a(d, adColonyAd);
            }
        };
    }

    synchronized void a(boolean z, String str, int i) {
        a.X.a(z, str, i);
    }

    synchronized void a(boolean z, final AdColonyAd adColonyAd) {
        synchronized (this) {
            if (adColonyAd != null) {
                a(1.0d, adColonyAd);
                if (!z && adColonyAd.b()) {
                    adColonyAd.i.m();
                    adColonyAd.i.s++;
                    AdColonyV4VCAd adColonyV4VCAd = (AdColonyV4VCAd) a.T;
                    final String rewardName = adColonyV4VCAd.getRewardName();
                    final int rewardAmount = adColonyV4VCAd.getRewardAmount();
                    if (adColonyAd.i.b()) {
                        if (adColonyV4VCAd.i.n.e && a.o) {
                            a(true, rewardName, rewardAmount);
                        }
                        new j(this) { // from class: com.jirbo.adcolony.d.7
                            @Override // com.jirbo.adcolony.j
                            void a() {
                                ADCData.g gVar = new ADCData.g();
                                gVar.b("v4vc_name", rewardName);
                                gVar.b("v4vc_amount", rewardAmount);
                                this.o.d.a("reward_v4vc", gVar, adColonyAd);
                            }
                        };
                    }
                }
            }
        }
    }

    void a(final String str, final String str2) {
        new j(this) { // from class: com.jirbo.adcolony.d.8
            @Override // com.jirbo.adcolony.j
            void a() {
                this.o.d.a(str, k.b(str2));
            }
        };
    }

    void a(final String str, final String str2, final AdColonyAd adColonyAd) {
        new j(this) { // from class: com.jirbo.adcolony.d.9
            @Override // com.jirbo.adcolony.j
            void a() {
                this.o.d.a(str, k.b(str2), adColonyAd);
            }
        };
    }

    synchronized double a(String str) {
        double dF;
        try {
            dF = this.a.i.f(str);
        } catch (RuntimeException e) {
            a.a(e);
            dF = 0.0d;
        }
        return dF;
    }

    synchronized int b(String str) {
        int iG;
        try {
            iG = this.a.i.g(str);
        } catch (RuntimeException e) {
            a.a(e);
            iG = 0;
        }
        return iG;
    }

    synchronized boolean c(String str) {
        boolean zH;
        try {
            zH = this.a.i.h(str);
        } catch (RuntimeException e) {
            a.a(e);
            zH = false;
        }
        return zH;
    }

    synchronized String d(String str) {
        String strE;
        try {
            strE = this.a.i.e(str);
        } catch (RuntimeException e) {
            a.a(e);
            strE = null;
        }
        return strE;
    }

    synchronized String e() {
        return this.b.c();
    }

    synchronized String f() {
        return this.b.d();
    }

    synchronized boolean e(String str) {
        return a(str, false, true);
    }

    synchronized boolean a(String str, boolean z, boolean z2) {
        boolean zB = false;
        synchronized (this) {
            try {
                if (a.d() && this.b.b(str, z)) {
                    zB = this.b.i.n.a(str).b(z2);
                }
            } catch (RuntimeException e) {
                a.a(e);
            }
        }
        return zB;
    }

    synchronized boolean f(String str) {
        return b(str, false, true);
    }

    synchronized boolean b(String str, boolean z, boolean z2) {
        boolean zC = false;
        synchronized (this) {
            try {
                if (a.d() && this.b.b(str, z)) {
                    zC = this.b.i.n.a(str).c(z2);
                }
            } catch (RuntimeException e) {
                a.a(e);
            }
        }
        return zC;
    }

    synchronized void a(AdColonyVideoAd adColonyVideoAd) {
        this.a.b(adColonyVideoAd.h);
    }

    synchronized void a(AdColonyInterstitialAd adColonyInterstitialAd) {
        this.a.b(adColonyInterstitialAd.h);
    }

    synchronized boolean b(AdColonyVideoAd adColonyVideoAd) {
        boolean zB = false;
        synchronized (this) {
            try {
                a.T = adColonyVideoAd;
                String str = adColonyVideoAd.h;
                if (e(str)) {
                    l.a.a("Showing ad for zone ").b((Object) str);
                    a(adColonyVideoAd);
                    zB = b((AdColonyAd) adColonyVideoAd);
                }
            } catch (RuntimeException e) {
                a.a(e);
            }
        }
        return zB;
    }

    synchronized boolean b(AdColonyInterstitialAd adColonyInterstitialAd) {
        boolean zB = false;
        synchronized (this) {
            try {
                a.T = adColonyInterstitialAd;
                String str = adColonyInterstitialAd.h;
                if (e(str)) {
                    l.a.a("Showing ad for zone ").b((Object) str);
                    a(adColonyInterstitialAd);
                    zB = b((AdColonyAd) adColonyInterstitialAd);
                }
            } catch (RuntimeException e) {
                a.a(e);
            }
        }
        return zB;
    }

    synchronized n.ad g(String str) {
        return this.b.i.n.a(str);
    }

    synchronized void a(AdColonyV4VCAd adColonyV4VCAd) {
        this.a.c(adColonyV4VCAd.h);
    }

    synchronized boolean b(AdColonyV4VCAd adColonyV4VCAd) {
        boolean zB = false;
        synchronized (this) {
            try {
                a.T = adColonyV4VCAd;
                String str = adColonyV4VCAd.h;
                if (f(str)) {
                    l.a.a("Showing v4vc for zone ").b((Object) str);
                    a(adColonyV4VCAd);
                    zB = b((AdColonyAd) adColonyV4VCAd);
                }
            } catch (RuntimeException e) {
                a.a(e);
            }
        }
        return zB;
    }

    synchronized boolean b(AdColonyAd adColonyAd) {
        boolean z;
        if (this.a.m.d()) {
            a.T.f = 3;
            z = false;
        } else {
            ADCVideo.a();
            if (a.m) {
                l.a.b((Object) "Launching AdColonyOverlay");
                a.b().startActivity(new Intent(a.b(), (Class<?>) AdColonyOverlay.class));
            } else {
                l.a.b((Object) "Launching AdColonyFullscreen");
                a.b().startActivity(new Intent(a.b(), (Class<?>) AdColonyFullscreen.class));
            }
            z = true;
        }
        return z;
    }

    synchronized void a(String str, String str2, String[] strArr) {
        try {
            a(a.n);
            l.c.a("==== Configuring AdColony ").a(this.a.b).b((Object) " with app/zone ids: ====");
            l.c.b((Object) str2);
            for (String str3 : strArr) {
                l.c.b((Object) str3);
            }
            l.a.a("package name: ").b((Object) aa.f());
            this.a.k = str2;
            this.a.l = strArr;
            this.a.a(str);
            this.m.a();
        } catch (RuntimeException e) {
            a.a(e);
        }
    }

    synchronized void g() {
        if (!a.c()) {
            try {
                a();
                if (!a.x) {
                    if (g.n() != null || this.m.b() > 5.0d) {
                        this.a.a();
                        a.x = true;
                    }
                    a.z = true;
                    this.b.f();
                }
                this.c.e();
                this.e.b();
                this.d.d();
                this.g.d();
            } catch (RuntimeException e) {
                a.a(e);
            }
        }
    }

    void a(int i) {
        a.a(i);
    }
}
