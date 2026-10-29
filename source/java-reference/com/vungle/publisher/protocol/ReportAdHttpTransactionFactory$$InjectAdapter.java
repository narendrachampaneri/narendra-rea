package com.vungle.publisher.protocol;

import com.vungle.publisher.net.http.HttpTransaction;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportAdHttpTransactionFactory$$InjectAdapter extends Binding<ReportAdHttpTransactionFactory> implements MembersInjector<ReportAdHttpTransactionFactory>, Provider<ReportAdHttpTransactionFactory> {
    private Binding<ReportLocalAdHttpRequest.Factory> a;
    private Binding<ReportLocalAdHttpResponseHandler> b;
    private Binding<ReportStreamingAdHttpRequest.Factory> c;
    private Binding<ReportStreamingAdHttpResponseHandler> d;
    private Binding<HttpTransaction.Factory> e;

    public ReportAdHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.ReportAdHttpTransactionFactory", "members/com.vungle.publisher.protocol.ReportAdHttpTransactionFactory", true, ReportAdHttpTransactionFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.ReportLocalAdHttpRequest$Factory", ReportAdHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.protocol.ReportLocalAdHttpResponseHandler", ReportAdHttpTransactionFactory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.protocol.ReportStreamingAdHttpRequest$Factory", ReportAdHttpTransactionFactory.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.protocol.ReportStreamingAdHttpResponseHandler", ReportAdHttpTransactionFactory.class, getClass().getClassLoader());
        this.e = linker.requestBinding("members/com.vungle.publisher.net.http.HttpTransaction$Factory", ReportAdHttpTransactionFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
        injectMembersBindings.add(this.e);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportAdHttpTransactionFactory get() {
        ReportAdHttpTransactionFactory reportAdHttpTransactionFactory = new ReportAdHttpTransactionFactory();
        injectMembers(reportAdHttpTransactionFactory);
        return reportAdHttpTransactionFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportAdHttpTransactionFactory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.d = this.c.get();
        object.e = this.d.get();
        this.e.injectMembers(object);
    }
}
