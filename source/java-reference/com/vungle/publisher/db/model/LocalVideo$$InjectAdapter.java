package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LocalVideo$$InjectAdapter extends Binding<LocalVideo> implements MembersInjector<LocalVideo>, Provider<LocalVideo> {
    private Binding<LocalAd.Factory> a;
    private Binding<LocalVideo.Factory> b;
    private Binding<Video> c;

    public LocalVideo$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalVideo", "members/com.vungle.publisher.db.model.LocalVideo", false, LocalVideo.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.LocalAd$Factory", LocalVideo.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LocalVideo$Factory", LocalVideo.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.db.model.Video", LocalVideo.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LocalVideo get() {
        LocalVideo localVideo = new LocalVideo();
        injectMembers(localVideo);
        return localVideo;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LocalVideo object) {
        object.c = this.a.get();
        object.d = this.b.get();
        this.c.injectMembers(object);
    }
}
