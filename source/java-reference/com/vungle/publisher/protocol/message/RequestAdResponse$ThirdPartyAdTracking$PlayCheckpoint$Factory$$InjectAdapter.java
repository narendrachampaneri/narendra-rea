package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$Factory$$InjectAdapter extends Binding<RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.Factory> implements MembersInjector<RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.Factory>, Provider<RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.Factory> {
    private Binding<JsonDeserializationFactory> a;

    public RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$Factory", "members/com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$Factory", true, RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.protocol.message.JsonDeserializationFactory", RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.Factory get() {
        RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.Factory factory = new RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.Factory object) {
        this.a.injectMembers(object);
    }
}
