package com.vungle.publisher;

import com.vungle.publisher.exception.ExceptionManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class InitializationEventListener$InitialConfigUpdatedEventListener$$InjectAdapter extends Binding<InitializationEventListener.InitialConfigUpdatedEventListener> implements MembersInjector<InitializationEventListener.InitialConfigUpdatedEventListener>, Provider<InitializationEventListener.InitialConfigUpdatedEventListener> {
    private Binding<ExceptionManager> a;
    private Binding<by> b;

    public InitializationEventListener$InitialConfigUpdatedEventListener$$InjectAdapter() {
        super("com.vungle.publisher.InitializationEventListener$InitialConfigUpdatedEventListener", "members/com.vungle.publisher.InitializationEventListener$InitialConfigUpdatedEventListener", true, InitializationEventListener.InitialConfigUpdatedEventListener.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.exception.ExceptionManager", InitializationEventListener.InitialConfigUpdatedEventListener.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.event.BaseEventListener", InitializationEventListener.InitialConfigUpdatedEventListener.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final InitializationEventListener.InitialConfigUpdatedEventListener get() {
        InitializationEventListener.InitialConfigUpdatedEventListener initialConfigUpdatedEventListener = new InitializationEventListener.InitialConfigUpdatedEventListener();
        injectMembers(initialConfigUpdatedEventListener);
        return initialConfigUpdatedEventListener;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(InitializationEventListener.InitialConfigUpdatedEventListener object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
