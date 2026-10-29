package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class StreamingVideo$$InjectAdapter extends Binding<StreamingVideo> implements MembersInjector<StreamingVideo>, Provider<StreamingVideo> {
    private Binding<StreamingAd.Factory> a;
    private Binding<StreamingVideo.Factory> b;
    private Binding<Video> c;

    public StreamingVideo$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingVideo", "members/com.vungle.publisher.db.model.StreamingVideo", false, StreamingVideo.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.StreamingAd$Factory", StreamingVideo.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.StreamingVideo$Factory", StreamingVideo.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.db.model.Video", StreamingVideo.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final StreamingVideo get() {
        StreamingVideo streamingVideo = new StreamingVideo();
        injectMembers(streamingVideo);
        return streamingVideo;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(StreamingVideo object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
