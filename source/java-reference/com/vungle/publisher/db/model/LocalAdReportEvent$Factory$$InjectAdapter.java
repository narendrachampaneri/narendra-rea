package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LocalAdReportEvent$Factory$$InjectAdapter extends Binding<LocalAdReportEvent.Factory> implements MembersInjector<LocalAdReportEvent.Factory>, Provider<LocalAdReportEvent.Factory> {
    private Binding<Provider<LocalAdReportEvent>> a;
    private Binding<AdReportEvent.Factory> b;

    public LocalAdReportEvent$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalAdReportEvent$Factory", "members/com.vungle.publisher.db.model.LocalAdReportEvent$Factory", true, LocalAdReportEvent.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.LocalAdReportEvent>", LocalAdReportEvent.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.AdReportEvent$Factory", LocalAdReportEvent.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LocalAdReportEvent.Factory get() {
        LocalAdReportEvent.Factory factory = new LocalAdReportEvent.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LocalAdReportEvent.Factory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
