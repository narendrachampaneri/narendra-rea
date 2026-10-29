package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.sdk.AppLovinLogger;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
abstract class bq implements w, AppLovinNativeAdLoadListener {
    protected final AppLovinSdkImpl a;
    protected final AppLovinLogger b;
    protected final Object c = new Object();
    protected final Map d = a();
    protected final Map e = new HashMap();
    protected final Set f = new HashSet();

    bq(AppLovinSdkImpl appLovinSdkImpl) {
        this.a = appLovinSdkImpl;
        this.b = appLovinSdkImpl.getLogger();
    }

    private br h(c cVar) {
        return (br) this.d.get(cVar);
    }

    abstract bv a(c cVar);

    abstract c a(ay ayVar);

    abstract Map a();

    abstract void a(Object obj, ay ayVar);

    abstract void a(Object obj, c cVar, int i);

    public boolean a(c cVar, Object obj) {
        boolean z;
        synchronized (this.c) {
            if (g(cVar)) {
                z = false;
            } else {
                b(cVar, obj);
                z = true;
            }
        }
        return z;
    }

    public ay b(c cVar) {
        ay ayVarE;
        synchronized (this.c) {
            ayVarE = h(cVar).e();
        }
        return ayVarE;
    }

    void b(ay ayVar) {
        f(a(ayVar));
    }

    protected void b(c cVar, int i) {
        Object objRemove;
        this.b.d("PreloadManager", "Failed to pre-load an ad of spec " + cVar + ", error code " + i);
        synchronized (this.c) {
            objRemove = this.e.remove(cVar);
            this.f.add(cVar);
        }
        if (objRemove != null) {
            try {
                a(objRemove, cVar, i);
            } catch (Throwable th) {
                this.a.getLogger().userError("PreloadManager", "Encountered exception while invoking user callback", th);
            }
        }
    }

    public void b(c cVar, Object obj) {
        synchronized (this.c) {
            if (this.e.containsKey(cVar)) {
                this.b.w("PreloadManager", "Possibly missing prior registered preload callback.");
            }
            this.e.put(cVar, obj);
        }
    }

    protected void c(ay ayVar) {
        Object obj;
        synchronized (this.c) {
            c cVarA = a(ayVar);
            obj = this.e.get(cVarA);
            this.e.remove(cVarA);
            this.f.add(cVarA);
            if (obj == null) {
                h(cVarA).a(ayVar);
                this.b.d("PreloadManager", "Ad enqueued: " + ayVar);
            } else {
                this.b.d("PreloadManager", "Additional callback found, skipping enqueue.");
            }
        }
        if (obj != null) {
            this.b.d("PreloadManager", "Called additional callback regarding " + ayVar);
            try {
                a(obj, ayVar);
            } catch (Throwable th) {
                this.a.getLogger().userError("PreloadManager", "Encountered throwable while notifying user callback", th);
            }
            b(ayVar);
        }
        this.b.d("PreloadManager", "Pulled ad from network and saved to preload cache: " + ayVar);
    }

    public boolean c(c cVar) {
        boolean zC;
        synchronized (this.c) {
            zC = h(cVar).c();
        }
        return zC;
    }

    public void d(c cVar) {
        int iB;
        synchronized (this.c) {
            br brVarH = h(cVar);
            iB = brVarH.b() - brVarH.a();
        }
        if (iB > 0) {
            for (int i = 0; i < iB; i++) {
                f(cVar);
            }
        }
    }

    public boolean e(c cVar) {
        boolean z;
        synchronized (this.c) {
            z = !h(cVar).d();
        }
        return z;
    }

    public void f(c cVar) {
        if (!((Boolean) this.a.a(bw.G)).booleanValue() || c(cVar)) {
            return;
        }
        this.b.d("PreloadManager", "Preloading ad for spec " + cVar + "...");
        this.a.a().a(a(cVar), cr.MAIN, 500L);
    }

    boolean g(c cVar) {
        boolean zContains;
        synchronized (this.c) {
            zContains = this.f.contains(cVar);
        }
        return zContains;
    }
}
