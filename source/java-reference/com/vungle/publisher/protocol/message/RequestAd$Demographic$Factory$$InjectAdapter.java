package com.vungle.publisher.protocol.message;

import com.vungle.publisher.Demographic;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestAd$Demographic$Factory$$InjectAdapter extends Binding<RequestAd.Demographic.Factory> implements MembersInjector<RequestAd.Demographic.Factory>, Provider<RequestAd.Demographic.Factory> {
    private Binding<Demographic> a;
    private Binding<RequestAd.Demographic.Location.Factory> b;
    private Binding<MessageFactory> c;

    public RequestAd$Demographic$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestAd$Demographic$Factory", "members/com.vungle.publisher.protocol.message.RequestAd$Demographic$Factory", true, RequestAd.Demographic.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.Demographic", RequestAd.Demographic.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.protocol.message.RequestAd$Demographic$Location$Factory", RequestAd.Demographic.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.protocol.message.MessageFactory", RequestAd.Demographic.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestAd.Demographic.Factory get() {
        RequestAd.Demographic.Factory factory = new RequestAd.Demographic.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestAd.Demographic.Factory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
