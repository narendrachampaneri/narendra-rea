package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class DownloadHttpRequest$Factory$$InjectAdapter extends Binding<DownloadHttpRequest.Factory> implements MembersInjector<DownloadHttpRequest.Factory>, Provider<DownloadHttpRequest.Factory> {
    private Binding<HttpRequest.Factory> a;

    public DownloadHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.DownloadHttpRequest$Factory", "members/com.vungle.publisher.net.http.DownloadHttpRequest$Factory", true, DownloadHttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.net.http.HttpRequest$Factory", DownloadHttpRequest.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final DownloadHttpRequest.Factory get() {
        DownloadHttpRequest.Factory factory = new DownloadHttpRequest.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(DownloadHttpRequest.Factory object) {
        this.a.injectMembers(object);
    }
}
