package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LocalArchive$Factory$$InjectAdapter extends Binding<LocalArchive.Factory> implements MembersInjector<LocalArchive.Factory>, Provider<LocalArchive.Factory> {
    private Binding<Provider<LocalArchive>> a;
    private Binding<LocalViewableDelegate.Factory> b;
    private Binding<Viewable.BaseFactory> c;

    public LocalArchive$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalArchive$Factory", "members/com.vungle.publisher.db.model.LocalArchive$Factory", true, LocalArchive.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.LocalArchive>", LocalArchive.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LocalViewableDelegate$Factory", LocalArchive.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.db.model.Viewable$BaseFactory", LocalArchive.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LocalArchive.Factory get() {
        LocalArchive.Factory factory = new LocalArchive.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LocalArchive.Factory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
