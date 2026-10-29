package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class EventTrackingHttpLogEntry$$InjectAdapter extends Binding<EventTrackingHttpLogEntry> implements MembersInjector<EventTrackingHttpLogEntry>, Provider<EventTrackingHttpLogEntry> {
    private Binding<EventTrackingHttpLogEntry.Factory> a;
    private Binding<bi> b;

    public EventTrackingHttpLogEntry$$InjectAdapter() {
        super("com.vungle.publisher.db.model.EventTrackingHttpLogEntry", "members/com.vungle.publisher.db.model.EventTrackingHttpLogEntry", false, EventTrackingHttpLogEntry.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.EventTrackingHttpLogEntry$Factory", EventTrackingHttpLogEntry.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.BaseModel", EventTrackingHttpLogEntry.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final EventTrackingHttpLogEntry get() {
        EventTrackingHttpLogEntry eventTrackingHttpLogEntry = new EventTrackingHttpLogEntry();
        injectMembers(eventTrackingHttpLogEntry);
        return eventTrackingHttpLogEntry;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(EventTrackingHttpLogEntry object) {
        object.h = this.a.get();
        this.b.injectMembers(object);
    }
}
