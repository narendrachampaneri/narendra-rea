package com.vungle.publisher.reporting;

import com.vungle.publisher.by;
import com.vungle.publisher.cr;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.LoggedException;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class AdReportEventListener$$InjectAdapter extends Binding<AdReportEventListener> implements MembersInjector<AdReportEventListener>, Provider<AdReportEventListener> {
    private Binding<AdServiceReportingHandler> a;
    private Binding<AdReport.Factory> b;
    private Binding<AdReportManager> c;
    private Binding<LoggedException.Factory> d;
    private Binding<cr> e;
    private Binding<by> f;

    public AdReportEventListener$$InjectAdapter() {
        super("com.vungle.publisher.reporting.AdReportEventListener", "members/com.vungle.publisher.reporting.AdReportEventListener", true, AdReportEventListener.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.reporting.AdServiceReportingHandler", AdReportEventListener.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.AdReport$Factory", AdReportEventListener.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.reporting.AdReportManager", AdReportEventListener.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", AdReportEventListener.class, getClass().getClassLoader());
        this.e = linker.requestBinding("com.vungle.publisher.cr", AdReportEventListener.class, getClass().getClassLoader());
        this.f = linker.requestBinding("members/com.vungle.publisher.event.BaseEventListener", AdReportEventListener.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
        injectMembersBindings.add(this.e);
        injectMembersBindings.add(this.f);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdReportEventListener get() {
        AdReportEventListener adReportEventListener = new AdReportEventListener();
        injectMembers(adReportEventListener);
        return adReportEventListener;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdReportEventListener object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
        object.d = this.d.get();
        object.e = this.e.get();
        this.f.injectMembers(object);
    }
}
