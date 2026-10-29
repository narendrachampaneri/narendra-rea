package com.vungle.publisher.net.http;

import com.vungle.publisher.bj;
import com.vungle.publisher.cw;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class DownloadHttpTransactionFactory extends HttpTransaction.Factory {

    @Inject
    DownloadHttpRequest.Factory a;

    @Inject
    DownloadHttpResponseHandler.Factory b;

    public final HttpTransaction a(String str, bj.b bVar, String str2, String str3, cw cwVar) {
        HttpRequest httpRequest = (DownloadHttpRequest) this.a.c();
        httpRequest.b = str2;
        DownloadHttpResponseHandler downloadHttpResponseHandler = this.b.a.get();
        downloadHttpResponseHandler.a = str;
        downloadHttpResponseHandler.b = str3;
        downloadHttpResponseHandler.c = bVar;
        return super.a(httpRequest, downloadHttpResponseHandler, cwVar);
    }
}
