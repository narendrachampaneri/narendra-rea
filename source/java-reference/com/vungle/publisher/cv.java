package com.vungle.publisher;

import com.vungle.log.Logger;
import com.vungle.publisher.net.http.HttpTransaction;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class cv implements Runnable {
    private final HttpTransaction a;

    public cv(HttpTransaction httpTransaction) {
        this.a = httpTransaction;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Logger.d(Logger.NETWORK_TAG, "executing " + this.a);
            this.a.a();
        } catch (Exception e) {
            Logger.e(Logger.NETWORK_TAG, "error processing transaction: " + this.a, e);
        }
    }
}
