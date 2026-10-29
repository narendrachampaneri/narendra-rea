package com.chartboost.sdk.impl;

import android.content.Context;
import android.os.CountDownTimer;
import android.support.v7.media.MediaRouteProviderProtocol;
import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.CBError;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX INFO: loaded from: classes.dex */
public class ba implements Observer {
    private static ba b;
    private static ConcurrentHashMap<az, File> e;
    private static ConcurrentHashMap<az, File> f;
    private static List<Runnable> h = new ArrayList();
    private ay a;
    private m c;
    private com.chartboost.sdk.Libraries.h d = new com.chartboost.sdk.Libraries.h("CBRequestManager", false);
    private ConcurrentHashMap<String, b> g;
    private CountDownTimer i;

    public enum a {
        ARRAY_OF_DICTIONARY
    }

    public static ba a(Context context) {
        if (b == null) {
            synchronized (ba.class) {
                if (b == null) {
                    b = new ba(context);
                }
            }
        }
        return b;
    }

    private ba(Context context) {
        this.a = null;
        this.c = ad.a(context.getApplicationContext());
        this.a = ay.a();
        e = new ConcurrentHashMap<>();
        f = new ConcurrentHashMap<>();
        this.g = new ConcurrentHashMap<>();
        m();
        this.a.addObserver(this);
    }

    public m a() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(az azVar, i iVar, CBError cBError, boolean z) {
        if (azVar != null) {
            com.chartboost.sdk.Libraries.e.b[] bVarArr = new com.chartboost.sdk.Libraries.e.b[5];
            bVarArr[0] = com.chartboost.sdk.Libraries.e.a("endpoint", azVar.g());
            bVarArr[1] = com.chartboost.sdk.Libraries.e.a("statuscode", iVar == null ? "None" : Integer.valueOf(iVar.a));
            bVarArr[2] = com.chartboost.sdk.Libraries.e.a(MediaRouteProviderProtocol.SERVICE_DATA_ERROR, cBError == null ? "None" : cBError.a());
            bVarArr[3] = com.chartboost.sdk.Libraries.e.a("errorDescription", cBError == null ? "None" : cBError.b());
            bVarArr[4] = com.chartboost.sdk.Libraries.e.a("retryCount", Integer.valueOf(azVar.o()));
            com.chartboost.sdk.Tracking.a.a("request_manager", "request", z ? "success" : "failure", (String) null, (String) null, (String) null, com.chartboost.sdk.Libraries.e.a(bVarArr).e());
        }
    }

    protected void a(az azVar, az.c cVar) {
        if (azVar != null) {
            if (!this.a.c()) {
                CBError cBError = new CBError(CBError.a.INTERNET_UNAVAILABLE, "Internet Unavailable");
                azVar.d(false);
                if (!azVar.h()) {
                    if (azVar.p()) {
                        azVar.c(false);
                        a(azVar);
                    }
                    a(azVar, null, cBError, false);
                    if (cVar != null) {
                        CBLogging.b("Network failure", String.format("request %s failed with error : %s", azVar.g(), cBError.b()));
                        cVar.a(null, azVar, cBError);
                        return;
                    }
                    return;
                }
                return;
            }
            if (!azVar.h() && azVar.p()) {
                azVar.c(false);
                a(azVar);
            }
            a(new e(azVar));
        }
    }

    public void a(Runnable runnable) {
        boolean z = false;
        synchronized (com.chartboost.sdk.Libraries.c.class) {
            com.chartboost.sdk.Libraries.c.a aVarC = com.chartboost.sdk.Libraries.c.c();
            if (aVarC == com.chartboost.sdk.Libraries.c.a.PRELOAD || aVarC == com.chartboost.sdk.Libraries.c.a.LOADING) {
                h.add(runnable);
            } else {
                z = true;
            }
        }
        if (z) {
            ax.a().execute(runnable);
        }
    }

    public static void b() {
        ArrayList arrayList = new ArrayList();
        synchronized (com.chartboost.sdk.Libraries.c.class) {
            arrayList.addAll(h);
            h.clear();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ax.a().execute((Runnable) it.next());
        }
    }

    private class e implements Runnable {
        private az b;

        public e(az azVar) {
            this.b = azVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.b.a(com.chartboost.sdk.b.y());
            this.b.c();
            String str = String.format("%s%s", "https://live.chartboost.com", this.b.e());
            this.b.d();
            this.b.a();
            a aVar = new a(1, str, this.b);
            aVar.a((p) new com.chartboost.sdk.impl.d(30000, 0, 0.0f));
            ba.this.c.a((l) aVar);
        }

