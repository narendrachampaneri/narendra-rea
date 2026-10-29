package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestConfigResponse$Factory$$InjectAdapter extends Binding<RequestConfigResponse.Factory> implements MembersInjector<RequestConfigResponse.Factory>, Provider<RequestConfigResponse.Factory> {
    private Binding<JsonDeserializationFactory> a;

    public RequestConfigResponse$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestConfigResponse$Factory", "members/com.vungle.publisher.protocol.message.RequestConfigResponse$Factory", true, RequestConfigResponse.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.protocol.message.JsonDeserializationFactory", RequestConfigResponse.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestConfigResponse.Factory get() {
        RequestConfigResponse.Factory factory = new RequestConfigResponse.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestConfigResponse.Factory object) {
        this.a.injectMembers(object);
    }
}
