package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class RequestStreamingAd$Factory$$InjectAdapter extends Binding<RequestStreamingAd.Factory> implements MembersInjector<RequestStreamingAd.Factory>, Provider<RequestStreamingAd.Factory> {
    private Binding<ExtraInfo.Factory> a;
    private Binding<RequestAd.a> b;

    public RequestStreamingAd$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestStreamingAd$Factory", "members/com.vungle.publisher.protocol.message.RequestStreamingAd$Factory", true, RequestStreamingAd.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.ExtraInfo$Factory", RequestStreamingAd.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.protocol.message.RequestAd$Factory", RequestStreamingAd.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestStreamingAd.Factory get() {
        RequestStreamingAd.Factory factory = new RequestStreamingAd.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestStreamingAd.Factory object) {
        object.e = this.a.get();
        this.b.injectMembers(object);
    }
}
