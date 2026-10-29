package com.vungle.publisher.display.view;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class VideoFragment$Factory$$InjectAdapter extends Binding<VideoFragment.Factory> implements MembersInjector<VideoFragment.Factory>, Provider<VideoFragment.Factory> {
    private Binding<Provider<VideoFragment>> a;

    public VideoFragment$Factory$$InjectAdapter() {
        super("com.vungle.publisher.display.view.VideoFragment$Factory", "members/com.vungle.publisher.display.view.VideoFragment$Factory", true, VideoFragment.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.display.view.VideoFragment>", VideoFragment.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final VideoFragment.Factory get() {
        VideoFragment.Factory factory = new VideoFragment.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(VideoFragment.Factory object) {
        object.a = this.a.get();
    }
}
