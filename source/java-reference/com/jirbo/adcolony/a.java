package com.jirbo.adcolony;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class a {
    static boolean A = false;
    static boolean B = false;
    static boolean C = false;
    static boolean M = false;
    static boolean N = false;
    static Activity P = null;
    static boolean Q = false;
    static boolean R = false;
    static h S = null;
    static AdColonyAd T = null;
    static ADCVideo U = null;
    static ADCVideo V = null;
    static HandlerC0299a W = null;
    static b X = null;
    static boolean Y = false;
    static boolean Z = false;
    public static final boolean a = false;
    static boolean aa = false;
    static boolean ab = false;
    static int ac = 0;
    static String ad = null;
    static String ae = null;
    static String af = null;
    static String ag = null;
    static String ah = null;
    static boolean ak = false;
    static long al = 0;
    static HashMap ar = null;
    public static final boolean b = false;
    public static final boolean c = false;
    public static final boolean d = false;
    public static final int g = 0;
    public static final int h = 1;
    public static final int i = 2;
    public static final int j = 3;
    static final String k = "AdColony";
    static boolean m;
    static boolean o;
    static boolean p;
    static double q;
    static boolean r;
    static boolean s;
    static long t;
    static long u;
    static AdColonyAd v;
    static boolean w;
    static boolean x;
    static boolean y;
    static boolean z;
    public static String e = null;
    public static final String f = null;
    static d l = new d();
    static int n = 2;
    static boolean D = false;
    static boolean E = true;
    static int F = 0;
    static double G = 1.0d;
    static boolean H = false;
    static boolean I = false;
    static boolean J = false;
    static boolean K = false;
    static boolean L = true;
    static boolean O = false;
    static ArrayList<String> ai = new ArrayList<>();
    static ADCData.c aj = new ADCData.c();
    static int am = 0;
    static ArrayList<Bitmap> an = new ArrayList<>();
    static ArrayList<AdColonyV4VCListener> ao = new ArrayList<>();
    static ArrayList<AdColonyAdAvailabilityListener> ap = new ArrayList<>();
    static ArrayList<AdColonyNativeAdView> aq = new ArrayList<>();

    a() {
    }

    static void a(Activity activity) {
        if (activity != P && activity != null) {
            P = activity;
            W = new HandlerC0299a();
            X = new b();
            if (!s) {
                new p.a();
            }
        }
    }

    static void b(Activity activity) {
        x = false;
        a(activity);
        S = null;
        m = g.i();
        if (Q) {
            Q = false;
            w = false;
            l = new d();
        }
    }

    static boolean a() {
        return P == null;
    }

    static Activity b() {
        if (P == null) {
            throw new AdColonyException("AdColony.configure() must be called before any other AdColony methods. If you have called AdColony.configure(), the Activity reference you passed in via AdColony.configure()/AdColony.resume() is null OR you have not called AdColony.resume() as appropriate.");
        }
        return P;
    }

    static boolean c() {
        return Q || y || !w;
    }

    static boolean d() {
        return (!w || Q || y) ? false : true;
    }

    static void a(String str) {
        Q = true;
        e(str);
    }

    static void a(RuntimeException runtimeException) {
        Q = true;
        e(runtimeException.toString());
        runtimeException.printStackTrace();
    }

    static void e() {
        b();
    }

    static void a(int i2) {
        n = i2;
        l.a.f = i2 <= 0;
        l.b.f = i2 <= 1;
        l.c.f = i2 <= 2;
        l.d.f = i2 <= 3;
        if (i2 <= 0) {
            b("DEVELOPER LOGGING ENABLED");
        }
        if (i2 <= 1) {
            c("DEBUG LOGGING ENABLED");
        }
    }

    static boolean b(int i2) {
        return n <= i2;
    }

    static boolean f() {
        return n <= 0;
    }

    static boolean g() {
        return n <= 1;
    }

    static void a(int i2, String str) {
        if (n <= i2) {
            switch (i2) {
                case 0:
                case 1:
                    Log.d(k, str);
                    break;
                case 2:
                    Log.i(k, str);
                    break;
                case 3:
                    Log.e(k, str);
                    break;
            }
        }
    }

    static void b(String str) {
        a(0, str);
    }

    static void c(String str) {
        a(1, str);
    }

    static void d(String str) {
        a(2, str);
    }

    static void e(String str) {
        a(3, str);
    }

    static void f(String str) {
        Toast.makeText(b(), str, 0).show();
    }

    static double g(String str) {
        return l.a(str);
    }

    static int h(String str) {
        return l.b(str);
    }

    static boolean i(String str) {
        return l.c(str);
    }

    static String j(String str) {
        return l.d(str);
    }

    static void k(String str) {
        l.a(str, (String) null);
    }

    static void a(String str, String str2) {
        l.a(str, str2);
    }

    static void a(String str, AdColonyAd adColonyAd) {
        l.a(str, (String) null, adColonyAd);
    }

    static void a(String str, String str2, AdColonyAd adColonyAd) {
        l.a(str, str2, adColonyAd);
    }

    static void h() {
        boolean zA;
        boolean zB;
        if (l != null && ap.size() != 0 && ar != null) {
            for (Map.Entry entry : ar.entrySet()) {
                boolean zBooleanValue = ((Boolean) entry.getValue()).booleanValue();
                if (AdColony.isZoneV4VC((String) entry.getKey())) {
                    zA = l.b((String) entry.getKey(), true, false);
                } else {
                    zA = l.a((String) entry.getKey(), true, false);
                }
                if (AdColony.isZoneNative((String) entry.getKey()) && P != null) {
                    zB = new AdColonyNativeAdView(b(), (String) entry.getKey(), 300, true).b(true);
                } else {
                    zB = P == null ? false : zA;
                }
                if (zBooleanValue != zB) {
                    ar.put(entry.getKey(), Boolean.valueOf(zB));
                    for (int i2 = 0; i2 < ap.size(); i2++) {
                        ap.get(i2).onAdColonyAdAvailabilityChange(zB, (String) entry.getKey());
                    }
                }
            }
        }
    }

    static void a(AdColonyAd adColonyAd) {
        v = adColonyAd;
    }

    static void a(AdColonyNativeAdView adColonyNativeAdView) {
        aq.add(adColonyNativeAdView);
    }

    /* JADX INFO: renamed from: com.jirbo.adcolony.a$a, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes2.dex */
    static class HandlerC0299a extends Handler {
        AdColonyAd a;

        HandlerC0299a() {
        }

        public void a(AdColonyAd adColonyAd) {
            if (adColonyAd == null) {
                this.a = a.T;
            } else {
                this.a = adColonyAd;
            }
            sendMessage(obtainMessage(1));
        }

        public void b(AdColonyAd adColonyAd) {
            if (adColonyAd == null) {
                this.a = a.T;
            } else {
                this.a = adColonyAd;
            }
            sendMessage(obtainMessage(0));
        }

        @Override // android.os.Handler
        public void handleMessage(Message m) {
            switch (m.what) {
                case 0:
                    a.a("skip", this.a);
                    if (a.T != null) {
                        a.T.f = 1;
                        a.T.a();
                    }
                    break;
                case 1:
                    ADCData.g gVar = new ADCData.g();
                    if (a.V.H.Q) {
                        gVar.b("html5_endcard_loading_started", a.V.k);
                    }
                    if (a.V.H.Q) {
                        gVar.b("html5_endcard_loading_finished", a.V.l);
                    }
                    if (a.V.H.Q) {
                        gVar.b("html5_endcard_loading_time", a.V.p);
                    }
                    if (a.V.H.Q) {
                        gVar.b("html5_endcard_loading_timeout", a.V.m);
                    }
                    if (a.V.q < 60000.0d) {
                        gVar.b("endcard_time_spent", a.V.q);
                    }
                    gVar.b("endcard_dissolved", a.V.n);
                    ADCVideo aDCVideo = a.V;
                    gVar.b("replay", ADCVideo.e);
                    gVar.b("reward", a.V.o);
                    a.l.d.a("continue", gVar, this.a);
                    if (a.T != null) {
                        a.T.f = 4;
                        a.T.a();
                    }
                    break;
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message m) {
            String str = (String) m.obj;
            int i = m.what;
            boolean z = str != null;
            if (!z) {
                str = "";
            }
            AdColonyV4VCReward adColonyV4VCReward = new AdColonyV4VCReward(z, str, i);
            for (int i2 = 0; i2 < a.ao.size(); i2++) {
                a.ao.get(i2).onAdColonyV4VCReward(adColonyV4VCReward);
            }
        }

        public void a(boolean z, String str, int i) {
            if (!z) {
                str = null;
            }
            sendMessage(obtainMessage(i, str));
        }
    }

    static void a(j jVar) {
        l.a(jVar);
    }
}
