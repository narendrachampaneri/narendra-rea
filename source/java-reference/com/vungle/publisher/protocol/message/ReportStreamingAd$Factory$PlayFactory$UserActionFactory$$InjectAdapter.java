package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportStreamingAd$Factory$PlayFactory$UserActionFactory$$InjectAdapter extends Binding<ReportStreamingAd.Factory.PlayFactory.UserActionFactory> implements MembersInjector<ReportStreamingAd.Factory.PlayFactory.UserActionFactory>, Provider<ReportStreamingAd.Factory.PlayFactory.UserActionFactory> {
    private Binding<ReportAd.Play.UserAction.Factory> a;

    public ReportStreamingAd$Factory$PlayFactory$UserActionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.ReportStreamingAd$Factory$PlayFactory$UserActionFactory", "members/com.vungle.publisher.protocol.message.ReportStreamingAd$Factory$PlayFactory$UserActionFactory", true, ReportStreamingAd.Factory.PlayFactory.UserActionFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.protocol.message.ReportAd$Play$UserAction$Factory", ReportStreamingAd.Factory.PlayFactory.UserActionFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportStreamingAd.Factory.PlayFactory.UserActionFactory get() {
        ReportStreamingAd.Factory.PlayFactory.UserActionFactory userActionFactory = new ReportStreamingAd.Factory.PlayFactory.UserActionFactory();
        injectMembers(userActionFactory);
        return userActionFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportStreamingAd.Factory.PlayFactory.UserActionFactory object) {
        this.a.injectMembers(object);
    }
}
