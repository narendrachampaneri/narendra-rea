package com.applovin.impl.sdk;

import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
class at extends TimerTask {
    final /* synthetic */ as a;

    at(as asVar) {
        this.a = asVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        this.a.a.a.c.runOnUiThread(new au(this));
    }
}
