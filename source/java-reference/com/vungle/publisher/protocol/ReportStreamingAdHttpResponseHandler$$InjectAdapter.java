package com.vungle.publisher.protocol;

import com.vungle.publisher.cx;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportStreamingAdHttpResponseHandler$$InjectAdapter extends Binding<ReportStreamingAdHttpResponseHandler> implements MembersInjector<ReportStreamingAdHttpResponseHandler>, Provider<ReportStreamingAdHttpResponseHandler> {
    private Binding<cx> a;

    public ReportStreamingAdHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.protocol.ReportStreamingAdHttpResponseHandler", "members/com.vungle.publisher.protocol.ReportStreamingAdHttpResponseHandler", true, ReportStreamingAdHttpResponseHandler.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.protocol.ReportAdHttpResponseHandler", ReportStreamingAdHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportStreamingAdHttpResponseHandler get() {
        ReportStreamingAdHttpResponseHandler reportStreamingAdHttpResponseHandler = new ReportStreamingAdHttpResponseHandler();
        injectMembers(reportStreamingAdHttpResponseHandler);
        return reportStreamingAdHttpResponseHandler;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportStreamingAdHttpResponseHandler object) {
        this.a.injectMembers(object);
    }
}
