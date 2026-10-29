package com.chartboost.sdk.impl;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class e implements o {
    private final Executor a;

    public e(final Handler handler) {
        this.a = new Executor() { // from class: com.chartboost.sdk.impl.e.1
            @Override // java.util.concurrent.Executor
            public void execute(Runnable command) {
                handler.post(command);
            }
        };
    }

    @Override // com.chartboost.sdk.impl.o
    public void a(l<?> lVar, n<?> nVar) {
        a(lVar, nVar, null);
    }

    @Override // com.chartboost.sdk.impl.o
    public void a(l<?> lVar, n<?> nVar, Runnable runnable) {
        lVar.v();
        lVar.a("post-response");
        this.a.execute(new a(lVar, nVar, runnable));
    }

    @Override // com.chartboost.sdk.impl.o
    public void a(l<?> lVar, s sVar) {
        lVar.a("post-error");
        this.a.execute(new a(lVar, n.a(sVar), null));
    }

    private class a implements Runnable {
        private final l b;
        private final n c;
        private final Runnable d;

        public a(l lVar, n nVar, Runnable runnable) {
            this.b = lVar;
            this.c = nVar;
            this.d = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.b.h()) {
                this.b.b("canceled-at-delivery");
                return;
            }
            if (this.c.a()) {
                this.b.b(this.c.a);
            } else {
                this.b.b(this.c.c);
            }
            if (this.c.d) {
                this.b.a("intermediate-response");
            } else {
                this.b.b("done");
            }
            if (this.d != null) {
                this.d.run();
            }
        }
    }
}
