package com.vungle.publisher.protocol.message;

import com.vungle.publisher.AdConfig;
import com.vungle.publisher.bt;
import com.vungle.publisher.bv;
import com.vungle.publisher.cp;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestAd$DeviceInfo$Factory$$InjectAdapter extends Binding<RequestAd.DeviceInfo.Factory> implements MembersInjector<RequestAd.DeviceInfo.Factory>, Provider<RequestAd.DeviceInfo.Factory> {
    private Binding<AdConfig> a;
    private Binding<bt> b;
    private Binding<RequestAd.DeviceInfo.DisplayDimension.Factory> c;
    private Binding<cp> d;
    private Binding<bv> e;
    private Binding<MessageFactory> f;

    public RequestAd$DeviceInfo$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestAd$DeviceInfo$Factory", "members/com.vungle.publisher.protocol.message.RequestAd$DeviceInfo$Factory", true, RequestAd.DeviceInfo.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.AdConfig", RequestAd.DeviceInfo.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.bt", RequestAd.DeviceInfo.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.protocol.message.RequestAd$DeviceInfo$DisplayDimension$Factory", RequestAd.DeviceInfo.Factory.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.cp", RequestAd.DeviceInfo.Factory.class, getClass().getClassLoader());
        this.e = linker.requestBinding("com.vungle.publisher.bv", RequestAd.DeviceInfo.Factory.class, getClass().getClassLoader());
        this.f = linker.requestBinding("members/com.vungle.publisher.protocol.message.MessageFactory", RequestAd.DeviceInfo.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
        injectMembersBindings.add(this.e);
        injectMembersBindings.add(this.f);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestAd.DeviceInfo.Factory get() {
        RequestAd.DeviceInfo.Factory factory = new RequestAd.DeviceInfo.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestAd.DeviceInfo.Factory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
        object.d = this.d.get();
        object.e = this.e.get();
        this.f.injectMembers(object);
    }
}
