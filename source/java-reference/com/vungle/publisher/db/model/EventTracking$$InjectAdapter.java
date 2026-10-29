package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class EventTracking$$InjectAdapter extends Binding<EventTracking> implements MembersInjector<EventTracking>, Provider<EventTracking> {
    private Binding<EventTracking.Factory> a;
    private Binding<bi> b;

    public EventTracking$$InjectAdapter() {
        super("com.vungle.publisher.db.model.EventTracking", "members/com.vungle.publisher.db.model.EventTracking", false, EventTracking.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.EventTracking$Factory", EventTracking.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.BaseModel", EventTracking.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final EventTracking get() {
        EventTracking eventTracking = new EventTracking();
        injectMembers(eventTracking);
        return eventTracking;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(EventTracking object) {
        object.d = this.a.get();
        this.b.injectMembers(object);
    }
}
