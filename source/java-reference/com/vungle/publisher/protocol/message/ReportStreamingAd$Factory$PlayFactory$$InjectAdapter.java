package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportStreamingAd$Factory$PlayFactory$$InjectAdapter extends Binding<ReportStreamingAd.Factory.PlayFactory> implements MembersInjector<ReportStreamingAd.Factory.PlayFactory>, Provider<ReportStreamingAd.Factory.PlayFactory> {
    private Binding<ReportStreamingAd.Factory.PlayFactory.UserActionFactory> a;
    private Binding<ReportAd.Play.Factory> b;

    public ReportStreamingAd$Factory$PlayFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.ReportStreamingAd$Factory$PlayFactory", "members/com.vungle.publisher.protocol.message.ReportStreamingAd$Factory$PlayFactory", true, ReportStreamingAd.Factory.PlayFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.ReportStreamingAd$Factory$PlayFactory$UserActionFactory", ReportStreamingAd.Factory.PlayFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.protocol.message.ReportAd$Play$Factory", ReportStreamingAd.Factory.PlayFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportStreamingAd.Factory.PlayFactory get() {
        ReportStreamingAd.Factory.PlayFactory playFactory = new ReportStreamingAd.Factory.PlayFactory();
        injectMembers(playFactory);
        return playFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportStreamingAd.Factory.PlayFactory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
