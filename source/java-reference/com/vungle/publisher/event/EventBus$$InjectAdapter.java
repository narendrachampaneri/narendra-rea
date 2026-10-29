package com.vungle.publisher.event;

import dagger.internal.Binding;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class EventBus$$InjectAdapter extends Binding<EventBus> implements Provider<EventBus> {
    public EventBus$$InjectAdapter() {
        super("com.vungle.publisher.event.EventBus", "members/com.vungle.publisher.event.EventBus", true, EventBus.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final EventBus get() {
        return new EventBus();
    }
}
