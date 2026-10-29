package com.vungle.publisher.protocol;

import com.vungle.publisher.protocol.message.ReportStreamingAd;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportStreamingAdHttpRequest$Factory$$InjectAdapter extends Binding<ReportStreamingAdHttpRequest.Factory> implements MembersInjector<ReportStreamingAdHttpRequest.Factory>, Provider<ReportStreamingAdHttpRequest.Factory> {
    private Binding<ReportStreamingAd.Factory> a;
    private Binding<ReportAdHttpRequest.Factory> b;

    public ReportStreamingAdHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.ReportStreamingAdHttpRequest$Factory", "members/com.vungle.publisher.protocol.ReportStreamingAdHttpRequest$Factory", true, ReportStreamingAdHttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.ReportStreamingAd$Factory", ReportStreamingAdHttpRequest.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.protocol.ReportAdHttpRequest$Factory", ReportStreamingAdHttpRequest.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportStreamingAdHttpRequest.Factory get() {
        ReportStreamingAdHttpRequest.Factory factory = new ReportStreamingAdHttpRequest.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportStreamingAdHttpRequest.Factory object) {
        object.g = this.a.get();
        this.b.injectMembers(object);
    }
}
