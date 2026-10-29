package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class RequestLocalAdResponse$Factory$$InjectAdapter extends Binding<RequestLocalAdResponse.Factory> implements MembersInjector<RequestLocalAdResponse.Factory>, Provider<RequestLocalAdResponse.Factory> {
    private Binding<RequestAdResponse.a> a;

    public RequestLocalAdResponse$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestLocalAdResponse$Factory", "members/com.vungle.publisher.protocol.message.RequestLocalAdResponse$Factory", true, RequestLocalAdResponse.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.protocol.message.RequestAdResponse$Factory", RequestLocalAdResponse.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestLocalAdResponse.Factory get() {
        RequestLocalAdResponse.Factory factory = new RequestLocalAdResponse.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestLocalAdResponse.Factory object) {
        this.a.injectMembers(object);
    }
}
