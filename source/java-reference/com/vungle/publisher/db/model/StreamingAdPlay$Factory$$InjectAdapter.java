package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class StreamingAdPlay$Factory$$InjectAdapter extends Binding<StreamingAdPlay.Factory> implements MembersInjector<StreamingAdPlay.Factory>, Provider<StreamingAdPlay.Factory> {
    private Binding<Provider<StreamingAdPlay>> a;
    private Binding<StreamingAdReportEvent.Factory> b;
    private Binding<AdPlay.Factory> c;

    public StreamingAdPlay$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingAdPlay$Factory", "members/com.vungle.publisher.db.model.StreamingAdPlay$Factory", true, StreamingAdPlay.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.StreamingAdPlay>", StreamingAdPlay.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.StreamingAdReportEvent$Factory", StreamingAdPlay.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.db.model.AdPlay$Factory", StreamingAdPlay.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final StreamingAdPlay.Factory get() {
        StreamingAdPlay.Factory factory = new StreamingAdPlay.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(StreamingAdPlay.Factory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
