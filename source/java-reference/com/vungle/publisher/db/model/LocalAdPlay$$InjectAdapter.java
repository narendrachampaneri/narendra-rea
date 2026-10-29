package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LocalAdPlay$$InjectAdapter extends Binding<LocalAdPlay> implements MembersInjector<LocalAdPlay>, Provider<LocalAdPlay> {
    private Binding<LocalAdPlay.Factory> a;
    private Binding<LocalAdReportEvent.Factory> b;
    private Binding<AdPlay> c;

    public LocalAdPlay$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalAdPlay", "members/com.vungle.publisher.db.model.LocalAdPlay", false, LocalAdPlay.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.LocalAdPlay$Factory", LocalAdPlay.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LocalAdReportEvent$Factory", LocalAdPlay.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.db.model.AdPlay", LocalAdPlay.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LocalAdPlay get() {
        LocalAdPlay localAdPlay = new LocalAdPlay();
        injectMembers(localAdPlay);
        return localAdPlay;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LocalAdPlay object) {
        object.e = this.a.get();
        object.f = this.b.get();
        this.c.injectMembers(object);
    }
}
