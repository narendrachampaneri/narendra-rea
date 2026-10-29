package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class StreamingAdPlay$$InjectAdapter extends Binding<StreamingAdPlay> implements MembersInjector<StreamingAdPlay>, Provider<StreamingAdPlay> {
    private Binding<StreamingAdPlay.Factory> a;
    private Binding<StreamingAdReportEvent.Factory> b;
    private Binding<AdPlay> c;

    public StreamingAdPlay$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingAdPlay", "members/com.vungle.publisher.db.model.StreamingAdPlay", false, StreamingAdPlay.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.StreamingAdPlay$Factory", StreamingAdPlay.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.StreamingAdReportEvent$Factory", StreamingAdPlay.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.db.model.AdPlay", StreamingAdPlay.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final StreamingAdPlay get() {
        StreamingAdPlay streamingAdPlay = new StreamingAdPlay();
        injectMembers(streamingAdPlay);
        return streamingAdPlay;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(StreamingAdPlay object) {
        object.e = this.a.get();
        object.f = this.b.get();
        this.c.injectMembers(object);
    }
}
