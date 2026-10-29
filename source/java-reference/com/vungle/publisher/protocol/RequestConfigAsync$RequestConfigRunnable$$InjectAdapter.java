package com.vungle.publisher.protocol;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestConfigAsync$RequestConfigRunnable$$InjectAdapter extends Binding<RequestConfigAsync.RequestConfigRunnable> implements MembersInjector<RequestConfigAsync.RequestConfigRunnable>, Provider<RequestConfigAsync.RequestConfigRunnable> {
    private Binding<ProtocolHttpGateway> a;

    public RequestConfigAsync$RequestConfigRunnable$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestConfigAsync$RequestConfigRunnable", "members/com.vungle.publisher.protocol.RequestConfigAsync$RequestConfigRunnable", true, RequestConfigAsync.RequestConfigRunnable.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.ProtocolHttpGateway", RequestConfigAsync.RequestConfigRunnable.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestConfigAsync.RequestConfigRunnable get() {
        RequestConfigAsync.RequestConfigRunnable requestConfigRunnable = new RequestConfigAsync.RequestConfigRunnable();
        injectMembers(requestConfigRunnable);
        return requestConfigRunnable;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestConfigAsync.RequestConfigRunnable object) {
        object.a = this.a.get();
    }
}
