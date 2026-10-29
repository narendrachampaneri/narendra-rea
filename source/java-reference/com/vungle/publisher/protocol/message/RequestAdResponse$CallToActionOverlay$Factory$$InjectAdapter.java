package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestAdResponse$CallToActionOverlay$Factory$$InjectAdapter extends Binding<RequestAdResponse.CallToActionOverlay.Factory> implements MembersInjector<RequestAdResponse.CallToActionOverlay.Factory>, Provider<RequestAdResponse.CallToActionOverlay.Factory> {
    private Binding<JsonDeserializationFactory> a;

    public RequestAdResponse$CallToActionOverlay$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestAdResponse$CallToActionOverlay$Factory", "members/com.vungle.publisher.protocol.message.RequestAdResponse$CallToActionOverlay$Factory", true, RequestAdResponse.CallToActionOverlay.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.protocol.message.JsonDeserializationFactory", RequestAdResponse.CallToActionOverlay.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestAdResponse.CallToActionOverlay.Factory get() {
        RequestAdResponse.CallToActionOverlay.Factory factory = new RequestAdResponse.CallToActionOverlay.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestAdResponse.CallToActionOverlay.Factory object) {
        this.a.injectMembers(object);
    }
}
