package com.vungle.publisher.protocol.message;

import com.vungle.publisher.bt;
import com.vungle.publisher.bv;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestAd$Factory$$InjectAdapter extends Binding<RequestAd.a> implements MembersInjector<RequestAd.a> {
    private Binding<RequestAd.Demographic.Factory> a;
    private Binding<bt> b;
    private Binding<RequestAd.DeviceInfo.Factory> c;
    private Binding<bv> d;
    private Binding<MessageFactory> e;

    public RequestAd$Factory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.protocol.message.RequestAd$Factory", false, RequestAd.a.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.RequestAd$Demographic$Factory", RequestAd.a.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.bt", RequestAd.a.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.protocol.message.RequestAd$DeviceInfo$Factory", RequestAd.a.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.bv", RequestAd.a.class, getClass().getClassLoader());
        this.e = linker.requestBinding("members/com.vungle.publisher.protocol.message.MessageFactory", RequestAd.a.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
        injectMembersBindings.add(this.e);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestAd.a object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
        object.d = this.d.get();
        this.e.injectMembers(object);
    }
}
