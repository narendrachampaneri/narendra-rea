package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class EventTrackingHttpLogEntry$Factory$$InjectAdapter extends Binding<EventTrackingHttpLogEntry.Factory> implements MembersInjector<EventTrackingHttpLogEntry.Factory>, Provider<EventTrackingHttpLogEntry.Factory> {
    private Binding<Provider<EventTrackingHttpLogEntry>> a;
    private Binding<bi.a> b;

    public EventTrackingHttpLogEntry$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.EventTrackingHttpLogEntry$Factory", "members/com.vungle.publisher.db.model.EventTrackingHttpLogEntry$Factory", true, EventTrackingHttpLogEntry.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.EventTrackingHttpLogEntry>", EventTrackingHttpLogEntry.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.BaseModel$Factory", EventTrackingHttpLogEntry.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final EventTrackingHttpLogEntry.Factory get() {
        EventTrackingHttpLogEntry.Factory factory = new EventTrackingHttpLogEntry.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(EventTrackingHttpLogEntry.Factory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