        private class a extends l<d> {
            private az b;

            public a(int i, String str, az azVar) {
                super(i, str, null);
                this.b = azVar;
            }

            @Override // com.chartboost.sdk.impl.l
            public String p() {
                String strB = this.b.b();
                if (strB == null) {
                    return "application/json; charset=utf-8";
                }
                return strB;
            }

            @Override // com.chartboost.sdk.impl.l
            public byte[] q() {
                return (this.b.i() == null ? "" : this.b.i().toString()).getBytes();
            }

            @Override // com.chartboost.sdk.impl.l
            public l.a s() {
                return this.b.n();
            }

            @Override // com.chartboost.sdk.impl.l
            public Map<String, String> i() throws com.chartboost.sdk.impl.a {
                HashMap map = new HashMap();
                for (Map.Entry<String, Object> entry : this.b.j().entrySet()) {
                    map.put(entry.getKey(), entry.getValue() != null ? entry.getValue().toString() : null);
                }
                return map;
            }

            @Override // com.chartboost.sdk.impl.l
            protected n<d> a(i iVar) {
                com.chartboost.sdk.Libraries.e.a aVarA;
                com.chartboost.sdk.Libraries.e.a aVar;
                CBError cBError;
                CBError cBError2;
                int i = iVar.a;
                if (i > 300 && i < 200) {
                    CBLogging.d("CBRequestManager", "Request " + this.b.g() + " failed. Response code: " + i);
                    cBError = new CBError(CBError.a.NETWORK_FAILURE, "Request failed. Response code: " + i + " is not valid ");
                    aVar = null;
                } else {
                    try {
                        byte[] bArr = iVar.b;
                        String str = bArr != null ? new String(bArr) : null;
                        if (str != null) {
                            aVarA = com.chartboost.sdk.Libraries.e.a.a(new JSONObject(new JSONTokener(str)));
                            try {
                                com.chartboost.sdk.Libraries.g.a aVarL = this.b.l();
                                CBLogging.c("CBRequestManager", "Request " + this.b.g() + " succeeded. Response code: " + i + ", body: " + str);
                                if (aVarA.f("status") == 404) {
                                    cBError2 = new CBError(CBError.a.HTTP_NOT_FOUND, "404 error from server");
                                } else {
                                    StringBuilder sb = new StringBuilder();
                                    if (aVarL == null || aVarL.a(aVarA, sb)) {
                                        cBError2 = null;
                                    } else {
                                        cBError2 = new CBError(CBError.a.UNEXPECTED_RESPONSE, "Json response failed validation");
                                        CBLogging.b("CBRequestManager", "Json response failed validation: " + sb.toString());
                                    }
                                }
                                cBError = cBError2;
                                aVar = aVarA;
                            } catch (Exception e) {
                                e = e;
                                CBError cBError3 = new CBError(CBError.a.MISCELLANEOUS, e.getLocalizedMessage());
                                aVar = aVarA;
                                cBError = cBError3;
                            }
                        } else {
                            cBError = new CBError(CBError.a.INVALID_RESPONSE, "Response is not a valid json object");
                            aVar = null;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        aVarA = null;
                    }
                }
                if (aVar != null && cBError == null) {
                    return n.a(new d(com.chartboost.sdk.Libraries.e.a.a(aVar), iVar), null);
                }
                return n.a(new c(cBError));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.chartboost.sdk.impl.l
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void b(d dVar) {
                if (e.this.b.r() != null && dVar != null) {
                    e.this.b.r().a(dVar.a, e.this.b);
                }
                if (!e.this.b.h()) {
                    ba.this.d.c((File) ba.e.get(e.this.b));
                    ba.e.remove(e.this.b);
                    b bVar = (b) ba.this.g.get(e.this.b.g());
                    if (bVar != null && !TextUtils.isEmpty(bVar.b()) && bVar.c() && bVar.h == e.this.b) {
                        bVar.d();
                        bVar.b(null);
                    }
                    e.this.b.d(false);
                    ba.this.a(e.this.b, dVar.b, null, true);
                    return;
                }
                com.chartboost.sdk.Tracking.a.a().l().c((File) ba.f.get(e.this.b));
                com.chartboost.sdk.Tracking.a.a().p();
                CBLogging.a("CBRequestManager", "### Removing track events sent to server...");
                ba.f.remove(e.this.b);
            }

            @Override // com.chartboost.sdk.impl.l
            public void b(s sVar) {
                CBError cBError;
                if (e.this.b != null && !com.chartboost.sdk.b.l()) {
                    if (e.this.b.h() || !ba.e.containsKey(e.this.b)) {
                        if (!ba.f.isEmpty() && ba.f.containsKey(e.this.b)) {
                            com.chartboost.sdk.Tracking.a.a().l().c((File) ba.f.get(e.this.b));
                            ba.f.remove(e.this.b);
                        }
                    } else {
                        ba.this.d.c((File) ba.e.get(e.this.b));
                        ba.e.remove(e.this.b);
                    }
                }
                if (sVar != null) {
                    if (!(sVar instanceof c)) {
                        cBError = new CBError(CBError.a.NETWORK_FAILURE, sVar.getMessage());
                    } else {
                        cBError = ((c) sVar).b;
                    }
                    com.chartboost.sdk.Libraries.e.a aVarJ = com.chartboost.sdk.Libraries.e.a.a;
                    if (sVar != null) {
                        try {
                            if (sVar.a != null && sVar.a.b != null && sVar.a.b.length > 0) {
                                aVarJ = com.chartboost.sdk.Libraries.e.a.j(new String(sVar.a.b));
                            }
                        } catch (Exception e) {
                            CBLogging.d("CBRequestManager", "unable to read error json", e);
                        }
                    }
                    if (sVar.a == null || sVar.a.a != 200) {
                        if (e.this.b.r() != null) {
                            e.this.b.r().a(aVarJ, e.this.b, cBError);
                        }
                        if (!e.this.b.h()) {
                            e.this.b.d(false);
                            ba.this.a(e.this.b, sVar.a, cBError, false);
                            return;
                        } else {
                            ba.f.remove(e.this.b);
                            return;
                        }
                    }
                    b(new d(aVarJ, sVar.a));
                }
            }
        }
    }

