package com.chartboost.sdk.InPlay;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.e;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.c;
import com.chartboost.sdk.impl.ab;
import com.chartboost.sdk.impl.az;
import com.chartboost.sdk.impl.ba;
import com.chartboost.sdk.impl.bb;
import com.chartboost.sdk.impl.l;
import com.chartboost.sdk.impl.n;
import com.chartboost.sdk.impl.s;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static ArrayList<CBInPlay> b;
    private static a d;
    private static LinkedHashMap<String, Bitmap> e;
    private static final String a = a.class.getSimpleName();
    private static int c = 4;
    private static volatile boolean f = false;

    private a() {
        b = new ArrayList<>();
        e = new LinkedHashMap<>(c);
    }

    public static a a() {
        if (d == null) {
            synchronized (a.class) {
                if (d == null) {
                    d = new a();
                }
            }
        }
        return d;
    }

    public synchronized void a(String str) {
        if (!e() && !f) {
            a(str, true);
        }
    }

    private static boolean e() {
        return b.size() == c;
    }

    public synchronized boolean b(String str) {
        boolean z = true;
        synchronized (this) {
            if (b.size() > 0) {
                com.chartboost.sdk.Tracking.a.b("in-play", str, true);
            } else {
                z = false;
            }
        }
        return z;
    }

    public synchronized CBInPlay c(String str) {
        CBInPlay cBInPlay;
        cBInPlay = null;
        if (b.size() > 0) {
            cBInPlay = b.get(0);
            b.remove(0);
        }
        if (!e() && !f) {
            a(str, true);
        }
        if (cBInPlay == null) {
            CBLogging.a(a, "InPlay Object not available returning null :(");
        }
        return cBInPlay;
    }

    private void a(final String str, final boolean z) {
        f = true;
        az azVar = new az("/inplay/get");
        azVar.a("raw", (Object) true);
        azVar.a("cache", (Object) true);
        azVar.a(l.a.HIGH);
        azVar.b(true);
        azVar.a("location", (Object) str);
        azVar.a(com.chartboost.sdk.Model.b.d);
        azVar.a(new az.c() { // from class: com.chartboost.sdk.InPlay.a.1
            @Override // com.chartboost.sdk.impl.az.c
            public void a(e.a aVar, az azVar2) {
                boolean unused = a.f = false;
                if (aVar.c()) {
                    CBInPlay cBInPlay = new CBInPlay();
                    cBInPlay.a(aVar);
                    cBInPlay.b(aVar.e(AnalyticAttribute.EVENT_NAME_ATTRIBUTE));
                    if (!TextUtils.isEmpty(str)) {
                        cBInPlay.a(str);
                    }
                    e.a aVarA = aVar.a("icons");
                    if (aVarA.c() && !TextUtils.isEmpty(aVarA.e("lg"))) {
                        String strE = aVarA.e("lg");
                        if (a.e.get(strE) != null) {
                            a.this.a(cBInPlay, strE, true);
                            return;
                        }
                        b bVar = new b();
                        C0017a c0017a = new C0017a();
                        bVar.c = cBInPlay;
                        bVar.b = strE;
                        bVar.a = z;
                        ba.a(com.chartboost.sdk.b.y()).a().a((l) new ab(strE, bVar, 0, 0, null, c0017a));
                    }
                }
            }

            @Override // com.chartboost.sdk.impl.az.c
            public void a(e.a aVar, az azVar2, CBError cBError) {
                CBLogging.b(a.a, "InPlay cache call failed" + cBError);
                boolean unused = a.f = false;
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didFailToLoadInPlay(str, cBError != null ? cBError.c() : null);
                }
            }
        });
    }

    private class b implements n.b<Bitmap> {
        protected boolean a;
        protected String b;
        protected CBInPlay c;

        private b() {
        }

        @Override // com.chartboost.sdk.impl.n.b
        public void a(Bitmap bitmap) {
            a.e.put(this.b, bitmap);
            a.this.a(this.c, this.b, this.a);
        }
    }

    /* JADX INFO: renamed from: com.chartboost.sdk.InPlay.a$a, reason: collision with other inner class name */
    private class C0017a implements n.a {
        private C0017a() {
        }

        @Override // com.chartboost.sdk.impl.n.a
        public void a(s sVar) {
            CBLogging.b(a.a, "Bitmap download failed " + sVar.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(CBInPlay cBInPlay, String str, boolean z) {
        cBInPlay.a(e.get(str));
        b.add(cBInPlay);
        com.chartboost.sdk.a aVarG = com.chartboost.sdk.b.g();
        if (aVarG != null && z) {
            aVarG.didCacheInPlay(cBInPlay.getLocation());
        }
        if (!e() && !f) {
            a(cBInPlay.getLocation(), false);
        }
    }

    protected void a(CBInPlay cBInPlay) {
        e.a aVarA = cBInPlay.a();
        az azVar = new az("/inplay/show");
        azVar.a("inplay-dictionary", (Object) aVarA);
        azVar.a("location", (Object) cBInPlay.getLocation());
        azVar.a(true);
        azVar.s();
        String strE = null;
        if (cBInPlay.a().c()) {
            strE = aVarA.e("ad_id");
        }
        com.chartboost.sdk.Tracking.a.a("in-play", cBInPlay.getLocation(), strE);
    }

    protected void b(final CBInPlay cBInPlay) {
        String str;
        final e.a aVarA = cBInPlay.a();
        if (aVarA != null) {
            String strE = aVarA.e("link");
            String strE2 = aVarA.e("deep-link");
            if (TextUtils.isEmpty(strE2)) {
                str = strE;
            } else {
                try {
                    if (!bb.a(strE2)) {
                        strE2 = strE;
                    }
                    str = strE2;
                } catch (Exception e2) {
                    CBLogging.b(a, "Cannot open a url");
                    str = strE;
                }
            }
        } else {
            str = null;
        }
        c.b bVar = new c.b() { // from class: com.chartboost.sdk.InPlay.a.2
            @Override // com.chartboost.sdk.c.b
            public void a() {
                az azVarD = c.a().d();
                azVarD.a("location", (Object) cBInPlay.getLocation());
                azVarD.a("to", aVarA);
                azVarD.a("cgn", aVarA);
                azVarD.a("creative", aVarA);
                azVarD.a("ad_id", aVarA);
                azVarD.a("type", aVarA);
                azVarD.a("more_type", aVarA);
                azVarD.a(true);
                azVarD.s();
            }
        };
        c cVarA = c.a();
        if (!TextUtils.isEmpty(str)) {
            cVarA.b(null, str, bVar);
        } else {
            cVarA.b.a(null, false, str, CBError.CBClickError.URI_INVALID, bVar);
        }
    }

    public static void b() {
        if (e != null) {
            e.clear();
        }
        if (b != null) {
            b.clear();
        }
    }
}
