package com.vungle.publisher.event;

import com.vungle.publisher.by;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class BaseEventListener$$InjectAdapter extends Binding<by> implements MembersInjector<by>, Provider<by> {
    private Binding<EventBus> a;

    public BaseEventListener$$InjectAdapter() {
        super("com.vungle.publisher.by", "members/com.vungle.publisher.event.BaseEventListener", false, by.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.event.EventBus", by.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final by get() {
        by byVar = new by();
        injectMembers(byVar);
        return byVar;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(by object) {
        object.h = this.a.get();
    }
}