    public static class c extends s {
        private CBError b;

        public c(CBError cBError) {
            this.b = cBError;
        }
    }

    public static class d {
        private com.chartboost.sdk.Libraries.e.a a;
        private i b;

        public d(com.chartboost.sdk.Libraries.e.a aVar, i iVar) {
            this.a = aVar;
            this.b = iVar;
        }
    }

    public synchronized void c() {
        synchronized (this) {
            if (e != null && !e.isEmpty()) {
                for (az azVar : e.keySet()) {
                    if (azVar != null && !azVar.q()) {
                        azVar.a(azVar.o() + 1);
                        azVar.a(azVar.r());
                    }
                }
            } else {
                String[] strArrA = this.d.a();
                if (strArrA != null) {
                    for (String str : strArrA) {
                        az azVarA = a(str);
                        if (azVarA != null) {
                            e.put(azVarA, this.d.d(str));
                            azVarA.c(false);
                            azVarA.a(azVarA.o() + 1);
                            azVarA.a(azVarA.r());
                        }
                    }
                }
            }
            e();
            f();
        }
    }

    public static synchronized void d() {
        String[] strArrA;
        try {
            com.chartboost.sdk.Libraries.h hVarC = com.chartboost.sdk.Libraries.h.c();
            if (hVarC == null) {
                strArrA = null;
            } else {
                strArrA = hVarC.a();
            }
            if (strArrA != null && strArrA.length > 0) {
                for (String str : strArrA) {
                    com.chartboost.sdk.Libraries.e.a aVarA = hVarC.a(str);
                    if (aVarA.c()) {
                        hVarC.b(str);
                        az azVarA = az.a(aVarA);
                        if (azVarA != null) {
                            azVarA.a(true);
                            azVarA.s();
                        } else {
                            CBLogging.b("CBRequestManager", "Error processing video completeion event");
                        }
                    }
                }
            }
        } catch (Exception e2) {
            CBLogging.b("CBRequestManager", "Error executing saved requests", e2);
        }
    }

