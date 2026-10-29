package com.vungle.publisher.net.http;

import com.vungle.publisher.bt;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class HttpRequest$Factory$$InjectAdapter extends Binding<HttpRequest.Factory> implements MembersInjector<HttpRequest.Factory> {
    private Binding<bt> a;

    public HttpRequest$Factory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.net.http.HttpRequest$Factory", false, HttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.bt", HttpRequest.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(HttpRequest.Factory object) {
        object.b = this.a.get();
    }
}
