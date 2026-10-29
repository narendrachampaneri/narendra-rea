package com.vungle.publisher.protocol;

import com.vungle.publisher.db.model.EventTrackingHttpLogEntry;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class EventTrackingHttpLogEntryDeleteDelegate$$InjectAdapter extends Binding<EventTrackingHttpLogEntryDeleteDelegate> implements MembersInjector<EventTrackingHttpLogEntryDeleteDelegate>, Provider<EventTrackingHttpLogEntryDeleteDelegate> {
    private Binding<EventTrackingHttpLogEntry.Factory> a;

    public EventTrackingHttpLogEntryDeleteDelegate$$InjectAdapter() {
        super("com.vungle.publisher.protocol.EventTrackingHttpLogEntryDeleteDelegate", "members/com.vungle.publisher.protocol.EventTrackingHttpLogEntryDeleteDelegate", true, EventTrackingHttpLogEntryDeleteDelegate.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.EventTrackingHttpLogEntry$Factory", EventTrackingHttpLogEntryDeleteDelegate.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final EventTrackingHttpLogEntryDeleteDelegate get() {
        EventTrackingHttpLogEntryDeleteDelegate eventTrackingHttpLogEntryDeleteDelegate = new EventTrackingHttpLogEntryDeleteDelegate();
        injectMembers(eventTrackingHttpLogEntryDeleteDelegate);
        return eventTrackingHttpLogEntryDeleteDelegate;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(EventTrackingHttpLogEntryDeleteDelegate object) {
        object.a = this.a.get();
    }
}
