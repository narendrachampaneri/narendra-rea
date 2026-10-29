package com.vungle.publisher.protocol;

import com.vungle.publisher.net.http.HttpTransaction;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class TrackInstallHttpTransactionFactory extends HttpTransaction.Factory {

    @Inject
    TrackInstallHttpRequest.Factory a;

    @Inject
    TrackInstallHttpResponseHandler b;

    public final HttpTransaction a() {
        return super.a(this.a.c(), this.b);
    }
}
