package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportExceptionsHttpResponseHandler$Factory$$InjectAdapter extends Binding<ReportExceptionsHttpResponseHandler.Factory> implements MembersInjector<ReportExceptionsHttpResponseHandler.Factory>, Provider<ReportExceptionsHttpResponseHandler.Factory> {
    private Binding<Provider<ReportExceptionsHttpResponseHandler>> a;

    public ReportExceptionsHttpResponseHandler$Factory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.ReportExceptionsHttpResponseHandler$Factory", "members/com.vungle.publisher.net.http.ReportExceptionsHttpResponseHandler$Factory", true, ReportExceptionsHttpResponseHandler.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.net.http.ReportExceptionsHttpResponseHandler>", ReportExceptionsHttpResponseHandler.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportExceptionsHttpResponseHandler.Factory get() {
        ReportExceptionsHttpResponseHandler.Factory factory = new ReportExceptionsHttpResponseHandler.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportExceptionsHttpResponseHandler.Factory object) {
        object.a = this.a.get();
    }
}
