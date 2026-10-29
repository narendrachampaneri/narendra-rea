package com.vungle.publisher.ad.prepare;

import com.vungle.log.Logger;
import com.vungle.publisher.ab;
import com.vungle.publisher.bj;
import com.vungle.publisher.bk;
import com.vungle.publisher.cb;
import com.vungle.publisher.cw;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.w;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class PrepareViewableRunnable implements Runnable {
    bk a;
    String b;
    cw c;

    @Inject
    EventBus d;

    @Inject
    LoggedException.Factory e;

    @Override // java.lang.Runnable
    public void run() {
        Logger.d(Logger.PREPARE_TAG, "run PrepareViewableRunnable. adId = " + this.b + ". type = " + this.a.f());
        try {
            if (a()) {
                this.d.a(new ab(this.b));
            }
        } catch (Exception e) {
            this.e.a(Logger.PREPARE_TAG, "error processing " + this.a.f() + " for ad " + this.b + ". retryCount = " + this.c.b, e);
            this.a.b(bj.a.failed);
            this.d.a(new w(this.c));
        }
    }

    private boolean a() {
        bk bkVar = this.a;
        boolean z = false;
        bj.b bVarF = bkVar.f();
        bj.a aVarE = bkVar.e();
        switch (aVarE) {
            case aware:
            case queued:
                Logger.d(Logger.PREPARE_TAG, bVarF + " will begin downloading for ad_id " + this.b);
                try {
                    bkVar.a(this.c);
                } catch (cb e) {
                    throw new PrepareAdRunnable.a("external storage not available, could not download ad", e);
                }
                break;
            case downloading:
                Logger.d(Logger.PREPARE_TAG, bVarF + " still downloading for ad_id " + this.b);
                break;
            case downloaded:
                Logger.d(Logger.PREPARE_TAG, bVarF + " downloaded, continuing to postprocessing for ad_id " + this.b);
                try {
                    bk bkVar2 = this.a;
                    if (!bkVar2.l()) {
                        throw new PrepareAdRunnable.b(bkVar2.f() + " post processing failed for ad_id " + bkVar2.d());
                    }
                    z = true;
                } catch (cb e2) {
                    throw new PrepareAdRunnable.a("external storage not available, could not post process ad", e2);
                }
                break;
            case ready:
                Logger.v(Logger.PREPARE_TAG, bVarF + " already " + aVarE + " for ad_id " + this.b);
                z = true;
                break;
            default:
                throw new IllegalStateException("unexpected " + bVarF + " status: " + aVarE);
        }
        bkVar.m();
        return z;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        Provider<PrepareViewableRunnable> a;

        @Inject
        public Factory() {
        }

        public final PrepareViewableRunnable a(bk bkVar, cw cwVar) {
            PrepareViewableRunnable prepareViewableRunnable = this.a.get();
            prepareViewableRunnable.a = bkVar;
            prepareViewableRunnable.b = bkVar.d();
            prepareViewableRunnable.c = cwVar;
            return prepareViewableRunnable;
        }
    }
}
