package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class HttpResponse$Factory$$InjectAdapter extends Binding<HttpResponse.Factory> implements MembersInjector<HttpResponse.Factory>, Provider<HttpResponse.Factory> {
    private Binding<Provider<HttpResponse>> a;

    public HttpResponse$Factory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.HttpResponse$Factory", "members/com.vungle.publisher.net.http.HttpResponse$Factory", true, HttpResponse.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.net.http.HttpResponse>", HttpResponse.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final HttpResponse.Factory get() {
        HttpResponse.Factory factory = new HttpResponse.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(HttpResponse.Factory object) {
        object.a = this.a.get();
    }
}
