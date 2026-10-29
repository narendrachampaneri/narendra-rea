package com.vungle.publisher.protocol;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestConfigHttpRequest$$InjectAdapter extends Binding<RequestConfigHttpRequest> implements MembersInjector<RequestConfigHttpRequest>, Provider<RequestConfigHttpRequest> {
    private Binding<ProtocolHttpRequest> a;

    public RequestConfigHttpRequest$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestConfigHttpRequest", "members/com.vungle.publisher.protocol.RequestConfigHttpRequest", true, RequestConfigHttpRequest.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.protocol.ProtocolHttpRequest", RequestConfigHttpRequest.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestConfigHttpRequest get() {
        RequestConfigHttpRequest requestConfigHttpRequest = new RequestConfigHttpRequest();
        injectMembers(requestConfigHttpRequest);
        return requestConfigHttpRequest;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestConfigHttpRequest object) {
        this.a.injectMembers(object);
    }
}
