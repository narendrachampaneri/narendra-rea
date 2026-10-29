package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class DownloadHttpResponseHandler$Factory$$InjectAdapter extends Binding<DownloadHttpResponseHandler.Factory> implements MembersInjector<DownloadHttpResponseHandler.Factory>, Provider<DownloadHttpResponseHandler.Factory> {
    private Binding<Provider<DownloadHttpResponseHandler>> a;

    public DownloadHttpResponseHandler$Factory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.DownloadHttpResponseHandler$Factory", "members/com.vungle.publisher.net.http.DownloadHttpResponseHandler$Factory", true, DownloadHttpResponseHandler.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.net.http.DownloadHttpResponseHandler>", DownloadHttpResponseHandler.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final DownloadHttpResponseHandler.Factory get() {
        DownloadHttpResponseHandler.Factory factory = new DownloadHttpResponseHandler.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(DownloadHttpResponseHandler.Factory object) {
        object.a = this.a.get();
    }
}
