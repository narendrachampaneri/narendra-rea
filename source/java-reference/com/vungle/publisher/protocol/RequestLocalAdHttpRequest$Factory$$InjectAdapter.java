package com.vungle.publisher.protocol;

import com.vungle.publisher.protocol.message.RequestLocalAd;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestLocalAdHttpRequest$Factory$$InjectAdapter extends Binding<RequestLocalAdHttpRequest.Factory> implements MembersInjector<RequestLocalAdHttpRequest.Factory>, Provider<RequestLocalAdHttpRequest.Factory> {
    private Binding<RequestLocalAd.Factory> a;
    private Binding<ProtocolHttpRequest.a> b;

    public RequestLocalAdHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestLocalAdHttpRequest$Factory", "members/com.vungle.publisher.protocol.RequestLocalAdHttpRequest$Factory", true, RequestLocalAdHttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.RequestLocalAd$Factory", RequestLocalAdHttpRequest.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.protocol.ProtocolHttpRequest$Factory", RequestLocalAdHttpRequest.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestLocalAdHttpRequest.Factory get() {
        RequestLocalAdHttpRequest.Factory factory = new RequestLocalAdHttpRequest.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestLocalAdHttpRequest.Factory object) {
        object.g = this.a.get();
        this.b.injectMembers(object);
    }
}
