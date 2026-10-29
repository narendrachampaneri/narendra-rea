package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportLocalAd$Factory$PlayFactory$UserActionFactory$$InjectAdapter extends Binding<ReportLocalAd.Factory.PlayFactory.UserActionFactory> implements MembersInjector<ReportLocalAd.Factory.PlayFactory.UserActionFactory>, Provider<ReportLocalAd.Factory.PlayFactory.UserActionFactory> {
    private Binding<ReportAd.Play.UserAction.Factory> a;

    public ReportLocalAd$Factory$PlayFactory$UserActionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.ReportLocalAd$Factory$PlayFactory$UserActionFactory", "members/com.vungle.publisher.protocol.message.ReportLocalAd$Factory$PlayFactory$UserActionFactory", true, ReportLocalAd.Factory.PlayFactory.UserActionFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.protocol.message.ReportAd$Play$UserAction$Factory", ReportLocalAd.Factory.PlayFactory.UserActionFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportLocalAd.Factory.PlayFactory.UserActionFactory get() {
        ReportLocalAd.Factory.PlayFactory.UserActionFactory userActionFactory = new ReportLocalAd.Factory.PlayFactory.UserActionFactory();
        injectMembers(userActionFactory);
        return userActionFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportLocalAd.Factory.PlayFactory.UserActionFactory object) {
        this.a.injectMembers(object);
    }
}
