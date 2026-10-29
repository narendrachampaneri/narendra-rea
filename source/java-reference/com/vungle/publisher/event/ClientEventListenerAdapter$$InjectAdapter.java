package com.vungle.publisher.event;

import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.by;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ClientEventListenerAdapter$$InjectAdapter extends Binding<ClientEventListenerAdapter> implements MembersInjector<ClientEventListenerAdapter>, Provider<ClientEventListenerAdapter> {
    private Binding<ScheduledPriorityExecutor> a;
    private Binding<AdManager> b;
    private Binding<by> c;

    public ClientEventListenerAdapter$$InjectAdapter() {
        super("com.vungle.publisher.event.ClientEventListenerAdapter", "members/com.vungle.publisher.event.ClientEventListenerAdapter", false, ClientEventListenerAdapter.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", ClientEventListenerAdapter.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.ad.AdManager", ClientEventListenerAdapter.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.event.BaseEventListener", ClientEventListenerAdapter.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ClientEventListenerAdapter get() {
        ClientEventListenerAdapter clientEventListenerAdapter = new ClientEventListenerAdapter();
        injectMembers(clientEventListenerAdapter);
        return clientEventListenerAdapter;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ClientEventListenerAdapter object) {
        object.b = this.a.get();
        object.c = this.b.get();
        this.c.injectMembers(object);
    }
}
