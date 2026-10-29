package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class StreamingAd$Factory$$InjectAdapter extends Binding<StreamingAd.Factory> implements MembersInjector<StreamingAd.Factory>, Provider<StreamingAd.Factory> {
    private Binding<Provider<StreamingAd>> a;
    private Binding<StreamingVideo.Factory> b;
    private Binding<Ad.Factory> c;

    public StreamingAd$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingAd$Factory", "members/com.vungle.publisher.db.model.StreamingAd$Factory", true, StreamingAd.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.StreamingAd>", StreamingAd.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.StreamingVideo$Factory", StreamingAd.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.db.model.Ad$Factory", StreamingAd.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final StreamingAd.Factory get() {
        StreamingAd.Factory factory = new StreamingAd.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(StreamingAd.Factory object) {
        object.d = this.a.get();
        object.e = this.b.get();
        this.c.injectMembers(object);
    }
}
