package com.vungle.publisher.event;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ClientEventListenerAdapter$Factory$$InjectAdapter extends Binding<ClientEventListenerAdapter.Factory> implements MembersInjector<ClientEventListenerAdapter.Factory>, Provider<ClientEventListenerAdapter.Factory> {
    private Binding<Provider<ClientEventListenerAdapter>> a;

    public ClientEventListenerAdapter$Factory$$InjectAdapter() {
        super("com.vungle.publisher.event.ClientEventListenerAdapter$Factory", "members/com.vungle.publisher.event.ClientEventListenerAdapter$Factory", true, ClientEventListenerAdapter.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.event.ClientEventListenerAdapter>", ClientEventListenerAdapter.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ClientEventListenerAdapter.Factory get() {
        ClientEventListenerAdapter.Factory factory = new ClientEventListenerAdapter.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ClientEventListenerAdapter.Factory object) {
        object.a = this.a.get();
    }
}
