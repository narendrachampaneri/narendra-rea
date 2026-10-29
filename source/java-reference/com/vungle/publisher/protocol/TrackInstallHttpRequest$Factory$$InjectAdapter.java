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
public final class TrackInstallHttpRequest$Factory$$InjectAdapter extends Binding<TrackInstallHttpRequest.Factory> implements MembersInjector<TrackInstallHttpRequest.Factory>, Provider<TrackInstallHttpRequest.Factory> {
    private Binding<bt> a;
    private Binding<RequestLocalAd.Factory> b;
    private Binding<ProtocolHttpRequest.a> c;

    public TrackInstallHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.TrackInstallHttpRequest$Factory", "members/com.vungle.publisher.protocol.TrackInstallHttpRequest$Factory", true, TrackInstallHttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.bt", TrackInstallHttpRequest.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.protocol.message.RequestLocalAd$Factory", TrackInstallHttpRequest.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.protocol.ProtocolHttpRequest$Factory", TrackInstallHttpRequest.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final TrackInstallHttpRequest.Factory get() {
        TrackInstallHttpRequest.Factory factory = new TrackInstallHttpRequest.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(TrackInstallHttpRequest.Factory object) {
        object.g = this.a.get();
        object.h = this.b.get();
        this.c.injectMembers(object);
    }
}
