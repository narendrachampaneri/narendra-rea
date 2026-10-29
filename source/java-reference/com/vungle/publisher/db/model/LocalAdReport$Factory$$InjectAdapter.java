package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LocalAdReport$Factory$$InjectAdapter extends Binding<LocalAdReport.Factory> implements MembersInjector<LocalAdReport.Factory>, Provider<LocalAdReport.Factory> {
    private Binding<LocalAd.Factory> a;
    private Binding<LocalAdPlay.Factory> b;
    private Binding<Provider<LocalAdReport>> c;
    private Binding<AdReport.BaseFactory> d;

    public LocalAdReport$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalAdReport$Factory", "members/com.vungle.publisher.db.model.LocalAdReport$Factory", true, LocalAdReport.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.LocalAd$Factory", LocalAdReport.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LocalAdPlay$Factory", LocalAdReport.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.LocalAdReport>", LocalAdReport.Factory.class, getClass().getClassLoader());
        this.d = linker.requestBinding("members/com.vungle.publisher.db.model.AdReport$BaseFactory", LocalAdReport.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LocalAdReport.Factory get() {
        LocalAdReport.Factory factory = new LocalAdReport.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LocalAdReport.Factory object) {
        object.b = this.a.get();
        object.d = this.b.get();
        object.e = this.c.get();
        this.d.injectMembers(object);
    }
}
