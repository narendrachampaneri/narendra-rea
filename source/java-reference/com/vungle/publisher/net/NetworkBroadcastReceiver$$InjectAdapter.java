package com.vungle.publisher.net;

import android.content.Context;
import com.vungle.publisher.cp;
import com.vungle.publisher.event.EventBus;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class NetworkBroadcastReceiver$$InjectAdapter extends Binding<NetworkBroadcastReceiver> implements MembersInjector<NetworkBroadcastReceiver>, Provider<NetworkBroadcastReceiver> {
    private Binding<Context> a;
    private Binding<cp> b;
    private Binding<EventBus> c;

    public NetworkBroadcastReceiver$$InjectAdapter() {
        super("com.vungle.publisher.net.NetworkBroadcastReceiver", "members/com.vungle.publisher.net.NetworkBroadcastReceiver", true, NetworkBroadcastReceiver.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("android.content.Context", NetworkBroadcastReceiver.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.cp", NetworkBroadcastReceiver.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.event.EventBus", NetworkBroadcastReceiver.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final NetworkBroadcastReceiver get() {
        NetworkBroadcastReceiver networkBroadcastReceiver = new NetworkBroadcastReceiver();
        injectMembers(networkBroadcastReceiver);
        return networkBroadcastReceiver;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(NetworkBroadcastReceiver object) {
        object.b = this.a.get();
        object.c = this.b.get();
        object.d = this.c.get();
    }
}
