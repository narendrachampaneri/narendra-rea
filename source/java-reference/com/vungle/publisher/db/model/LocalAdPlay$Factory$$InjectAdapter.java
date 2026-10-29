package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LocalAdPlay$Factory$$InjectAdapter extends Binding<LocalAdPlay.Factory> implements MembersInjector<LocalAdPlay.Factory>, Provider<LocalAdPlay.Factory> {
    private Binding<Provider<LocalAdPlay>> a;
    private Binding<LocalAdReportEvent.Factory> b;
    private Binding<AdPlay.Factory> c;

    public LocalAdPlay$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalAdPlay$Factory", "members/com.vungle.publisher.db.model.LocalAdPlay$Factory", true, LocalAdPlay.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.LocalAdPlay>", LocalAdPlay.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LocalAdReportEvent$Factory", LocalAdPlay.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.db.model.AdPlay$Factory", LocalAdPlay.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LocalAdPlay.Factory get() {
        LocalAdPlay.Factory factory = new LocalAdPlay.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LocalAdPlay.Factory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
