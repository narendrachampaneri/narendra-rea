package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LocalVideo$Factory$$InjectAdapter extends Binding<LocalVideo.Factory> implements MembersInjector<LocalVideo.Factory>, Provider<LocalVideo.Factory> {
    private Binding<Provider<LocalVideo>> a;
    private Binding<LocalViewableDelegate.Factory> b;
    private Binding<Video.Factory> c;

    public LocalVideo$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalVideo$Factory", "members/com.vungle.publisher.db.model.LocalVideo$Factory", true, LocalVideo.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.LocalVideo>", LocalVideo.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LocalViewableDelegate$Factory", LocalVideo.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.db.model.Video$Factory", LocalVideo.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LocalVideo.Factory get() {
        LocalVideo.Factory factory = new LocalVideo.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LocalVideo.Factory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
