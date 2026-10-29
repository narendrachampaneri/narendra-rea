package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestAdResponse$Factory$$InjectAdapter extends Binding<RequestAdResponse.a> implements MembersInjector<RequestAdResponse.a> {
    private Binding<RequestAdResponse.CallToActionOverlay.Factory> a;
    private Binding<RequestAdResponse.ThirdPartyAdTracking.Factory> b;
    private Binding<JsonDeserializationFactory> c;

    public RequestAdResponse$Factory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.protocol.message.RequestAdResponse$Factory", false, RequestAdResponse.a.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.RequestAdResponse$CallToActionOverlay$Factory", RequestAdResponse.a.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$Factory", RequestAdResponse.a.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.protocol.message.JsonDeserializationFactory", RequestAdResponse.a.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestAdResponse.a object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
