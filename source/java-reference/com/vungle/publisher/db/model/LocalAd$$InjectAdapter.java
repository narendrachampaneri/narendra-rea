package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LocalAd$$InjectAdapter extends Binding<LocalAd> implements MembersInjector<LocalAd>, Provider<LocalAd> {
    private Binding<LocalAd.Factory> a;
    private Binding<Ad> b;

    public LocalAd$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalAd", "members/com.vungle.publisher.db.model.LocalAd", false, LocalAd.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.LocalAd$Factory", LocalAd.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.Ad", LocalAd.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LocalAd get() {
        LocalAd localAd = new LocalAd();
        injectMembers(localAd);
        return localAd;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LocalAd object) {
        object.E = this.a.get();
        this.b.injectMembers(object);
    }
}
