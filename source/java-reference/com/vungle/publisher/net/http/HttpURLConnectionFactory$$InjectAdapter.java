package com.vungle.publisher.net.http;

import dagger.internal.Binding;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class HttpURLConnectionFactory$$InjectAdapter extends Binding<HttpURLConnectionFactory> implements Provider<HttpURLConnectionFactory> {
    public HttpURLConnectionFactory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.HttpURLConnectionFactory", "members/com.vungle.publisher.net.http.HttpURLConnectionFactory", true, HttpURLConnectionFactory.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final HttpURLConnectionFactory get() {
        return new HttpURLConnectionFactory();
    }
}
