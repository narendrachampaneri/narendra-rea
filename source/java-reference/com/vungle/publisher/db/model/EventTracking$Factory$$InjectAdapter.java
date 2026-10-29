package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class EventTracking$Factory$$InjectAdapter extends Binding<EventTracking.Factory> implements MembersInjector<EventTracking.Factory>, Provider<EventTracking.Factory> {
    private Binding<Provider<EventTracking>> a;
    private Binding<bi.a> b;

    public EventTracking$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.EventTracking$Factory", "members/com.vungle.publisher.db.model.EventTracking$Factory", true, EventTracking.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.EventTracking>", EventTracking.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.BaseModel$Factory", EventTracking.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final EventTracking.Factory get() {
        EventTracking.Factory factory = new EventTracking.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(EventTracking.Factory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
