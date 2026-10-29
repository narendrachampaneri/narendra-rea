package com.chartboost.sdk.impl;

import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.CBError;
import com.google.android.exoplayer.util.MimeTypes;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import java.io.File;
import java.util.HashMap;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class bd {
    public static bd a;
    private static com.chartboost.sdk.Libraries.h c;
    private static m d;
    private static ConcurrentHashMap<Integer, b> e;
    private static a f;
    private static a g;
    private static final String b = bd.class.getSimpleName();
    private static AtomicInteger h = new AtomicInteger();
    private static AtomicInteger i = new AtomicInteger();
    private static boolean j = true;
    private static boolean k = false;
    private static Observer l = new Observer() { // from class: com.chartboost.sdk.impl.bd.1
        @Override // java.util.Observer
        public void update(Observable observable, Object data) {
            bd.l();
        }
    };
    private static az.c m = new az.c() { // from class: com.chartboost.sdk.impl.bd.2
        @Override // com.chartboost.sdk.impl.az.c
        public void a(com.chartboost.sdk.Libraries.e.a aVar, az azVar) {
            synchronized (bd.class) {
                a unused = bd.f = a.kCBIntial;
                if (aVar != null) {
                    CBLogging.a(bd.b, "Got Video list from server :)" + aVar);
                    bd.a(aVar.a("videos"));
                }
            }
        }

        @Override // com.chartboost.sdk.impl.az.c
        public void a(com.chartboost.sdk.Libraries.e.a aVar, az azVar, CBError cBError) {
            a unused = bd.f = a.kCBIntial;
        }
    };

    public enum a {
        kCBIntial,
        kCBInProgress
    }

    private bd() {
    }

    public static synchronized bd a() {
        if (a == null) {
            a = new bd();
            k();
        }
        return a;
    }

    private static synchronized void k() {
        if (!k) {
            k = true;
            c = new com.chartboost.sdk.Libraries.h("CBVideoDirectory", true);
            e = new ConcurrentHashMap<>();
            f = a.kCBIntial;
            g = a.kCBIntial;
            d = ba.a(com.chartboost.sdk.b.y()).a();
            ay.a().addObserver(l);
        }
    }

    public static synchronized void b() {
        synchronized (bd.class) {
            if (!k) {
                k();
            }
            if (com.chartboost.sdk.b.x()) {
                CBLogging.a(b, "Prefetching the Video list");
                if (a.kCBInProgress != f && a.kCBInProgress != g) {
                    if (e != null && !e.isEmpty()) {
                        e.clear();
                        d.a(Integer.valueOf(l.hashCode()));
                        g = a.kCBIntial;
                        CBLogging.a(b, "prefetchVideo: Clearing all volley request for new start");
                    }
                    f = a.kCBInProgress;
                    JSONArray jSONArray = new JSONArray();
                    if (c() != null) {
                        for (String str : c()) {
                            jSONArray.put(str);
                        }
                    }
                    com.chartboost.sdk.Tracking.a.d();
                    i.set(0);
                    h.set(0);
                    az azVar = new az("/api/video-prefetch");
                    azVar.a("local-videos", jSONArray);
                    azVar.a(com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a("status", com.chartboost.sdk.Libraries.a.a), com.chartboost.sdk.Libraries.g.a("videos", com.chartboost.sdk.Libraries.g.b(com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a(MimeTypes.BASE_TYPE_VIDEO, com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a(AnalyticsEvent.EVENT_ID, com.chartboost.sdk.Libraries.g.a()))))));
                    azVar.b(true);
                    azVar.a(m);
                }
            }
        }
    }

    public static synchronized void a(com.chartboost.sdk.Libraries.e.a aVar) {
        synchronized (bd.class) {
            com.chartboost.sdk.Tracking.a.e();
            if (com.chartboost.sdk.b.x() && aVar.c()) {
                HashMap map = new HashMap();
                HashMap map2 = new HashMap();
                String[] strArrC = c();
                for (int i2 = 0; i2 < aVar.o(); i2++) {
                    com.chartboost.sdk.Libraries.e.a aVarC = aVar.c(i2);
                    if (!aVarC.b(AnalyticsEvent.EVENT_ID) && !aVarC.b(MimeTypes.BASE_TYPE_VIDEO)) {
                        String strE = aVarC.e(AnalyticsEvent.EVENT_ID);
                        String strE2 = aVarC.e(MimeTypes.BASE_TYPE_VIDEO);
                        if (!c.c(strE) && !TextUtils.isEmpty(strE) && !TextUtils.isEmpty(strE2) && map2.get(strE) == null) {
                            map2.put(strE, strE2);
                            i.incrementAndGet();
                        }
                        map.put(strE, strE2);
                    }
                }
                if (j) {
                    j = false;
                }
                CBLogging.a(b, "Synchronizing videos with the list got from the server");
                a(map, strArrC);
                if (!map2.isEmpty()) {
                    a((HashMap<String, String>) map2);
                    g = a.kCBInProgress;
                }
            }
        }
    }

    private static synchronized void a(HashMap<String, String> map, String[] strArr) {
        File fileD;
        if (map != null && strArr != null) {
            for (String str : strArr) {
                if (!map.containsKey(str) && (fileD = c.d(str)) != null && !str.equals(".nomedia")) {
                    CBLogging.e(b, "Deleting video: " + fileD.getAbsolutePath());
                    c.c(fileD);
                }
            }
        }
    }

    private static synchronized void a(HashMap<String, String> map) {
        for (String str : map.keySet()) {
            c cVar = new c();
            b bVar = new b(0, map.get(str), cVar, str);
            bVar.a((p) new d(30000, 0, 0.0f));
            cVar.a = bVar;
            bVar.a(Integer.valueOf(l.hashCode()));
            com.chartboost.sdk.Tracking.a.a(map.get(str), str);
            d.a((l) bVar);
            CBLogging.a(b, "Downloading video:" + map.get(str));
        }
    }

    public static String[] c() {
        if (c == null) {
            return null;
        }
        return c.a();
    }

    private static class b extends l<Object> {
        private String a;
        private long b;
        private String c;

        public b(int i, String str, c cVar, String str2) {
            super(i, str, cVar);
            this.a = str2;
            this.c = str;
            this.b = System.currentTimeMillis();
        }

        @Override // com.chartboost.sdk.impl.l
        protected void b(Object obj) {
        }

        @Override // com.chartboost.sdk.impl.l
        protected n<Object> a(i iVar) {
            if (iVar != null) {
                com.chartboost.sdk.Tracking.a.d(this.a, Long.valueOf((System.currentTimeMillis() - this.b) / 1000).toString(), this.c);
                CBLogging.a(bd.b, "Video download Success. Storing video in cache" + this.a);
                bd.c.a(this.a, iVar.b);
                com.chartboost.sdk.Tracking.a.e("cache", "hit", this.a);
            }
            synchronized (bd.a()) {
                if (bd.h.get() == bd.i.get()) {
                    bd.h.set(0);
                    bd.i.set(0);
                    a unused = bd.g = a.kCBIntial;
                    bd.e.clear();
                }
            }
            return n.a(null, null);
        }

        @Override // com.chartboost.sdk.impl.l
        public l.a s() {
            return l.a.LOW;
        }
    }

    private static class c implements n.a {
        private b a;

        private c() {
        }

        @Override // com.chartboost.sdk.impl.n.a
        public void a(s sVar) {
            if ((sVar instanceof r) || (sVar instanceof q) || (sVar instanceof h)) {
                if (this.a != null) {
                    com.chartboost.sdk.Tracking.a.a(this.a.a, Long.valueOf((System.currentTimeMillis() - this.a.b) / 1000).toString(), this.a.c, sVar.getMessage());
                    com.chartboost.sdk.Tracking.a.e("cache", "miss", this.a.a);
                }
                bd.e.put(Integer.valueOf(this.a.hashCode()), this.a);
                CBLogging.b(bd.b, "Error downloading video " + sVar.getMessage() + this.a.a);
            }
        }
    }

    public static synchronized void d() {
        d.a(Integer.valueOf(l.hashCode()));
    }

    public static String a(String str) {
        if (c.c(str)) {
            return c.d(str).getPath();
        }
        return null;
    }

    public static String b(com.chartboost.sdk.Libraries.e.a aVar) {
        if (aVar == null) {
            return null;
        }
        com.chartboost.sdk.Libraries.e.a aVarA = aVar.a("assets");
        if (aVarA.b()) {
            return null;
        }
        com.chartboost.sdk.Libraries.e.a aVarA2 = aVarA.a(CBUtility.c().b() ? "video-portrait" : "video-landscape");
        if (aVarA2.b()) {
            return null;
        }
        String strE = aVarA2.e(AnalyticsEvent.EVENT_ID);
        if (TextUtils.isEmpty(strE)) {
            return null;
        }
        return a(strE);
    }

    public static void b(String str) {
        if (c.c(str)) {
            c.b(str);
        }
    }

    public static boolean c(com.chartboost.sdk.Libraries.e.a aVar) {
        return !TextUtils.isEmpty(b(aVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void l() {
        CBLogging.a(b, "Process Request called");
        if (f != a.kCBInProgress && g != a.kCBInProgress && ((g == a.kCBIntial && e != null) || e.size() > 0)) {
            for (Integer num : e.keySet()) {
                g = a.kCBInProgress;
                d.a((l) e.get(num));
                e.remove(num);
            }
        }
    }
}