    public void e() {
        String[] strArrA;
        com.chartboost.sdk.Tracking.a aVarA = com.chartboost.sdk.Tracking.a.a();
        if (!com.chartboost.sdk.b.m()) {
            if (f != null && !f.isEmpty()) {
                f.clear();
            }
            aVarA.l().b();
            return;
        }
        synchronized (this) {
            if (f.isEmpty()) {
                try {
                    com.chartboost.sdk.Libraries.h hVarL = aVarA.l();
                    if (hVarL == null) {
                        strArrA = null;
                    } else {
                        strArrA = hVarL.a();
                    }
                    if (strArrA != null) {
                        for (String str : strArrA) {
                            if (!aVarA.b(str)) {
                                com.chartboost.sdk.Libraries.e.a aVarA2 = hVarL.a(str);
                                if (aVarA2.c()) {
                                    CBLogging.a("CBRequestManager", "### Flushing out " + str + "track events from cache to server...");
                                    az azVarA = aVarA.a(aVarA2);
                                    f.put(azVarA, hVarL.d(str));
                                    azVarA.s();
                                }
                            }
                        }
                    }
                } catch (Exception e2) {
                    CBLogging.b("CBRequestManager", "Error executing saved requests", e2);
                }
            } else {
                for (az azVar : f.keySet()) {
                    if (azVar != null && !azVar.q()) {
                        azVar.a(azVar.o() + 1);
                        azVar.a(azVar.r());
                    }
                }
            }
        }
    }

    private void a(az azVar) {
        File fileA;
        if (azVar != null) {
            if (!azVar.k()) {
                fileA = null;
            } else {
                b bVar = this.g.get(azVar.g());
                if (bVar == null || TextUtils.isEmpty(bVar.b()) || !bVar.c()) {
                    fileA = this.d.a((File) null, azVar.t());
                } else {
                    azVar = bVar.a(azVar);
                    fileA = this.d.a(bVar.a(), azVar.t());
                }
            }
            if ((azVar.k() || azVar.m()) && fileA != null) {
                e.put(azVar, fileA);
            }
        }
    }

    private az a(String str) {
        com.chartboost.sdk.Libraries.e.a aVarA;
        if (TextUtils.isEmpty(str) || (aVarA = this.d.a(str)) == null) {
            return null;
        }
        return az.a(aVarA);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.chartboost.sdk.impl.ba$1] */
    public void f() {
        if (this.i == null) {
            this.i = new CountDownTimer(240000L, 1000L) { // from class: com.chartboost.sdk.impl.ba.1
                @Override // android.os.CountDownTimer
                public void onTick(long millisUntilFinished) {
                }

                @Override // android.os.CountDownTimer
                public void onFinish() {
                    ba.this.c();
                }
            }.start();
        }
    }

    public void g() {
        CBLogging.a("CBRequestManager", "Timer stopped:");
        if (this.i != null) {
            this.i.cancel();
            this.i = null;
        }
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object data) {
        if (this.i != null) {
            g();
        }
        c();
    }

    public static synchronized boolean h() {
        return (f == null || f.isEmpty()) ? false : true;
    }

    public ConcurrentHashMap<az, File> i() {
        return e;
    }

    public com.chartboost.sdk.Libraries.h j() {
        return this.d;
    }

    private void m() {
        b bVar = new b();
        bVar.a("track_info");
        bVar.a(true);
        this.g.put("/post-install-event/".concat("tracking"), bVar);
    }

    private class b {
        private JSONArray g;
        private az h;
        private String b = null;
        private int c = 50;
        private boolean f = false;
        private String d = Long.toString(System.nanoTime());
        private a e = a.ARRAY_OF_DICTIONARY;

        public b() {
            this.g = null;
            this.g = new JSONArray();
        }

        public String a() {
            return this.d;
        }

        public void a(String str) {
            this.b = str;
        }

        public String b() {
            return this.b;
        }

        public boolean c() {
            return this.f;
        }

        public void a(boolean z) {
            this.f = z;
        }

        public void d() {
            this.g = new JSONArray();
        }

        public synchronized az a(az azVar) {
            com.chartboost.sdk.Libraries.e.a aVarI = azVar.i();
            if (aVarI.c()) {
                com.chartboost.sdk.Libraries.e.a aVarA = aVarI.a(this.b);
                if (!aVarA.b() && this.e == a.ARRAY_OF_DICTIONARY) {
                    if (ba.this.a.c() || (this.h != null && this.h.q())) {
                        this.d = Long.toString(System.nanoTime());
                        azVar.a(this.b, new JSONArray().put(aVarA.e()));
                    } else {
                        if (this.g.length() == this.c) {
                            this.d = Long.toString(System.nanoTime());
                            this.g = new JSONArray();
                        }
                        this.g.put(aVarA.e());
                        if (this.h != null) {
                            ba.e.remove(this.h);
                        }
                        azVar.a(this.b, this.g);
                        this.h = azVar;
                        azVar = this.h;
                    }
                }
            }
            return azVar;
        }

        public void b(az azVar) {
            this.h = azVar;
        }
    }
}
