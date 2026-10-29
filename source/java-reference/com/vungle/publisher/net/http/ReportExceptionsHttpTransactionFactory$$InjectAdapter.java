package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportExceptionsHttpTransactionFactory$$InjectAdapter extends Binding<ReportExceptionsHttpTransactionFactory> implements MembersInjector<ReportExceptionsHttpTransactionFactory>, Provider<ReportExceptionsHttpTransactionFactory> {
    private Binding<ReportExceptionsHttpRequest.Factory> a;
    private Binding<ReportExceptionsHttpResponseHandler.Factory> b;
    private Binding<HttpTransaction.Factory> c;

    public ReportExceptionsHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.ReportExceptionsHttpTransactionFactory", "members/com.vungle.publisher.net.http.ReportExceptionsHttpTransactionFactory", true, ReportExceptionsHttpTransactionFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.net.http.ReportExceptionsHttpRequest$Factory", ReportExceptionsHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.net.http.ReportExceptionsHttpResponseHandler$Factory", ReportExceptionsHttpTransactionFactory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.net.http.HttpTransaction$Factory", ReportExceptionsHttpTransactionFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportExceptionsHttpTransactionFactory get() {
        ReportExceptionsHttpTransactionFactory reportExceptionsHttpTransactionFactory = new ReportExceptionsHttpTransactionFactory();
        injectMembers(reportExceptionsHttpTransactionFactory);
        return reportExceptionsHttpTransactionFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportExceptionsHttpTransactionFactory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
