package com.vungle.publisher.protocol;

import com.vungle.publisher.cx;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportLocalAdHttpResponseHandler$$InjectAdapter extends Binding<ReportLocalAdHttpResponseHandler> implements MembersInjector<ReportLocalAdHttpResponseHandler>, Provider<ReportLocalAdHttpResponseHandler> {
    private Binding<EventTrackingHttpLogEntryDeleteDelegate> a;
    private Binding<cx> b;

    public ReportLocalAdHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.protocol.ReportLocalAdHttpResponseHandler", "members/com.vungle.publisher.protocol.ReportLocalAdHttpResponseHandler", true, ReportLocalAdHttpResponseHandler.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.EventTrackingHttpLogEntryDeleteDelegate", ReportLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.protocol.ReportAdHttpResponseHandler", ReportLocalAdHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportLocalAdHttpResponseHandler get() {
        ReportLocalAdHttpResponseHandler reportLocalAdHttpResponseHandler = new ReportLocalAdHttpResponseHandler();
        injectMembers(reportLocalAdHttpResponseHandler);
        return reportLocalAdHttpResponseHandler;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportLocalAdHttpResponseHandler object) {
        object.b = this.a.get();
        this.b.injectMembers(object);
    }
}
