package com.vungle.publisher.net.http;

import java.net.HttpURLConnection;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class HttpResponse {
    public HttpURLConnection a;
    public int b;
    List<HttpRequestChainElement> c;
    private String d;

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        Provider<HttpResponse> a;
    }

    @Inject
    HttpResponse() {
    }
}
