package com.vungle.publisher.protocol;

import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import com.vungle.publisher.net.http.HttpTransaction;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class UnfilledAdHttpTransactionFactory extends HttpTransaction.Factory {

    @Inject
    UnfilledAdHttpRequest.Factory a;

    @Inject
    FireAndForgetHttpResponseHandler b;

    public final HttpTransaction a(long j) {
        return super.a(this.a.a(j), this.b);
    }
}
