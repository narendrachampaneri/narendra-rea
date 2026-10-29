package com.vungle.publisher.display.view;

import com.vungle.publisher.by;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class VideoFragment$VideoEventListener$$InjectAdapter extends Binding<VideoFragment.VideoEventListener> implements MembersInjector<VideoFragment.VideoEventListener>, Provider<VideoFragment.VideoEventListener> {
    private Binding<by> a;

    public VideoFragment$VideoEventListener$$InjectAdapter() {
        super("com.vungle.publisher.display.view.VideoFragment$VideoEventListener", "members/com.vungle.publisher.display.view.VideoFragment$VideoEventListener", true, VideoFragment.VideoEventListener.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.event.BaseEventListener", VideoFragment.VideoEventListener.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final VideoFragment.VideoEventListener get() {
        VideoFragment.VideoEventListener videoEventListener = new VideoFragment.VideoEventListener();
        injectMembers(videoEventListener);
        return videoEventListener;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(VideoFragment.VideoEventListener object) {
        this.a.injectMembers(object);
    }
}
