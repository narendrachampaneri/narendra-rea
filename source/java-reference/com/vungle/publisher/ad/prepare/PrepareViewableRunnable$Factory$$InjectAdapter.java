package com.vungle.publisher.ad.prepare;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class PrepareViewableRunnable$Factory$$InjectAdapter extends Binding<PrepareViewableRunnable.Factory> implements MembersInjector<PrepareViewableRunnable.Factory>, Provider<PrepareViewableRunnable.Factory> {
    private Binding<Provider<PrepareViewableRunnable>> a;

    public PrepareViewableRunnable$Factory$$InjectAdapter() {
        super("com.vungle.publisher.ad.prepare.PrepareViewableRunnable$Factory", "members/com.vungle.publisher.ad.prepare.PrepareViewableRunnable$Factory", true, PrepareViewableRunnable.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.ad.prepare.PrepareViewableRunnable>", PrepareViewableRunnable.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final PrepareViewableRunnable.Factory get() {
        PrepareViewableRunnable.Factory factory = new PrepareViewableRunnable.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(PrepareViewableRunnable.Factory object) {
        object.a = this.a.get();
    }
}
