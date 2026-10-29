package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class StreamingAdReport$Factory$$InjectAdapter extends Binding<StreamingAdReport.Factory> implements MembersInjector<StreamingAdReport.Factory>, Provider<StreamingAdReport.Factory> {
    private Binding<StreamingAdPlay.Factory> a;
    private Binding<StreamingAd.Factory> b;
    private Binding<Provider<StreamingAdReport>> c;
    private Binding<AdReport.BaseFactory> d;

    public StreamingAdReport$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingAdReport$Factory", "members/com.vungle.publisher.db.model.StreamingAdReport$Factory", true, StreamingAdReport.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.StreamingAdPlay$Factory", StreamingAdReport.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.StreamingAd$Factory", StreamingAdReport.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.StreamingAdReport>", StreamingAdReport.Factory.class, getClass().getClassLoader());
        this.d = linker.requestBinding("members/com.vungle.publisher.db.model.AdReport$BaseFactory", StreamingAdReport.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final StreamingAdReport.Factory get() {
        StreamingAdReport.Factory factory = new StreamingAdReport.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(StreamingAdReport.Factory object) {
        object.b = this.a.get();
        object.d = this.b.get();
        object.e = this.c.get();
        this.d.injectMembers(object);
    }
}
