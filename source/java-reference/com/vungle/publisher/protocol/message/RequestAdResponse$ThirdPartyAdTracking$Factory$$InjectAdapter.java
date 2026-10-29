package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestAdResponse$ThirdPartyAdTracking$Factory$$InjectAdapter extends Binding<RequestAdResponse.ThirdPartyAdTracking.Factory> implements MembersInjector<RequestAdResponse.ThirdPartyAdTracking.Factory>, Provider<RequestAdResponse.ThirdPartyAdTracking.Factory> {
    private Binding<RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.Factory> a;
    private Binding<JsonDeserializationFactory> b;

    public RequestAdResponse$ThirdPartyAdTracking$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$Factory", "members/com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$Factory", true, RequestAdResponse.ThirdPartyAdTracking.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$Factory", RequestAdResponse.ThirdPartyAdTracking.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.protocol.message.JsonDeserializationFactory", RequestAdResponse.ThirdPartyAdTracking.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestAdResponse.ThirdPartyAdTracking.Factory get() {
        RequestAdResponse.ThirdPartyAdTracking.Factory factory = new RequestAdResponse.ThirdPartyAdTracking.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestAdResponse.ThirdPartyAdTracking.Factory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
