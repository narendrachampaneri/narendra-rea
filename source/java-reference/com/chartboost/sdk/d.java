package com.chartboost.sdk;

import android.content.Context;
import android.os.Handler;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.impl.ay;
import com.chartboost.sdk.impl.az;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    protected static Handler a = CBUtility.e();
    private a e = null;
    private Map<String, com.chartboost.sdk.Model.a> c = new HashMap();
    private Map<String, com.chartboost.sdk.Model.a> b = new HashMap();
    private Map<String, com.chartboost.sdk.Model.a> d = new HashMap();

    /* JADX INFO: Access modifiers changed from: protected */
    public interface a {
        void a(com.chartboost.sdk.Model.a aVar);

        void a(com.chartboost.sdk.Model.a aVar, CBError.CBImpressionError cBImpressionError);

        void b(com.chartboost.sdk.Model.a aVar);

        void c(com.chartboost.sdk.Model.a aVar);

        void d(com.chartboost.sdk.Model.a aVar);

        void e(com.chartboost.sdk.Model.a aVar);

        boolean f(com.chartboost.sdk.Model.a aVar);

        boolean g(com.chartboost.sdk.Model.a aVar);

        boolean h(com.chartboost.sdk.Model.a aVar);
    }

    protected abstract com.chartboost.sdk.Model.a a(String str, boolean z);

    protected abstract a c();

    protected abstract az e(com.chartboost.sdk.Model.a aVar);

    public abstract String e();

    protected abstract az l(com.chartboost.sdk.Model.a aVar);

    public void a(final String str) {
        final com.chartboost.sdk.Model.a aVarA = a(str, false);
        e eVarH = Chartboost.h();
        if (eVarH != null && eVarH.c()) {
            a(aVarA, CBError.CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
        } else if (!b(aVarA)) {
            a.post(new Runnable() { // from class: com.chartboost.sdk.d.1
                @Override // java.lang.Runnable
                public void run() {
                    if (d.this.c(str)) {
                        com.chartboost.sdk.Model.a aVarD = d.this.d(str);
                        if (aVarD.b == com.chartboost.sdk.Model.a.b.NONE) {
                            aVarD.b = com.chartboost.sdk.Model.a.b.CACHED;
                        }
                        d.this.g(aVarD);
                        return;
                    }
                    d.this.c(aVarA);
                }
            });
        }
    }

    public void b(String str) {
        if (c(str)) {
            com.chartboost.sdk.Model.a aVarD = d(str);
            if (aVarD != null) {
                b().d(aVarD);
                return;
            }
            return;
        }
        com.chartboost.sdk.Model.a aVarA = a(str, true);
        if (!b(aVarA)) {
            c(aVarA);
        }
    }

    protected void a(com.chartboost.sdk.Model.a aVar) {
        q(aVar);
        b().d(aVar);
        aVar.b = com.chartboost.sdk.Model.a.b.CACHED;
    }

    protected final boolean b(com.chartboost.sdk.Model.a aVar) {
        if (b().h(aVar) || CBUtility.a().getInt("cbPrefSessionCount", 0) != 1) {
            return false;
        }
        a(aVar, CBError.CBImpressionError.FIRST_SESSION_INTERSTITIALS_DISABLED);
        return true;
    }

    protected void c(com.chartboost.sdk.Model.a aVar) {
        if (f(aVar) && b().g(aVar) && !r(aVar)) {
            if (!aVar.f && aVar.c == com.chartboost.sdk.Model.a.c.MORE_APPS && b.w()) {
                aVar.i = true;
                Chartboost.a(aVar);
            }
            if (!d(aVar)) {
                o(aVar);
                return;
            }
            az azVarE = e(aVar);
            if (azVarE != null) {
                a(azVarE, aVar);
                com.chartboost.sdk.Tracking.a.a(e(), aVar.d, aVar.f);
            }
        }
    }

    protected boolean d(com.chartboost.sdk.Model.a aVar) {
        return true;
    }

    private final synchronized boolean r(com.chartboost.sdk.Model.a aVar) {
        boolean z = true;
        synchronized (this) {
            if (n(aVar) != null) {
                CBLogging.b(getClass().getSimpleName(), String.format("%s %s", "Request already in process for impression with location", aVar.d));
            } else {
                p(aVar);
                z = false;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.chartboost.sdk.Model.a aVar, CBError.CBImpressionError cBImpressionError) {
        o(aVar);
        e eVarH = Chartboost.h();
        if (eVarH != null && eVarH.b()) {
            eVarH.a(aVar, true);
        } else if (eVarH != null && eVarH.c()) {
            eVarH.b(aVar);
        }
        com.chartboost.sdk.Tracking.a.a(e(), aVar.d, cBImpressionError);
        b().a(aVar, cBImpressionError);
    }

    protected final boolean f(com.chartboost.sdk.Model.a aVar) {
        if (!b.p()) {
            a(aVar, CBError.CBImpressionError.SESSION_NOT_STARTED);
            return false;
        }
        e eVarH = Chartboost.h();
        if (!aVar.f && eVarH != null && eVarH.c()) {
            a(aVar, CBError.CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
            return false;
        }
        if (!ay.a().c()) {
            a(aVar, CBError.CBImpressionError.INTERNET_UNAVAILABLE);
            return false;
        }
        return true;
    }

    protected void g(com.chartboost.sdk.Model.a aVar) {
        o(aVar);
        boolean z = aVar.b != com.chartboost.sdk.Model.a.b.DISPLAYED;
        if (z) {
            if (b.a() != null && b.a().doesWrapperUseCustomShouldDisplayBehavior()) {
                this.d.put(aVar.d == null ? "" : aVar.d, aVar);
            }
            if (!b().f(aVar)) {
                return;
            }
        }
        a(aVar, z);
    }

    protected void b(String str, boolean z) {
        if (str == null) {
            str = "";
        }
        com.chartboost.sdk.Model.a aVar = this.d.get(str);
        if (aVar != null) {
            this.d.remove(str);
            if (z) {
                a(aVar, true);
            }
        }
    }

    private void a(com.chartboost.sdk.Model.a aVar, boolean z) {
        boolean z2 = aVar.b == com.chartboost.sdk.Model.a.b.CACHED;
        i(aVar);
        e eVarH = Chartboost.h();
        if (eVarH != null) {
            if (eVarH.b()) {
                eVarH.a(aVar, false);
            } else if (aVar.i && !z2 && aVar.b != com.chartboost.sdk.Model.a.b.DISPLAYED) {
                return;
            }
        }
        if (z) {
            h(aVar);
        } else {
            Chartboost.a(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h(com.chartboost.sdk.Model.a aVar) {
        Chartboost.a(aVar);
    }

    protected void i(com.chartboost.sdk.Model.a aVar) {
        j(aVar);
    }

    public void j(com.chartboost.sdk.Model.a aVar) {
        if (!aVar.g) {
            aVar.g = true;
            aVar.f = false;
            k(aVar);
            if (d(aVar.d) == aVar) {
                e(aVar.d);
            }
        }
    }

    protected void k(final com.chartboost.sdk.Model.a aVar) {
        az azVarL = l(aVar);
        azVarL.a(true);
        azVarL.b(d());
        if (aVar.f) {
            azVarL.a("cached", "1");
        } else {
            azVarL.a("cached", "0");
        }
        String strE = aVar.A().e("ad_id");
        if (strE != null) {
            azVarL.a("ad_id", (Object) strE);
        }
        azVarL.a("location", (Object) aVar.d);
        azVarL.a(new az.d() { // from class: com.chartboost.sdk.d.2
            @Override // com.chartboost.sdk.impl.az.c
            public void a(com.chartboost.sdk.Libraries.e.a aVar2, az azVar) {
                if (b.j() && !d.this.c(aVar.d)) {
                    d.this.b(aVar.d);
                }
            }
        });
        com.chartboost.sdk.Tracking.a.a(e(), aVar.d, aVar.t());
    }

    protected final boolean m(com.chartboost.sdk.Model.a aVar) {
        return TimeUnit.MILLISECONDS.toSeconds(new Date().getTime() - aVar.a.getTime()) >= 86400;
    }

    protected void a(com.chartboost.sdk.Model.a aVar, com.chartboost.sdk.Libraries.e.a aVar2) {
        if (aVar2.f("status") == 404) {
            CBLogging.b(aVar.c, "Invalid status code" + aVar2.a("status"));
            a(aVar, CBError.CBImpressionError.NO_AD_FOUND);
        } else if (aVar2.f("status") != 200) {
            CBLogging.b(aVar.c, "Invalid status code" + aVar2.a("status"));
            a(aVar, CBError.CBImpressionError.INVALID_RESPONSE);
        } else {
            com.chartboost.sdk.Tracking.a.c(e(), aVar.t(), aVar.f);
            aVar.a(aVar2, c.a().a);
        }
    }

    protected final void a(az azVar, final com.chartboost.sdk.Model.a aVar) {
        azVar.a("location", (Object) aVar.d);
        if (aVar.f) {
            azVar.a("cache", "1");
            azVar.b(true);
        }
        azVar.b(Chartboost.getValidContext());
        aVar.q = true;
        azVar.a(new az.c() { // from class: com.chartboost.sdk.d.3
            @Override // com.chartboost.sdk.impl.az.c
            public void a(com.chartboost.sdk.Libraries.e.a aVar2, az azVar2) {
                aVar.q = false;
                if (aVar2.b() || (!aVar2.a("assets").b() && !aVar2.a("interstitials").b())) {
                    d.this.a(aVar, CBError.CBImpressionError.NO_AD_FOUND);
                } else {
                    d.this.a(aVar, aVar2);
                }
            }

            @Override // com.chartboost.sdk.impl.az.c
            public void a(com.chartboost.sdk.Libraries.e.a aVar2, az azVar2, CBError cBError) {
                aVar.q = false;
                Object[] objArr = new Object[3];
                objArr[0] = azVar2.g();
                objArr[1] = cBError.a().name();
                objArr[2] = cBError.b() != null ? cBError.b() : "";
                CBLogging.d("network failure", String.format("request %s failed with error %s: %s", objArr));
                d.this.a(aVar, cBError.c());
            }
        });
    }

    protected synchronized com.chartboost.sdk.Model.a n(com.chartboost.sdk.Model.a aVar) {
        return aVar != null ? this.b.get(aVar.d) : null;
    }

    protected synchronized void o(com.chartboost.sdk.Model.a aVar) {
        if (aVar != null) {
            this.b.remove(aVar.d);
        }
    }

    protected synchronized void p(com.chartboost.sdk.Model.a aVar) {
        if (aVar != null) {
            this.b.put(aVar.d, aVar);
        }
    }

    public boolean c(String str) {
        return d(str) != null;
    }

    protected com.chartboost.sdk.Model.a d(String str) {
        com.chartboost.sdk.Model.a aVar = this.c.get(str);
        if (aVar == null || m(aVar)) {
            return null;
        }
        return aVar;
    }

    protected void e(String str) {
        this.c.remove(str);
    }

    protected void a() {
        this.c.clear();
    }

    protected void q(com.chartboost.sdk.Model.a aVar) {
        this.c.put(aVar.d, aVar);
    }

    protected final a b() {
        if (this.e == null) {
            this.e = c();
        }
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context d() {
        try {
            Method declaredMethod = Chartboost.class.getDeclaredMethod("getValidContext", new Class[0]);
            declaredMethod.setAccessible(true);
            return (Context) declaredMethod.invoke(null, new Object[0]);
        } catch (Exception e) {
            CBLogging.b(this, "Error encountered getting valid context", e);
            CBUtility.throwProguardError(e);
            return b.y();
        }
    }
}
