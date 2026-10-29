package com.vungle.publisher.protocol;

import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler;
import com.vungle.publisher.protocol.message.RequestLocalAdResponse;
import com.vungle.publisher.reporting.AdServiceReportingHandler;
import dagger.Lazy;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestLocalAdHttpResponseHandler$$InjectAdapter extends Binding<RequestLocalAdHttpResponseHandler> implements MembersInjector<RequestLocalAdHttpResponseHandler>, Provider<RequestLocalAdHttpResponseHandler> {
    private Binding<AdServiceReportingHandler> a;
    private Binding<EventBus> b;
    private Binding<EventTrackingHttpLogEntryDeleteDelegate> c;
    private Binding<Lazy<AdManager>> d;
    private Binding<Lazy<SdkState>> e;
    private Binding<RequestLocalAdResponse.Factory> f;
    private Binding<ScheduledPriorityExecutor> g;
    private Binding<ProtocolHttpGateway> h;
    private Binding<InfiniteRetryHttpResponseHandler> i;

    public RequestLocalAdHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestLocalAdHttpResponseHandler", "members/com.vungle.publisher.protocol.RequestLocalAdHttpResponseHandler", true, RequestLocalAdHttpResponseHandler.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.reporting.AdServiceReportingHandler", RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.event.EventBus", RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.protocol.EventTrackingHttpLogEntryDeleteDelegate", RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.d = linker.requestBinding("dagger.Lazy<com.vungle.publisher.ad.AdManager>", RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.e = linker.requestBinding("dagger.Lazy<com.vungle.publisher.env.SdkState>", RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.f = linker.requestBinding("com.vungle.publisher.protocol.message.RequestLocalAdResponse$Factory", RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.g = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.h = linker.requestBinding("com.vungle.publisher.protocol.ProtocolHttpGateway", RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.i = linker.requestBinding("members/com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler", RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
        injectMembersBindings.add(this.e);
        injectMembersBindings.add(this.f);
        injectMembersBindings.add(this.g);
        injectMembersBindings.add(this.h);
        injectMembersBindings.add(this.i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestLocalAdHttpResponseHandler get() {
        RequestLocalAdHttpResponseHandler requestLocalAdHttpResponseHandler = new RequestLocalAdHttpResponseHandler();
        injectMembers(requestLocalAdHttpResponseHandler);
        return requestLocalAdHttpResponseHandler;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestLocalAdHttpResponseHandler object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
        object.d = this.d.get();
        object.e = this.e.get();
        object.k = this.f.get();
        object.l = this.g.get();
        object.m = this.h.get();
        this.i.injectMembers(object);
    }
}
