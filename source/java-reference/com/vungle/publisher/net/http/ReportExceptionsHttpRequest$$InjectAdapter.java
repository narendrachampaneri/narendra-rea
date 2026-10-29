package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportExceptionsHttpRequest$$InjectAdapter extends Binding<ReportExceptionsHttpRequest> implements MembersInjector<ReportExceptionsHttpRequest>, Provider<ReportExceptionsHttpRequest> {
    private Binding<IngestHttpRequest> a;

    public ReportExceptionsHttpRequest$$InjectAdapter() {
        super("com.vungle.publisher.net.http.ReportExceptionsHttpRequest", "members/com.vungle.publisher.net.http.ReportExceptionsHttpRequest", false, ReportExceptionsHttpRequest.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.net.http.IngestHttpRequest", ReportExceptionsHttpRequest.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportExceptionsHttpRequest get() {
        ReportExceptionsHttpRequest reportExceptionsHttpRequest = new ReportExceptionsHttpRequest();
        injectMembers(reportExceptionsHttpRequest);
        return reportExceptionsHttpRequest;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportExceptionsHttpRequest object) {
        this.a.injectMembers(object);
    }
}
