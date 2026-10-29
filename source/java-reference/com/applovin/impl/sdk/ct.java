package com.applovin.impl.sdk;

/* JADX INFO: loaded from: classes.dex */
class ct implements Thread.UncaughtExceptionHandler {
    final /* synthetic */ cs a;

    ct(cs csVar) {
        this.a = csVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        this.a.a.b.e("TaskManager", "Caught unhandled exception", th);
    }
}
