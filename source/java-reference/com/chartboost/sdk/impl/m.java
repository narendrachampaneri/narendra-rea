package com.chartboost.sdk.impl;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class m {
    private AtomicInteger a;
    private final Map<String, Queue<l<?>>> b;
    private final Set<l<?>> c;
    private final PriorityBlockingQueue<l<?>> d;
    private final PriorityBlockingQueue<l<?>> e;
    private final b f;
    private final f g;
    private final o h;
    private g[] i;
    private c j;
    private boolean k;

    public interface a {
        boolean a(l<?> lVar);
    }

    public m(b bVar, f fVar, int i, o oVar) {
        this.a = new AtomicInteger();
        this.b = new HashMap();
        this.c = new HashSet();
        this.d = new PriorityBlockingQueue<>();
        this.e = new PriorityBlockingQueue<>();
        this.k = false;
        this.f = bVar;
        this.g = fVar;
        this.i = new g[i];
        this.h = oVar;
    }

    public m(b bVar, f fVar, int i) {
        this(bVar, fVar, i, new e(new Handler(Looper.getMainLooper())));
    }

    public m(b bVar, f fVar) {
        this(bVar, fVar, 4);
    }

    public void a() {
        b();
        this.j = new c(this.d, this.e, this.f, this.h);
        this.j.start();
        a(true);
        for (int i = 0; i < this.i.length; i++) {
            g gVar = new g(this.e, this.g, this.f, this.h);
            this.i[i] = gVar;
            gVar.start();
        }
    }

    public void b() {
        a(false);
        if (this.j != null) {
            this.j.a();
        }
        for (int i = 0; i < this.i.length; i++) {
            if (this.i[i] != null) {
                this.i[i].a();
            }
        }
    }

    public int c() {
        return this.a.incrementAndGet();
    }

    public void a(a aVar) {
        synchronized (this.c) {
            for (l<?> lVar : this.c) {
                if (aVar.a(lVar)) {
                    lVar.g();
                }
            }
        }
    }

    public void a(final Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Cannot cancelAll with a null tag");
        }
        a(new a() { // from class: com.chartboost.sdk.impl.m.1
            @Override // com.chartboost.sdk.impl.m.a
            public boolean a(l<?> lVar) {
                return lVar.b() == obj;
            }
        });
    }

    public <T> l<T> a(l<T> lVar) {
        lVar.a(this);
        synchronized (this.c) {
            this.c.add(lVar);
        }
        lVar.a(c());
        lVar.a("add-to-queue");
        if (!lVar.r()) {
            this.e.add(lVar);
        } else {
            synchronized (this.b) {
                String strE = lVar.e();
                if (this.b.containsKey(strE)) {
                    Queue<l<?>> linkedList = this.b.get(strE);
                    if (linkedList == null) {
                        linkedList = new LinkedList<>();
                    }
                    linkedList.add(lVar);
                    this.b.put(strE, linkedList);
                    if (t.b) {
                        t.a("Request for cacheKey=%s is in flight, putting on hold.", strE);
                    }
                } else {
                    this.b.put(strE, null);
                    this.d.add(lVar);
                }
            }
        }
        return lVar;
    }

    void b(l<?> lVar) {
        synchronized (this.c) {
            this.c.remove(lVar);
        }
        if (lVar.r()) {
            synchronized (this.b) {
                String strE = lVar.e();
                Queue<l<?>> queueRemove = this.b.remove(strE);
                if (queueRemove != null) {
                    if (t.b) {
                        t.a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(queueRemove.size()), strE);
                    }
                    this.d.addAll(queueRemove);
                }
            }
        }
    }

    public boolean a(boolean z) {
        this.k = z;
        return z;
    }
}
