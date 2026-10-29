package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class HttpTransaction$Factory$$InjectAdapter extends Binding<HttpTransaction.Factory> implements MembersInjector<HttpTransaction.Factory>, Provider<HttpTransaction.Factory> {
    private Binding<Provider<HttpTransaction>> a;

    public HttpTransaction$Factory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.HttpTransaction$Factory", "members/com.vungle.publisher.net.http.HttpTransaction$Factory", true, HttpTransaction.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.net.http.HttpTransaction>", HttpTransaction.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final HttpTransaction.Factory get() {
        HttpTransaction.Factory factory = new HttpTransaction.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(HttpTransaction.Factory object) {
        object.c = this.a.get();
    }
}
