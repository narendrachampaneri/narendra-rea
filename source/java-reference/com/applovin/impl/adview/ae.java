package com.applovin.impl.adview;

/* JADX INFO: loaded from: classes.dex */
class ae implements Runnable {
    final /* synthetic */ x a;

    private ae(x xVar) {
        this.a = xVar;
    }

    /* synthetic */ ae(x xVar, y yVar) {
        this(xVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.a.dismiss();
        } catch (Throwable th) {
            if (this.a.c != null) {
                this.a.c.e("InterstitialAdDialog", "dismiss() threw exception", th);
            }
        }
    }
}
