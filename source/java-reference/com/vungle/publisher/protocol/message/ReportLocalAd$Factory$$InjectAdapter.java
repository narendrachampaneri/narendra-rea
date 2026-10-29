package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportLocalAd$Factory$$InjectAdapter extends Binding<ReportLocalAd.Factory> implements MembersInjector<ReportLocalAd.Factory>, Provider<ReportLocalAd.Factory> {
    private Binding<ReportLocalAd.Factory.PlayFactory> a;
    private Binding<RequestLocalAd.Factory> b;
    private Binding<ReportAd.Factory> c;

    public ReportLocalAd$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.ReportLocalAd$Factory", "members/com.vungle.publisher.protocol.message.ReportLocalAd$Factory", true, ReportLocalAd.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.ReportLocalAd$Factory$PlayFactory", ReportLocalAd.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.protocol.message.RequestLocalAd$Factory", ReportLocalAd.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.protocol.message.ReportAd$Factory", ReportLocalAd.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportLocalAd.Factory get() {
        ReportLocalAd.Factory factory = new ReportLocalAd.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportLocalAd.Factory object) {
        object.b = this.a.get();
        object.c = this.b.get();
        this.c.injectMembers(object);
    }
}
