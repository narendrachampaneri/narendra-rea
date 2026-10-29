package com.vungle.publisher.display.view;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class VideoFragment$VideoEventListener$Factory$$InjectAdapter extends Binding<VideoFragment.VideoEventListener.Factory> implements MembersInjector<VideoFragment.VideoEventListener.Factory>, Provider<VideoFragment.VideoEventListener.Factory> {
    private Binding<VideoFragment.VideoEventListener> a;

    public VideoFragment$VideoEventListener$Factory$$InjectAdapter() {
        super("com.vungle.publisher.display.view.VideoFragment$VideoEventListener$Factory", "members/com.vungle.publisher.display.view.VideoFragment$VideoEventListener$Factory", true, VideoFragment.VideoEventListener.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.display.view.VideoFragment$VideoEventListener", VideoFragment.VideoEventListener.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final VideoFragment.VideoEventListener.Factory get() {
        VideoFragment.VideoEventListener.Factory factory = new VideoFragment.VideoEventListener.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(VideoFragment.VideoEventListener.Factory object) {
        object.a = this.a.get();
    }
}
