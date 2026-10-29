package com.vungle.publisher.ad.prepare;

import com.google.android.exoplayer.hls.HlsChunkSource;
import com.vungle.log.Logger;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.ai;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.bj;
import com.vungle.publisher.bk;
import com.vungle.publisher.cw;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.LocalArchive;
import com.vungle.publisher.db.model.LocalVideo;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.reporting.AdReportManager;
import com.vungle.publisher.u;
import com.vungle.publisher.w;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class PrepareAdRunnable implements Runnable {
    private static final Object h = new Object();

    @Inject
    EventBus a;

    @Inject
    AdManager b;

    @Inject
    AdReportManager c;

    @Inject
    ScheduledPriorityExecutor d;

    @Inject
    PrepareViewableRunnable.Factory e;

    @Inject
    RetryMap f;

    @Inject
    LoggedException.Factory g;
    private String i;

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        public Provider<PrepareAdRunnable> a;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (h) {
            Logger.d(Logger.PREPARE_TAG, "run PrepareAdRunnable. adId = " + this.i);
            RetryMap retryMap = this.f;
            try {
                String str = this.i;
                if (!retryMap.a.containsKey(str)) {
                    retryMap.a.put(str, new cw());
                }
                if (a().i() == Ad.a.ready) {
                    retryMap.a.remove(this.i);
                    this.a.a(new ai());
                }
            } catch (a e) {
                Logger.w(Logger.PREPARE_TAG, e.getMessage() + " for ad.id " + this.i + ". retryCount = " + retryMap.a(this.i).b);
                this.a.a(new w(retryMap.a(this.i)));
            } catch (Exception e2) {
                this.g.a(Logger.PREPARE_TAG, "error processing ad.id: " + this.i, e2);
                this.a.a(new w(retryMap.a(this.i)));
            }
        }
    }

    private LocalAd a() {
        String str = this.i;
        LocalAd localAdA = this.b.a(str);
        if (localAdA == null) {
            throw new IllegalArgumentException("no ad " + str);
        }
        Ad.a aVarI = localAdA.i();
        Ad ad = null;
        switch (aVarI) {
            case deleting:
            case invalid:
                throw new a("ad status: " + aVarI);
            case ready:
                Logger.d(Logger.PREPARE_TAG, "ad already " + Ad.a.ready + ": " + str);
                return localAdA;
            default:
                try {
                    LocalAd localAdA2 = a(localAdA);
                    try {
                        localAdA.m();
                        if (localAdA2.i() == Ad.a.ready) {
                        }
                        break;
                    } catch (Exception e) {
                    }
                    return localAdA2;
                } finally {
                    try {
                        localAdA.m();
                        if (ad.i() == Ad.a.ready) {
                            this.a.a(new u());
                        }
                        break;
                    } catch (Exception e2) {
                        this.g.a(Logger.PREPARE_TAG, "error saving ad " + localAdA.d() + " to database", e2);
                    }
                }
        }
    }

    private LocalAd a(LocalAd localAd) {
        String strD = localAd.d();
        Ad.a aVarI = localAd.i();
        if (aVarI == Ad.a.failed) {
            Ad.a aVar = Ad.a.preparing;
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = localAd.j();
            if (jCurrentTimeMillis < j) {
                Logger.d(Logger.PREPARE_TAG, "clock change detected; updating ad.id " + strD + " status from " + aVarI + " to " + aVar);
                localAd.a(aVar);
            } else {
                long j2 = (jCurrentTimeMillis - j) / HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS;
                if (j2 < 1440) {
                    throw new a("ad marked failed " + j2 + " minutes ago");
                }
                Logger.d(Logger.PREPARE_TAG, "retrying " + Ad.a.failed + " ad.id " + strD + " after " + j2 + "/1440 minutes; updating status from " + aVarI + " to " + aVar);
                localAd.a(aVar);
            }
        }
        Ad.a aVar2 = Ad.a.failed;
        Ad.a aVarI2 = localAd.i();
        while (true) {
            int i = localAd.z;
            if (i < 3) {
                try {
                    switch (aVarI2) {
                        case aware:
                            this.c.a(localAd);
                            localAd.a(Ad.a.preparing);
                        case preparing:
                            Logger.d(Logger.PREPARE_TAG, "prepare_retry_count " + i + " for ad " + this.i);
                            b(localAd);
                            return localAd;
                        case viewed:
                            c(localAd);
                            return localAd;
                        default:
                            throw new IllegalStateException("unexpected ad.status: " + aVarI2);
                    }
                } catch (b e) {
                    Logger.w(Logger.PREPARE_TAG, e.getMessage() + " for ad.id: " + this.i);
                    localAd.z++;
                }
            } else {
                localAd.a(Ad.a.failed);
                throw new a("failed to prepare ad after " + i + " attempts");
            }
        }
    }

    private void b(LocalAd localAd) {
        d(localAd);
        boolean z = true;
        for (bk bkVar : localAd.B()) {
            bj.a aVarE = bkVar.e();
            Logger.v(Logger.PREPARE_TAG, bkVar.f() + " has status " + aVarE);
            if (aVarE == bj.a.aware || aVarE == bj.a.failed) {
                bkVar.b(bj.a.queued);
                cw cwVarA = this.f.a(this.i);
                Logger.d(Logger.PREPARE_TAG, "begin preparing " + bkVar.f());
                this.d.a(this.e.a(bkVar, cwVarA), ScheduledPriorityExecutor.b.prepareLocalViewable);
            }
            if (!(aVarE == bj.a.ready)) {
                z = false;
            }
        }
        if (z) {
            Logger.i(Logger.PREPARE_TAG, "ad ready " + localAd.d());
            localAd.a(Ad.a.ready);
            this.c.c.b(localAd).d(Long.valueOf(System.currentTimeMillis()));
            return;
        }
        Logger.d(Logger.PREPARE_TAG, "ad not ready " + localAd.d());
    }

    private void c(LocalAd localAd) {
        String strD = localAd.d();
        Logger.d(Logger.PREPARE_TAG, "re-verify prepare_retry_count " + localAd.z + " for ad " + strD);
        d(localAd);
        for (bk bkVar : localAd.B()) {
            if (!bkVar.t()) {
                throw new b(bkVar.f() + " re-verification failed for ad_id " + bkVar.d());
            }
        }
        Ad.a aVar = Ad.a.ready;
        Logger.i(Logger.PREPARE_TAG, "re-verified ad and set to " + aVar + ": " + strD);
        this.c.a(localAd).d(-1L);
        localAd.a(aVar);
    }

    private static void d(LocalAd localAd) throws a {
        LocalArchive localArchiveA = localAd.A();
        LocalVideo localVideoK = localAd.k();
        LocalArchive localArchiveU = localAd.u();
        boolean z = localArchiveA != null;
        boolean z2 = localVideoK != null;
        boolean z3 = localArchiveU != null;
        boolean z4 = z || z2 || z3;
        String strY = localAd.y();
        if (z4) {
            if (z) {
                Logger.v(Logger.PREPARE_TAG, strY + " has " + bj.b.preRoll + ": " + localArchiveA.i.b);
            }
            if (z2) {
                Logger.v(Logger.PREPARE_TAG, strY + " has " + bj.b.localVideo + ": " + localVideoK.b.b);
            }
            if (z3) {
                Logger.v(Logger.PREPARE_TAG, strY + " has " + bj.b.postRoll + ": " + localArchiveU.i.b);
            }
        } else {
            localAd.a(Ad.a.invalid);
        }
        if (!z4) {
            throw new a("invalid ad - no viewables");
        }
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class RetryMap {
        final Map<String, cw> a = new HashMap();

        @Inject
        public RetryMap() {
        }

        final cw a(String str) {
            return this.a.get(str);
        }
    }

    /* JADX INFO: compiled from: vungle */
    static class b extends RuntimeException {
        b(String str) {
            super(str);
        }
    }

    /* JADX INFO: compiled from: vungle */
    static class a extends RuntimeException {
        a(String str) {
            super(str);
        }

        a(String str, Throwable th) {
            super(str, th);
        }
    }
}
