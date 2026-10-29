package com.vungle.publisher.protocol;

import com.vungle.publisher.cw;
import com.vungle.publisher.net.http.HttpTransaction;
import dagger.Lazy;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class RequestLocalAdHttpTransactionFactory extends HttpTransaction.Factory {

    @Inject
    RequestLocalAdHttpRequest.Factory a;

    @Inject
    Lazy<RequestLocalAdHttpResponseHandler> b;

    public final HttpTransaction a(cw cwVar) {
        return super.a(this.a.c(), this.b.get(), cwVar);
    }
}
