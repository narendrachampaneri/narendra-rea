package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class HttpTransport$$InjectAdapter extends Binding<HttpTransport> implements MembersInjector<HttpTransport>, Provider<HttpTransport> {
    private Binding<HttpURLConnectionFactory> a;
    private Binding<HttpResponse.Factory> b;
    private Binding<HttpRequestChainElement.Factory> c;

    public HttpTransport$$InjectAdapter() {
        super("com.vungle.publisher.net.http.HttpTransport", "members/com.vungle.publisher.net.http.HttpTransport", true, HttpTransport.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.net.http.HttpURLConnectionFactory", HttpTransport.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.net.http.HttpResponse$Factory", HttpTransport.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.net.http.HttpRequestChainElement$Factory", HttpTransport.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final HttpTransport get() {
        HttpTransport httpTransport = new HttpTransport();
        injectMembers(httpTransport);
        return httpTransport;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(HttpTransport object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
    }
}
