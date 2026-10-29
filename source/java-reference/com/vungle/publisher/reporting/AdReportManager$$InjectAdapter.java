package com.vungle.publisher.reporting;

import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.LocalAdReport;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.db.model.StreamingAdReport;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class AdReportManager$$InjectAdapter extends Binding<AdReportManager> implements MembersInjector<AdReportManager>, Provider<AdReportManager> {
    private Binding<EventBus> a;
    private Binding<AdReport.Factory> b;
    private Binding<LocalAdReport.Factory> c;
    private Binding<ProtocolHttpGateway> d;
    private Binding<SdkState> e;
    private Binding<StreamingAdReport.Factory> f;
    private Binding<LoggedException.Factory> g;

    public AdReportManager$$InjectAdapter() {
        super("com.vungle.publisher.reporting.AdReportManager", "members/com.vungle.publisher.reporting.AdReportManager", true, AdReportManager.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.event.EventBus", AdReportManager.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.AdReport$Factory", AdReportManager.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.db.model.LocalAdReport$Factory", AdReportManager.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.protocol.ProtocolHttpGateway", AdReportManager.class, getClass().getClassLoader());
        this.e = linker.requestBinding("com.vungle.publisher.env.SdkState", AdReportManager.class, getClass().getClassLoader());
        this.f = linker.requestBinding("com.vungle.publisher.db.model.StreamingAdReport$Factory", AdReportManager.class, getClass().getClassLoader());
        this.g = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", AdReportManager.class, getClass().getClassLoader());
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
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdReportManager get() {
        AdReportManager adReportManager = new AdReportManager();
        injectMembers(adReportManager);
        return adReportManager;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdReportManager object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
        object.d = this.d.get();
        object.e = this.e.get();
        object.f = this.f.get();
        object.g = this.g.get();
    }
}
