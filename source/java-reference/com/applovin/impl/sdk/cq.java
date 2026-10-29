package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinLogger;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class cq {
    private final AppLovinSdkImpl a;
    private final AppLovinLogger b;
    private final ScheduledExecutorService c = a("main");
    private final ScheduledExecutorService d = a("back");
    private final ScheduledExecutorService e = a("postbacks");

    cq(AppLovinSdkImpl appLovinSdkImpl) {
        this.a = appLovinSdkImpl;
        this.b = appLovinSdkImpl.getLogger();
    }

    private static void a(Runnable runnable, long j, ScheduledExecutorService scheduledExecutorService) {
        if (j > 0) {
            scheduledExecutorService.schedule(runnable, j, TimeUnit.MILLISECONDS);
        } else {
            scheduledExecutorService.submit(runnable);
        }
    }

    ScheduledExecutorService a(String str) {
        return Executors.newScheduledThreadPool(1, new cs(this, str));
    }

    void a(bv bvVar, cr crVar) {
        a(bvVar, crVar, 0L);
    }

    void a(bv bvVar, cr crVar, long j) {
        if (bvVar == null) {
            throw new IllegalArgumentException("No task specified");
        }
        if (j < 0) {
            throw new IllegalArgumentException("Invalid delay specified: " + j);
        }
        this.b.d(bvVar.e, "Scheduling " + bvVar.e + " on " + crVar + " queue in " + j + "ms.");
        cu cuVar = new cu(this, bvVar, crVar);
        if (crVar == cr.MAIN) {
            a(cuVar, j, this.c);
        } else if (crVar == cr.BACKGROUND) {
            a(cuVar, j, this.d);
        } else if (crVar == cr.POSTBACKS) {
            a(cuVar, j, this.e);
        }
    }

    void a(cp cpVar, long j) {
        if (cpVar == null) {
            throw new IllegalArgumentException("No task specified");
        }
        a(cpVar, j, this.c);
    }
}
