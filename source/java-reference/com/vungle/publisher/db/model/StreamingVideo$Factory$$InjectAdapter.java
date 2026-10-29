package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class StreamingVideo$Factory$$InjectAdapter extends Binding<StreamingVideo.Factory> implements MembersInjector<StreamingVideo.Factory>, Provider<StreamingVideo.Factory> {
    private Binding<Provider<StreamingVideo>> a;
    private Binding<Video.Factory> b;

    public StreamingVideo$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingVideo$Factory", "members/com.vungle.publisher.db.model.StreamingVideo$Factory", true, StreamingVideo.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.StreamingVideo>", StreamingVideo.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.Video$Factory", StreamingVideo.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final StreamingVideo.Factory get() {
        StreamingVideo.Factory factory = new StreamingVideo.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(StreamingVideo.Factory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
