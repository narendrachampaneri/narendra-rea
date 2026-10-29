package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class StreamingAdReport$$InjectAdapter extends Binding<StreamingAdReport> implements MembersInjector<StreamingAdReport>, Provider<StreamingAdReport> {
    private Binding<StreamingAdReport.Factory> a;
    private Binding<StreamingAdPlay.Factory> b;
    private Binding<AdReport> c;

    public StreamingAdReport$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingAdReport", "members/com.vungle.publisher.db.model.StreamingAdReport", false, StreamingAdReport.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.StreamingAdReport$Factory", StreamingAdReport.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.StreamingAdPlay$Factory", StreamingAdReport.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.db.model.AdReport", StreamingAdReport.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final StreamingAdReport get() {
        StreamingAdReport streamingAdReport = new StreamingAdReport();
        injectMembers(streamingAdReport);
        return streamingAdReport;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(StreamingAdReport object) {
        object.p = this.a.get();
        object.q = this.b.get();
        this.c.injectMembers(object);
    }
}
