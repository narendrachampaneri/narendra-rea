package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportLocalAd$Factory$PlayFactory$$InjectAdapter extends Binding<ReportLocalAd.Factory.PlayFactory> implements MembersInjector<ReportLocalAd.Factory.PlayFactory>, Provider<ReportLocalAd.Factory.PlayFactory> {
    private Binding<ReportLocalAd.Factory.PlayFactory.UserActionFactory> a;
    private Binding<ReportAd.Play.Factory> b;

    public ReportLocalAd$Factory$PlayFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.ReportLocalAd$Factory$PlayFactory", "members/com.vungle.publisher.protocol.message.ReportLocalAd$Factory$PlayFactory", true, ReportLocalAd.Factory.PlayFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.ReportLocalAd$Factory$PlayFactory$UserActionFactory", ReportLocalAd.Factory.PlayFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.protocol.message.ReportAd$Play$Factory", ReportLocalAd.Factory.PlayFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportLocalAd.Factory.PlayFactory get() {
        ReportLocalAd.Factory.PlayFactory playFactory = new ReportLocalAd.Factory.PlayFactory();
        injectMembers(playFactory);
        return playFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportLocalAd.Factory.PlayFactory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
