package com.vungle.publisher.protocol;

import com.vungle.publisher.protocol.message.RequestConfig;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestConfigHttpRequest$Factory$$InjectAdapter extends Binding<RequestConfigHttpRequest.Factory> implements MembersInjector<RequestConfigHttpRequest.Factory>, Provider<RequestConfigHttpRequest.Factory> {
    private Binding<RequestConfigHttpRequest> a;
    private Binding<RequestConfig> b;
    private Binding<ProtocolHttpRequest.a> c;

    public RequestConfigHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestConfigHttpRequest$Factory", "members/com.vungle.publisher.protocol.RequestConfigHttpRequest$Factory", true, RequestConfigHttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.RequestConfigHttpRequest", RequestConfigHttpRequest.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.protocol.message.RequestConfig", RequestConfigHttpRequest.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.protocol.ProtocolHttpRequest$Factory", RequestConfigHttpRequest.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestConfigHttpRequest.Factory get() {
        RequestConfigHttpRequest.Factory factory = new RequestConfigHttpRequest.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestConfigHttpRequest.Factory object) {
        object.g = this.a.get();
        object.h = this.b.get();
        this.c.injectMembers(object);
    }
}
