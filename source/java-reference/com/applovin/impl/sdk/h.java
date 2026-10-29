package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdUpdateListener;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class h implements AppLovinAdLoadListener {
    final /* synthetic */ AppLovinAdServiceImpl a;
    private final i b;

    private h(AppLovinAdServiceImpl appLovinAdServiceImpl, i iVar) {
        this.a = appLovinAdServiceImpl;
        this.b = iVar;
    }

    /* synthetic */ h(AppLovinAdServiceImpl appLovinAdServiceImpl, i iVar, e eVar) {
        this(appLovinAdServiceImpl, iVar);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        HashSet hashSet;
        HashSet hashSet2;
        synchronized (this.b.b) {
            if (this.a.a(this.b.a)) {
                long jB = this.a.b(this.b.a);
                if (jB > 0) {
                    this.b.d = (jB * 1000) + System.currentTimeMillis();
                } else if (jB == 0) {
                    this.b.d = Long.MAX_VALUE;
                }
                this.b.c = appLovinAd;
            } else {
                this.b.c = null;
                this.b.d = 0L;
            }
            hashSet = new HashSet(this.b.g);
            this.b.g.clear();
            hashSet2 = new HashSet(this.b.f);
            this.b.e = false;
        }
        this.a.c(this.b.a);
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                ((AppLovinAdLoadListener) it.next()).adReceived(appLovinAd);
            } catch (Throwable th) {
                this.a.b.e("AppLovinAdService", "Unable to notify listener about a newly loaded ad", th);
            }
        }
        Iterator it2 = hashSet2.iterator();
        while (it2.hasNext()) {
            try {
                ((AppLovinAdUpdateListener) it2.next()).adUpdated(appLovinAd);
            } catch (Throwable th2) {
                this.a.b.e("AppLovinAdService", "Unable to notify listener about an updated loaded ad", th2);
            }
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        HashSet hashSet;
        synchronized (this.b.b) {
            hashSet = new HashSet(this.b.g);
            this.b.g.clear();
            this.b.e = false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                ((AppLovinAdLoadListener) it.next()).failedToReceiveAd(i);
            } catch (Throwable th) {
                this.a.b.e("AppLovinAdService", "Unable to notify listener about ad load failure", th);
            }
        }
    }
}
