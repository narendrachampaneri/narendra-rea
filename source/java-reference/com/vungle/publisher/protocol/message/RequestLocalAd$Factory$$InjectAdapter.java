package com.vungle.publisher.protocol.message;

import com.vungle.publisher.db.model.EventTrackingHttpLogEntry;
import com.vungle.publisher.env.SdkState;
import dagger.Lazy;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class RequestLocalAd$Factory$$InjectAdapter extends Binding<RequestLocalAd.Factory> implements MembersInjector<RequestLocalAd.Factory>, Provider<RequestLocalAd.Factory> {
    private Binding<EventTrackingHttpLogEntry.Factory> a;
    private Binding<RequestLocalAd.HttpLogEntry.Factory> b;
    private Binding<Lazy<SdkState>> c;
    private Binding<RequestAd.a> d;

    public RequestLocalAd$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestLocalAd$Factory", "members/com.vungle.publisher.protocol.message.RequestLocalAd$Factory", true, RequestLocalAd.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.EventTrackingHttpLogEntry$Factory", RequestLocalAd.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.protocol.message.RequestLocalAd$HttpLogEntry$Factory", RequestLocalAd.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("dagger.Lazy<com.vungle.publisher.env.SdkState>", RequestLocalAd.Factory.class, getClass().getClassLoader());
        this.d = linker.requestBinding("members/com.vungle.publisher.protocol.message.RequestAd$Factory", RequestLocalAd.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestLocalAd.Factory get() {
        RequestLocalAd.Factory factory = new RequestLocalAd.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestLocalAd.Factory object) {
        object.e = this.a.get();
        object.f = this.b.get();
        object.g = this.c.get();
        this.d.injectMembers(object);
    }
}
