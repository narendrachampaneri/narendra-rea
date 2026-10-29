package com.chartboost.sdk.Model;

import android.text.TextUtils;
import android.view.View;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.e;
import com.chartboost.sdk.f;
import com.chartboost.sdk.impl.ae;
import com.chartboost.sdk.impl.af;
import com.chartboost.sdk.impl.ah;
import com.chartboost.sdk.impl.ai;
import com.chartboost.sdk.impl.av;
import com.chartboost.sdk.impl.aw;
import com.chartboost.sdk.impl.az;
import com.chartboost.sdk.impl.bb;
import com.chartboost.sdk.impl.bp;
import com.chartboost.sdk.impl.br;
import com.google.android.exoplayer.util.MimeTypes;
import com.inmobi.monetization.internal.Ad;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public Date a;
    public c c;
    public String d;
    public boolean f;
    public bp h;
    public boolean i;
    public az n;
    public boolean p;
    private f u;
    private InterfaceC0019a v;
    private Runnable w;
    private Boolean t = null;
    public boolean j = false;
    public boolean k = false;
    public boolean l = false;
    public boolean m = false;
    public boolean q = false;
    public b b = b.LOADING;
    public boolean g = false;
    public boolean o = false;
    private e.a r = e.a.a;
    public d e = d.NONE;
    private boolean s = true;

    /* JADX INFO: renamed from: com.chartboost.sdk.Model.a$a, reason: collision with other inner class name */
    public interface InterfaceC0019a {
        void a(a aVar);

        void a(a aVar, CBError.CBImpressionError cBImpressionError);

        void a(a aVar, String str, e.a aVar2);

        void b(a aVar);

        void c(a aVar);

        void d(a aVar);
    }

    public enum b {
        LOADING,
        LOADED,
        DISPLAYED,
        CACHED,
        DISMISSING,
        NONE
    }

    public enum c {
        INTERSTITIAL,
        MORE_APPS,
        REWARDED_VIDEO,
        NONE
    }

    public enum d {
        INTERSTITIAL,
        INTERSTITIAL_VIDEO,
        INTERSTITIAL_REWARD_VIDEO,
        NONE
    }

    public a(c cVar, boolean z, String str, boolean z2) {
        this.p = false;
        this.f = z;
        this.p = true;
        this.c = cVar;
        this.i = z2;
        this.d = str;
        if (this.d == null) {
            this.d = "Default";
        }
    }

    public void a(e.a aVar, InterfaceC0019a interfaceC0019a) {
        if (aVar == null) {
            aVar = e.a.a();
        }
        this.r = aVar;
        this.a = new Date();
        this.b = b.LOADING;
        this.v = interfaceC0019a;
        if (aVar.a("type").equals(Ad.AD_TYPE_NATIVE)) {
            switch (this.c) {
                case INTERSTITIAL:
                    if (aVar.a("media-type").equals(MimeTypes.BASE_TYPE_VIDEO)) {
                        this.e = d.INTERSTITIAL_VIDEO;
                        this.u = new ai(this);
                        this.s = false;
                    } else {
                        this.e = d.INTERSTITIAL;
                        this.u = new ah(this);
                    }
                    break;
                case REWARDED_VIDEO:
                    this.e = d.INTERSTITIAL_REWARD_VIDEO;
                    this.u = new ai(this);
                    this.s = false;
                    break;
                case MORE_APPS:
                    this.u = new aw(this);
                    this.s = false;
                    break;
            }
        } else {
            this.u = new br(this);
        }
        this.u.a(aVar);
    }

    public boolean a() {
        return this.s;
    }

    public boolean b() {
        return (com.chartboost.sdk.b.a() == null || this.s) ? false : true;
    }

    public void c() {
        if (this.v != null) {
            this.p = true;
            this.v.b(this);
        }
    }

    public void d() {
        if (this.v != null) {
            this.v.a(this);
        }
    }

    public boolean a(String str, e.a aVar) {
        if (this.b != b.DISPLAYED || this.k) {
            return false;
        }
        if (str == null) {
            str = this.r.e("link");
        }
        String strE = this.r.e("deep-link");
        if (!TextUtils.isEmpty(strE)) {
            try {
                if (bb.a(strE)) {
                    try {
                        this.t = new Boolean(true);
                        str = strE;
                    } catch (Exception e) {
                        str = strE;
                    }
                } else {
                    this.t = new Boolean(false);
                }
            } catch (Exception e2) {
            }
        }
        if (this.o) {
            return false;
        }
        this.o = true;
        this.p = false;
        this.v.a(this, str, aVar);
        return true;
    }

    public boolean e() {
        return this.t != null;
    }

    public boolean f() {
        return this.t.booleanValue();
    }

    public void a(CBError.CBImpressionError cBImpressionError) {
        if (this.v != null) {
            this.v.a(this, cBImpressionError);
        }
    }

    public void g() {
        if (this.v != null) {
            this.v.c(this);
        }
    }

    public void h() {
        if (this.v != null) {
            this.v.d(this);
        }
    }

    public boolean i() {
        if (this.u != null) {
            this.u.b();
            if (this.u.e() != null) {
                return true;
            }
        } else {
            CBLogging.b("CBImpression", "reinitializing -- no view protocol exists!!");
        }
        CBLogging.e("CBImpression", "reinitializing -- view not yet created");
        return false;
    }

    public void j() {
        k();
        if (this.g) {
            if (this.u != null) {
                this.u.d();
            }
            this.u = null;
            CBLogging.b("CBImpression", "Destroying the view and view data");
        }
    }

    public void k() {
        if (this.h != null) {
            this.h.d();
            try {
                if (this.u != null && this.u.e() != null && this.u.e().getParent() != null) {
                    this.h.removeView(this.u.e());
                }
            } catch (Exception e) {
                CBLogging.b("CBImpression", "Exception raised while cleaning up views", e);
            }
            this.h = null;
        }
        if (this.u != null) {
            this.u.f();
        }
        CBLogging.b("CBImpression", "Destroying the view");
    }

    public CBError.CBImpressionError l() {
        if (this.u != null) {
            return this.u.c();
        }
        return null;
    }

    public f.a m() {
        if (this.u != null) {
            return this.u.e();
        }
        return null;
    }

    public void n() {
        if (this.u != null && this.u.e() != null) {
            this.u.e().setVisibility(0);
        }
    }

    public void o() {
        if (this.u != null && this.u.e() != null) {
            this.u.e().setVisibility(8);
        }
    }

    public void p() {
        if (this.u != null && this.u.e() != null) {
            Object parent = this.u.e().getParent();
            if (parent != null && (parent instanceof View)) {
                ((View) parent).setVisibility(0);
            } else {
                o();
            }
        }
    }

    public void q() {
        if (this.u != null && this.u.e() != null) {
            Object parent = this.u.e().getParent();
            if (parent != null && (parent instanceof View)) {
                ((View) parent).setVisibility(8);
            } else {
                n();
            }
        }
    }

    public void a(Runnable runnable) {
        this.w = runnable;
    }

    public void r() {
        this.k = true;
    }

    public void s() {
        if (this.w != null) {
            this.w.run();
            this.w = null;
        }
        this.k = false;
        this.j = false;
    }

    public String t() {
        return this.r.e("ad_id");
    }

    public com.chartboost.sdk.d u() {
        switch (this.c) {
            case REWARDED_VIDEO:
                return af.h();
            case MORE_APPS:
                return av.f();
            default:
                return ae.f();
        }
    }

    public void v() {
        u().j(this);
    }

    public boolean w() {
        if (this.u != null) {
            return this.u.j();
        }
        return false;
    }

    public void x() {
        this.o = false;
        if (this.u != null) {
            this.u.k();
        }
    }

    public void y() {
        this.o = false;
    }

    public void z() {
        if (this.u != null) {
            this.u.l();
        }
    }

    public e.a A() {
        return this.r == null ? e.a.a : this.r;
    }

    public f B() {
        return this.u;
    }

    public boolean C() {
        return this.p;
    }
}
