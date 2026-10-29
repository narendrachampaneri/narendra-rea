package com.vungle.publisher.ad.prepare;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class PrepareAdRunnable$Factory$$InjectAdapter extends Binding<PrepareAdRunnable.Factory> implements MembersInjector<PrepareAdRunnable.Factory>, Provider<PrepareAdRunnable.Factory> {
    private Binding<Provider<PrepareAdRunnable>> a;

    public PrepareAdRunnable$Factory$$InjectAdapter() {
        super("com.vungle.publisher.ad.prepare.PrepareAdRunnable$Factory", "members/com.vungle.publisher.ad.prepare.PrepareAdRunnable$Factory", true, PrepareAdRunnable.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.ad.prepare.PrepareAdRunnable>", PrepareAdRunnable.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final PrepareAdRunnable.Factory get() {
        PrepareAdRunnable.Factory factory = new PrepareAdRunnable.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(PrepareAdRunnable.Factory object) {
        object.a = this.a.get();
    }
}
