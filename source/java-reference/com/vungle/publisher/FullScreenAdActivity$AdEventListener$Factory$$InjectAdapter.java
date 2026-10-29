package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class FullScreenAdActivity$AdEventListener$Factory$$InjectAdapter extends Binding<FullScreenAdActivity.AdEventListener.Factory> implements MembersInjector<FullScreenAdActivity.AdEventListener.Factory>, Provider<FullScreenAdActivity.AdEventListener.Factory> {
    private Binding<FullScreenAdActivity.AdEventListener> a;

    public FullScreenAdActivity$AdEventListener$Factory$$InjectAdapter() {
        super("com.vungle.publisher.FullScreenAdActivity$AdEventListener$Factory", "members/com.vungle.publisher.FullScreenAdActivity$AdEventListener$Factory", true, FullScreenAdActivity.AdEventListener.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.FullScreenAdActivity$AdEventListener", FullScreenAdActivity.AdEventListener.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final FullScreenAdActivity.AdEventListener.Factory get() {
        FullScreenAdActivity.AdEventListener.Factory factory = new FullScreenAdActivity.AdEventListener.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(FullScreenAdActivity.AdEventListener.Factory object) {
        object.a = this.a.get();
    }
}
