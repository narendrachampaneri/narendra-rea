package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class StreamingAdReportEvent$Factory$$InjectAdapter extends Binding<StreamingAdReportEvent.Factory> implements MembersInjector<StreamingAdReportEvent.Factory>, Provider<StreamingAdReportEvent.Factory> {
    private Binding<Provider<StreamingAdReportEvent>> a;
    private Binding<AdReportEvent.Factory> b;

    public StreamingAdReportEvent$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingAdReportEvent$Factory", "members/com.vungle.publisher.db.model.StreamingAdReportEvent$Factory", true, StreamingAdReportEvent.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.StreamingAdReportEvent>", StreamingAdReportEvent.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.AdReportEvent$Factory", StreamingAdReportEvent.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final StreamingAdReportEvent.Factory get() {
        StreamingAdReportEvent.Factory factory = new StreamingAdReportEvent.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(StreamingAdReportEvent.Factory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
