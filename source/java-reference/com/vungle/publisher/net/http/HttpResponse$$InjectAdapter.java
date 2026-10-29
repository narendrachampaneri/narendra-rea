package com.vungle.publisher.net.http;

import dagger.internal.Binding;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class HttpResponse$$InjectAdapter extends Binding<HttpResponse> implements Provider<HttpResponse> {
    public HttpResponse$$InjectAdapter() {
        super("com.vungle.publisher.net.http.HttpResponse", "members/com.vungle.publisher.net.http.HttpResponse", false, HttpResponse.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final HttpResponse get() {
        return new HttpResponse();
    }
}
