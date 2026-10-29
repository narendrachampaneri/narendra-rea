package com.vungle.publisher.display.view;

import com.vungle.publisher.display.controller.AdWebChromeClient;
import com.vungle.publisher.event.EventBus;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class PostRollFragment$$InjectAdapter extends Binding<PostRollFragment> implements MembersInjector<PostRollFragment>, Provider<PostRollFragment> {
    private Binding<EventBus> a;
    private Binding<AdWebChromeClient> b;
    private Binding<WebViewFragment> c;

    public PostRollFragment$$InjectAdapter() {
        super("com.vungle.publisher.display.view.PostRollFragment", "members/com.vungle.publisher.display.view.PostRollFragment", false, PostRollFragment.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.event.EventBus", PostRollFragment.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.display.controller.AdWebChromeClient", PostRollFragment.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.display.view.WebViewFragment", PostRollFragment.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final PostRollFragment get() {
        PostRollFragment postRollFragment = new PostRollFragment();
        injectMembers(postRollFragment);
        return postRollFragment;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(PostRollFragment object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
