package com.applovin.impl.sdk;

import android.app.AlertDialog;

/* JADX INFO: loaded from: classes.dex */
class ar implements Runnable {
    final /* synthetic */ aq a;

    ar(aq aqVar) {
        this.a = aqVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.a.c);
        builder.setTitle((CharSequence) this.a.a.a(bw.X));
        builder.setMessage((CharSequence) this.a.a.a(bw.Y));
        builder.setCancelable(false);
        builder.setPositiveButton((CharSequence) this.a.a.a(bw.Z), new as(this));
        builder.setNegativeButton((CharSequence) this.a.a.a(bw.aa), new av(this));
        builder.show();
    }
}
