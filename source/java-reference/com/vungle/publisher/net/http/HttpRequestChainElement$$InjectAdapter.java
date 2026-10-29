package com.vungle.publisher.net.http;

import dagger.internal.Binding;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class HttpRequestChainElement$$InjectAdapter extends Binding<HttpRequestChainElement> implements Provider<HttpRequestChainElement> {
    public HttpRequestChainElement$$InjectAdapter() {
        super("com.vungle.publisher.net.http.HttpRequestChainElement", "members/com.vungle.publisher.net.http.HttpRequestChainElement", false, HttpRequestChainElement.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final HttpRequestChainElement get() {
        return new HttpRequestChainElement();
    }
}
