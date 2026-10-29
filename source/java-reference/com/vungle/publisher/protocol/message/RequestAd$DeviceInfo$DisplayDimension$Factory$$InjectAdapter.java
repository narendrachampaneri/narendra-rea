package com.vungle.publisher.protocol.message;

import com.vungle.publisher.bt;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestAd$DeviceInfo$DisplayDimension$Factory$$InjectAdapter extends Binding<RequestAd.DeviceInfo.DisplayDimension.Factory> implements MembersInjector<RequestAd.DeviceInfo.DisplayDimension.Factory>, Provider<RequestAd.DeviceInfo.DisplayDimension.Factory> {
    private Binding<bt> a;
    private Binding<MessageFactory> b;

    public RequestAd$DeviceInfo$DisplayDimension$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestAd$DeviceInfo$DisplayDimension$Factory", "members/com.vungle.publisher.protocol.message.RequestAd$DeviceInfo$DisplayDimension$Factory", true, RequestAd.DeviceInfo.DisplayDimension.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.bt", RequestAd.DeviceInfo.DisplayDimension.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.protocol.message.MessageFactory", RequestAd.DeviceInfo.DisplayDimension.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestAd.DeviceInfo.DisplayDimension.Factory get() {
        RequestAd.DeviceInfo.DisplayDimension.Factory factory = new RequestAd.DeviceInfo.DisplayDimension.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestAd.DeviceInfo.DisplayDimension.Factory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
