package com.applovin.impl.sdk;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
class cs implements ThreadFactory {
    final /* synthetic */ cq a;
    private final String b;

    public cs(cq cqVar, String str) {
        this.a = cqVar;
        this.b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, "AppLovinSdk:" + this.b + ":" + dh.a(this.a.a.getSdkKey()));
        thread.setDaemon(true);
        thread.setPriority(10);
        thread.setUncaughtExceptionHandler(new ct(this));
        return thread;
    }
}
