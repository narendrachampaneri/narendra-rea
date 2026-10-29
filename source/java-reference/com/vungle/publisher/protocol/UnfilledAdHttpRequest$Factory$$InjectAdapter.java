package com.vungle.publisher.protocol;

import com.vungle.publisher.bt;
import com.vungle.publisher.protocol.message.RequestLocalAd;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class UnfilledAdHttpRequest$Factory$$InjectAdapter extends Binding<UnfilledAdHttpRequest.Factory> implements MembersInjector<UnfilledAdHttpRequest.Factory>, Provider<UnfilledAdHttpRequest.Factory> {
    private Binding<bt> a;
    private Binding<RequestLocalAd.Factory> b;
    private Binding<ProtocolHttpRequest.a> c;

    public UnfilledAdHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.UnfilledAdHttpRequest$Factory", "members/com.vungle.publisher.protocol.UnfilledAdHttpRequest$Factory", true, UnfilledAdHttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.bt", UnfilledAdHttpRequest.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.protocol.message.RequestLocalAd$Factory", UnfilledAdHttpRequest.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.protocol.ProtocolHttpRequest$Factory", UnfilledAdHttpRequest.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final UnfilledAdHttpRequest.Factory get() {
        UnfilledAdHttpRequest.Factory factory = new UnfilledAdHttpRequest.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(UnfilledAdHttpRequest.Factory object) {
        object.g = this.a.get();
        object.h = this.b.get();
        this.c.injectMembers(object);
    }
}
