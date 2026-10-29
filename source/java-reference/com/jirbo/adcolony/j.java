package com.jirbo.adcolony;

/* JADX INFO: loaded from: classes.dex */
abstract class j {
    d o;

    abstract void a();

    j(d dVar) {
        this(dVar, true);
    }

    j(d dVar, boolean z) {
        this.o = dVar;
        if (z) {
            dVar.a(this);
        }
    }
}
