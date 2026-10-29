package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LocalAdReportEvent$$InjectAdapter extends Binding<LocalAdReportEvent> implements MembersInjector<LocalAdReportEvent>, Provider<LocalAdReportEvent> {
    private Binding<LocalAdReportEvent.Factory> a;
    private Binding<LocalAdPlay.Factory> b;
    private Binding<AdReportEvent> c;

    public LocalAdReportEvent$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalAdReportEvent", "members/com.vungle.publisher.db.model.LocalAdReportEvent", false, LocalAdReportEvent.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.LocalAdReportEvent$Factory", LocalAdReportEvent.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LocalAdPlay$Factory", LocalAdReportEvent.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.db.model.AdReportEvent", LocalAdReportEvent.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LocalAdReportEvent get() {
        LocalAdReportEvent localAdReportEvent = new LocalAdReportEvent();
        injectMembers(localAdReportEvent);
        return localAdReportEvent;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LocalAdReportEvent object) {
        object.e = this.a.get();
        object.f = this.b.get();
        this.c.injectMembers(object);
    }
}
