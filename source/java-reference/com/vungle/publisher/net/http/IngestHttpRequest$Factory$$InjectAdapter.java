package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class IngestHttpRequest$Factory$$InjectAdapter extends Binding<IngestHttpRequest.Factory> implements MembersInjector<IngestHttpRequest.Factory> {
    private Binding<String> a;
    private Binding<HttpRequest.Factory> b;

    public IngestHttpRequest$Factory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.net.http.IngestHttpRequest$Factory", false, IngestHttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("@com.vungle.publisher.inject.annotations.IngestBaseUrl()/java.lang.String", IngestHttpRequest.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.net.http.HttpRequest$Factory", IngestHttpRequest.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(IngestHttpRequest.Factory object) {
        object.c = this.a.get();
        this.b.injectMembers(object);
    }
}
