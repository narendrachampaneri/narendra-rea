package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinSdkSettings;

/* JADX INFO: loaded from: classes.dex */
class cu implements Runnable {
    final /* synthetic */ cq a;
    private final String b;
    private final bv c;
    private final cr d;

    cu(cq cqVar, bv bvVar, cr crVar) {
        this.a = cqVar;
        this.b = bvVar.a();
        this.c = bvVar;
        this.d = crVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            n.a();
            if (this.a.a.e()) {
                this.a.b.i(this.b, "Task re-scheduled...");
                this.a.a(this.c, this.d, 2000L);
                return;
            }
            if (!this.a.a.isEnabled()) {
                if (this.a.a.f()) {
                    this.a.a.a((AppLovinSdkSettings) null);
                } else {
                    this.a.b.w(this.b, "Task not executed, SDK is disabled");
                }
                this.c.b();
                return;
            }
            this.a.b.i(this.b, "Task started execution...");
            this.c.run();
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            if (this.c instanceof dg) {
                dg dgVar = (dg) this.c;
                db.a().a(dgVar.e(), jCurrentTimeMillis2, q.a(this.a.a), dgVar.f());
            }
            this.a.b.i(this.b, "Task executed successfully in " + jCurrentTimeMillis2 + "ms.");
            cb cbVarB = this.a.a.b();
            cbVarB.a(this.b + "_count");
            cbVarB.a(this.b + "_time", jCurrentTimeMillis2);
        } catch (Throwable th) {
            this.a.b.e(this.b, "Task failed execution in " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms.", th);
        }
    }
}
