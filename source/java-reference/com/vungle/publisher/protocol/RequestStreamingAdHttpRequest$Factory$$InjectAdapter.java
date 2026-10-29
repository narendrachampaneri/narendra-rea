package com.vungle.publisher.protocol;

import com.vungle.publisher.protocol.message.RequestStreamingAd;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestStreamingAdHttpRequest$Factory$$InjectAdapter extends Binding<RequestStreamingAdHttpRequest.Factory> implements MembersInjector<RequestStreamingAdHttpRequest.Factory>, Provider<RequestStreamingAdHttpRequest.Factory> {
    private Binding<RequestStreamingAd.Factory> a;
    private Binding<ProtocolHttpRequest.a> b;

    public RequestStreamingAdHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestStreamingAdHttpRequest$Factory", "members/com.vungle.publisher.protocol.RequestStreamingAdHttpRequest$Factory", true, RequestStreamingAdHttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.RequestStreamingAd$Factory", RequestStreamingAdHttpRequest.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.protocol.ProtocolHttpRequest$Factory", RequestStreamingAdHttpRequest.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestStreamingAdHttpRequest.Factory get() {
        RequestStreamingAdHttpRequest.Factory factory = new RequestStreamingAdHttpRequest.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestStreamingAdHttpRequest.Factory object) {
        object.g = this.a.get();
        this.b.injectMembers(object);
    }
}
