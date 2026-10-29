package com.vungle.publisher.protocol;

import com.vungle.publisher.SafeBundleAdConfigFactory;
import com.vungle.publisher.cs;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.reporting.AdServiceReportingHandler;
import dagger.Lazy;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ProtocolHttpGateway$$InjectAdapter extends Binding<ProtocolHttpGateway> implements MembersInjector<ProtocolHttpGateway>, Provider<ProtocolHttpGateway> {
    private Binding<EventBus> a;
    private Binding<ProtocolHttpGateway.PrepareLocalAdEventListener> b;
    private Binding<ReportAdHttpTransactionFactory> c;
    private Binding<RequestConfigHttpTransactionFactory> d;
    private Binding<RequestLocalAdHttpTransactionFactory> e;
    private Binding<RequestStreamingAdHttpTransactionFactory> f;
    private Binding<SafeBundleAdConfigFactory> g;
    private Binding<SessionEndHttpTransactionFactory> h;
    private Binding<SessionStartHttpTransactionFactory> i;
    private Binding<Lazy<TrackInstallHttpTransactionFactory>> j;
    private Binding<UnfilledAdHttpTransactionFactory> k;
    private Binding<AdServiceReportingHandler> l;
    private Binding<cs> m;

    public ProtocolHttpGateway$$InjectAdapter() {
        super("com.vungle.publisher.protocol.ProtocolHttpGateway", "members/com.vungle.publisher.protocol.ProtocolHttpGateway", true, ProtocolHttpGateway.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.event.EventBus", ProtocolHttpGateway.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.protocol.ProtocolHttpGateway$PrepareLocalAdEventListener", ProtocolHttpGateway.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.protocol.ReportAdHttpTransactionFactory", ProtocolHttpGateway.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.protocol.RequestConfigHttpTransactionFactory", ProtocolHttpGateway.class, getClass().getClassLoader());
        this.e = linker.requestBinding("com.vungle.publisher.protocol.RequestLocalAdHttpTransactionFactory", ProtocolHttpGateway.class, getClass().getClassLoader());
        this.f = linker.requestBinding("com.vungle.publisher.protocol.RequestStreamingAdHttpTransactionFactory", ProtocolHttpGateway.class, getClass().getClassLoader());
        this.g = linker.requestBinding("com.vungle.publisher.SafeBundleAdConfigFactory", ProtocolHttpGateway.class, getClass().getClassLoader());
        this.h = linker.requestBinding("com.vungle.publisher.protocol.SessionEndHttpTransactionFactory", ProtocolHttpGateway.class, getClass().getClassLoader());
        this.i = linker.requestBinding("com.vungle.publisher.protocol.SessionStartHttpTransactionFactory", ProtocolHttpGateway.class, getClass().getClassLoader());
        this.j = linker.requestBinding("dagger.Lazy<com.vungle.publisher.protocol.TrackInstallHttpTransactionFactory>", ProtocolHttpGateway.class, getClass().getClassLoader());
        this.k = linker.requestBinding("com.vungle.publisher.protocol.UnfilledAdHttpTransactionFactory", ProtocolHttpGateway.class, getClass().getClassLoader());
        this.l = linker.requestBinding("com.vungle.publisher.reporting.AdServiceReportingHandler", ProtocolHttpGateway.class, getClass().getClassLoader());
        this.m = linker.requestBinding("members/com.vungle.publisher.net.http.HttpGateway", ProtocolHttpGateway.class, getClass().getClassLoader(), false, true);
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
        injectMembersBindings.add(this.j);
        injectMembersBindings.add(this.k);
        injectMembersBindings.add(this.l);
        injectMembersBindings.add(this.m);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ProtocolHttpGateway get() {
        ProtocolHttpGateway protocolHttpGateway = new ProtocolHttpGateway();
        injectMembers(protocolHttpGateway);
        return protocolHttpGateway;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ProtocolHttpGateway object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.f = this.c.get();
        object.g = this.d.get();
        object.h = this.e.get();
        object.i = this.f.get();
        object.j = this.g.get();
        object.k = this.h.get();
        object.l = this.i.get();
        object.m = this.j.get();
        object.n = this.k.get();
        object.o = this.l.get();
        this.m.injectMembers(object);
    }
}
