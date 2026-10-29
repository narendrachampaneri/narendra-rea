package com.vungle.publisher.net.http;

import com.vungle.publisher.db.model.LoggedException;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportExceptionsHttpResponseHandler$$InjectAdapter extends Binding<ReportExceptionsHttpResponseHandler> implements MembersInjector<ReportExceptionsHttpResponseHandler>, Provider<ReportExceptionsHttpResponseHandler> {
    private Binding<LoggedException.Factory> a;
    private Binding<FireAndForgetHttpResponseHandler> b;

    public ReportExceptionsHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.net.http.ReportExceptionsHttpResponseHandler", "members/com.vungle.publisher.net.http.ReportExceptionsHttpResponseHandler", false, ReportExceptionsHttpResponseHandler.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", ReportExceptionsHttpResponseHandler.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler", ReportExceptionsHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportExceptionsHttpResponseHandler get() {
        ReportExceptionsHttpResponseHandler reportExceptionsHttpResponseHandler = new ReportExceptionsHttpResponseHandler();
        injectMembers(reportExceptionsHttpResponseHandler);
        return reportExceptionsHttpResponseHandler;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportExceptionsHttpResponseHandler object) {
        object.b = this.a.get();
        this.b.injectMembers(object);
    }
}
