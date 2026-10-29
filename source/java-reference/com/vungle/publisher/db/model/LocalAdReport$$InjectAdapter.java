package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LocalAdReport$$InjectAdapter extends Binding<LocalAdReport> implements MembersInjector<LocalAdReport>, Provider<LocalAdReport> {
    private Binding<LocalAdReport.Factory> a;
    private Binding<LocalAdPlay.Factory> b;
    private Binding<AdReport> c;

    public LocalAdReport$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalAdReport", "members/com.vungle.publisher.db.model.LocalAdReport", false, LocalAdReport.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.LocalAdReport$Factory", LocalAdReport.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LocalAdPlay$Factory", LocalAdReport.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.db.model.AdReport", LocalAdReport.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LocalAdReport get() {
        LocalAdReport localAdReport = new LocalAdReport();
        injectMembers(localAdReport);
        return localAdReport;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LocalAdReport object) {
        object.q = this.a.get();
        object.r = this.b.get();
        this.c.injectMembers(object);
    }
}
