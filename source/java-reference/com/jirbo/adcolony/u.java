package com.jirbo.adcolony;

import com.newrelic.agent.android.analytics.AnalyticAttribute;

/* JADX INFO: loaded from: classes2.dex */
class u {
    d a;
    boolean b;
    boolean c;
    boolean d = false;
    boolean e = false;
    boolean f = true;
    double g;
    double h;
    double i;
    int j;
    String k;

    u(d dVar) {
        this.k = AnalyticAttribute.UUID_ATTRIBUTE;
        this.a = dVar;
        this.k = aa.b();
    }

    void a() {
    }

    void b() {
        if (this.a.b.b) {
            if (this.d) {
                this.d = false;
                this.a.d.a(AnalyticAttribute.APP_INSTALL_ATTRIBUTE, (ADCData.g) null);
            }
            if (this.e) {
                this.e = false;
                this.a.d.a("session_start", (ADCData.g) null);
            }
        }
    }

    void c() {
        l.b.b((Object) "AdColony resuming");
        a.z = true;
        if (this.b) {
            l.d.b((Object) "AdColony.onResume() called multiple times in succession.");
        }
        this.b = true;
        g();
        double dC = aa.c();
        if (this.c) {
            if (dC - this.h > this.a.a.d) {
                a(this.i);
                this.g = dC;
                h();
            }
            this.c = false;
            f();
        } else {
            this.g = dC;
            h();
        }
        a.h();
    }

    void d() {
        l.b.b((Object) "AdColony suspending");
        a.z = true;
        if (!this.b) {
            l.d.b((Object) "AdColony.onPause() called without initial call to onResume().");
        }
        this.b = false;
        this.c = true;
        this.h = aa.c();
        f();
    }

    void e() {
        l.b.b((Object) "AdColony terminating");
        a.z = true;
        a(this.i);
        this.c = false;
        f();
    }

    void f() {
        ADCData.g gVar = new ADCData.g();
        gVar.b("allow_resume", this.c);
        gVar.b("start_time", this.g);
        gVar.b("finish_time", this.h);
        gVar.b("session_time", this.i);
        k.a(new f("session_info.txt"), gVar);
    }

    void g() {
        ADCData.g gVarB = k.b(new f("session_info.txt"));
        if (gVarB != null) {
            this.c = gVarB.h("allow_resume");
            this.g = gVarB.f("start_time");
            this.h = gVarB.f("finish_time");
            this.i = gVarB.f("session_time");
            return;
        }
        this.d = true;
    }

    void h() {
        this.e = true;
        if (!this.f) {
            this.k = aa.b();
        }
        this.f = false;
        this.i = 0.0d;
        this.j = 0;
        if (a.l != null && a.l.b != null && a.l.b.i != null && a.l.b.i.n != null) {
            for (int i = 0; i < a.l.b.i.n.b(); i++) {
                if (a.l.b.i.n.a(i).r != null) {
                    a.l.b.i.n.a(i).r.d = 0;
                }
                if (a.l.b.i.n.a(i) != null) {
                    a.l.b.i.n.a(i).j = new ADCData.c();
                }
            }
        }
    }

    void a(double d) {
        l.a.a("Submitting session duration ").b(d);
        ADCData.g gVar = new ADCData.g();
        gVar.b("session_length", (int) d);
        this.a.d.a("session_end", gVar);
    }
}
