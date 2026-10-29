package com.vungle.publisher.db.model;

import com.vungle.publisher.net.http.DownloadHttpGateway;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LocalViewableDelegate$Factory$$InjectAdapter extends Binding<LocalViewableDelegate.Factory> implements MembersInjector<LocalViewableDelegate.Factory>, Provider<LocalViewableDelegate.Factory> {
    private Binding<Provider<LocalViewableDelegate>> a;
    private Binding<DownloadHttpGateway> b;

    public LocalViewableDelegate$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalViewableDelegate$Factory", "members/com.vungle.publisher.db.model.LocalViewableDelegate$Factory", true, LocalViewableDelegate.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.LocalViewableDelegate>", LocalViewableDelegate.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.net.http.DownloadHttpGateway", LocalViewableDelegate.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LocalViewableDelegate.Factory get() {
        LocalViewableDelegate.Factory factory = new LocalViewableDelegate.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LocalViewableDelegate.Factory object) {
        object.a = this.a.get();
        object.b = this.b.get();
    }
}
