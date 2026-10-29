package com.vungle.publisher.protocol.message;

import com.vungle.publisher.cn;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestAd$Demographic$Location$Factory$$InjectAdapter extends Binding<RequestAd.Demographic.Location.Factory> implements MembersInjector<RequestAd.Demographic.Location.Factory>, Provider<RequestAd.Demographic.Location.Factory> {
    private Binding<cn> a;
    private Binding<MessageFactory> b;

    public RequestAd$Demographic$Location$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestAd$Demographic$Location$Factory", "members/com.vungle.publisher.protocol.message.RequestAd$Demographic$Location$Factory", true, RequestAd.Demographic.Location.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.cn", RequestAd.Demographic.Location.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.protocol.message.MessageFactory", RequestAd.Demographic.Location.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestAd.Demographic.Location.Factory get() {
        RequestAd.Demographic.Location.Factory factory = new RequestAd.Demographic.Location.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestAd.Demographic.Location.Factory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
