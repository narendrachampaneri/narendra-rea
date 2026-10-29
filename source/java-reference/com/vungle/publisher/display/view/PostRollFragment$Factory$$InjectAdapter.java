package com.vungle.publisher.display.view;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class PostRollFragment$Factory$$InjectAdapter extends Binding<PostRollFragment.Factory> implements MembersInjector<PostRollFragment.Factory>, Provider<PostRollFragment.Factory> {
    private Binding<Provider<PostRollFragment>> a;

    public PostRollFragment$Factory$$InjectAdapter() {
        super("com.vungle.publisher.display.view.PostRollFragment$Factory", "members/com.vungle.publisher.display.view.PostRollFragment$Factory", true, PostRollFragment.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.display.view.PostRollFragment>", PostRollFragment.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final PostRollFragment.Factory get() {
        PostRollFragment.Factory factory = new PostRollFragment.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(PostRollFragment.Factory object) {
        object.a = this.a.get();
    }
}
