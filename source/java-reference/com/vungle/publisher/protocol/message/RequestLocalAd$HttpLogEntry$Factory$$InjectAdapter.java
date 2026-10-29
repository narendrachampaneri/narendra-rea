package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class RequestLocalAd$HttpLogEntry$Factory$$InjectAdapter extends Binding<RequestLocalAd.HttpLogEntry.Factory> implements MembersInjector<RequestLocalAd.HttpLogEntry.Factory>, Provider<RequestLocalAd.HttpLogEntry.Factory> {
    private Binding<MessageFactory> a;

    public RequestLocalAd$HttpLogEntry$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestLocalAd$HttpLogEntry$Factory", "members/com.vungle.publisher.protocol.message.RequestLocalAd$HttpLogEntry$Factory", true, RequestLocalAd.HttpLogEntry.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.protocol.message.MessageFactory", RequestLocalAd.HttpLogEntry.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestLocalAd.HttpLogEntry.Factory get() {
        RequestLocalAd.HttpLogEntry.Factory factory = new RequestLocalAd.HttpLogEntry.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestLocalAd.HttpLogEntry.Factory object) {
        this.a.injectMembers(object);
    }
}
