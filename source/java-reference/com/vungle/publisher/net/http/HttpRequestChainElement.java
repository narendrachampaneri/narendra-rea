package com.vungle.publisher.net.http;

import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class HttpRequestChainElement {
    public String a;
    public int b;
    public Long c;
    private String d;

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        Provider<HttpRequestChainElement> a;
    }

    @Inject
    public HttpRequestChainElement() {
    }
}
