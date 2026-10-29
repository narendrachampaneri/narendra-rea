package com.vungle.publisher;

import com.vungle.publisher.device.data.AppFingerprintManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class InitializationEventListener$GlobalEventListener$$InjectAdapter extends Binding<InitializationEventListener.GlobalEventListener> implements MembersInjector<InitializationEventListener.GlobalEventListener>, Provider<InitializationEventListener.GlobalEventListener> {
    private Binding<AppFingerprintManager> a;
    private Binding<by> b;

    public InitializationEventListener$GlobalEventListener$$InjectAdapter() {
        super("com.vungle.publisher.InitializationEventListener$GlobalEventListener", "members/com.vungle.publisher.InitializationEventListener$GlobalEventListener", true, InitializationEventListener.GlobalEventListener.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.device.data.AppFingerprintManager", InitializationEventListener.GlobalEventListener.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.event.BaseEventListener", InitializationEventListener.GlobalEventListener.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final InitializationEventListener.GlobalEventListener get() {
        InitializationEventListener.GlobalEventListener globalEventListener = new InitializationEventListener.GlobalEventListener();
        injectMembers(globalEventListener);
        return globalEventListener;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(InitializationEventListener.GlobalEventListener object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
