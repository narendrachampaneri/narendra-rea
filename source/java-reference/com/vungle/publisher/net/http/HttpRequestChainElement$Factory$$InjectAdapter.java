package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class HttpRequestChainElement$Factory$$InjectAdapter extends Binding<HttpRequestChainElement.Factory> implements MembersInjector<HttpRequestChainElement.Factory>, Provider<HttpRequestChainElement.Factory> {
    private Binding<Provider<HttpRequestChainElement>> a;

    public HttpRequestChainElement$Factory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.HttpRequestChainElement$Factory", "members/com.vungle.publisher.net.http.HttpRequestChainElement$Factory", true, HttpRequestChainElement.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.net.http.HttpRequestChainElement>", HttpRequestChainElement.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final HttpRequestChainElement.Factory get() {
        HttpRequestChainElement.Factory factory = new HttpRequestChainElement.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(HttpRequestChainElement.Factory object) {
        object.a = this.a.get();
    }
}
