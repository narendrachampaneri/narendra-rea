package com.vungle.publisher.protocol;

import com.vungle.publisher.protocol.message.ReportLocalAd;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportLocalAdHttpRequest$Factory$$InjectAdapter extends Binding<ReportLocalAdHttpRequest.Factory> implements MembersInjector<ReportLocalAdHttpRequest.Factory>, Provider<ReportLocalAdHttpRequest.Factory> {
    private Binding<ReportLocalAd.Factory> a;
    private Binding<ReportAdHttpRequest.Factory> b;

    public ReportLocalAdHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.ReportLocalAdHttpRequest$Factory", "members/com.vungle.publisher.protocol.ReportLocalAdHttpRequest$Factory", true, ReportLocalAdHttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.ReportLocalAd$Factory", ReportLocalAdHttpRequest.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.protocol.ReportAdHttpRequest$Factory", ReportLocalAdHttpRequest.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportLocalAdHttpRequest.Factory get() {
        ReportLocalAdHttpRequest.Factory factory = new ReportLocalAdHttpRequest.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportLocalAdHttpRequest.Factory object) {
        object.g = this.a.get();
        this.b.injectMembers(object);
    }
}
