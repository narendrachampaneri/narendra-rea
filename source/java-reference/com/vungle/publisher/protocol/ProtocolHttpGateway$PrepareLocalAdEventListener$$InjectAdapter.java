package com.vungle.publisher.protocol;

import com.vungle.publisher.by;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ProtocolHttpGateway$PrepareLocalAdEventListener$$InjectAdapter extends Binding<ProtocolHttpGateway.PrepareLocalAdEventListener> implements MembersInjector<ProtocolHttpGateway.PrepareLocalAdEventListener>, Provider<ProtocolHttpGateway.PrepareLocalAdEventListener> {
    private Binding<Provider<ProtocolHttpGateway>> a;
    private Binding<by> b;

    public ProtocolHttpGateway$PrepareLocalAdEventListener$$InjectAdapter() {
        super("com.vungle.publisher.protocol.ProtocolHttpGateway$PrepareLocalAdEventListener", "members/com.vungle.publisher.protocol.ProtocolHttpGateway$PrepareLocalAdEventListener", true, ProtocolHttpGateway.PrepareLocalAdEventListener.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.protocol.ProtocolHttpGateway>", ProtocolHttpGateway.PrepareLocalAdEventListener.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.event.BaseEventListener", ProtocolHttpGateway.PrepareLocalAdEventListener.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ProtocolHttpGateway.PrepareLocalAdEventListener get() {
        ProtocolHttpGateway.PrepareLocalAdEventListener prepareLocalAdEventListener = new ProtocolHttpGateway.PrepareLocalAdEventListener();
        injectMembers(prepareLocalAdEventListener);
        return prepareLocalAdEventListener;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ProtocolHttpGateway.PrepareLocalAdEventListener object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
