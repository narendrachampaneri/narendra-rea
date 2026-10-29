package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class StreamingAd$$InjectAdapter extends Binding<StreamingAd> implements MembersInjector<StreamingAd>, Provider<StreamingAd> {
    private Binding<StreamingAd.Factory> a;
    private Binding<Ad> b;

    public StreamingAd$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingAd", "members/com.vungle.publisher.db.model.StreamingAd", false, StreamingAd.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.StreamingAd$Factory", StreamingAd.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.Ad", StreamingAd.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final StreamingAd get() {
        StreamingAd streamingAd = new StreamingAd();
        injectMembers(streamingAd);
        return streamingAd;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(StreamingAd object) {
        object.v = this.a.get();
        this.b.injectMembers(object);
    }
}
