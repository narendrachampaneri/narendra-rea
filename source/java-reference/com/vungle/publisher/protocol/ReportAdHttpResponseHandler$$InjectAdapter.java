package com.vungle.publisher.protocol;

import com.vungle.publisher.cx;
import com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler;
import com.vungle.publisher.reporting.AdReportManager;
import dagger.Lazy;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportAdHttpResponseHandler$$InjectAdapter extends Binding<cx> implements MembersInjector<cx> {
    private Binding<Lazy<AdReportManager>> a;
    private Binding<InfiniteRetryHttpResponseHandler> b;

    public ReportAdHttpResponseHandler$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.protocol.ReportAdHttpResponseHandler", false, cx.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("dagger.Lazy<com.vungle.publisher.reporting.AdReportManager>", cx.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler", cx.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(cx object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
