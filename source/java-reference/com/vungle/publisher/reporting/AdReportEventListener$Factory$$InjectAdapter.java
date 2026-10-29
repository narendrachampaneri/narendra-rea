package com.vungle.publisher.reporting;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class AdReportEventListener$Factory$$InjectAdapter extends Binding<AdReportEventListener.Factory> implements MembersInjector<AdReportEventListener.Factory>, Provider<AdReportEventListener.Factory> {
    private Binding<AdReportEventListener> a;

    public AdReportEventListener$Factory$$InjectAdapter() {
        super("com.vungle.publisher.reporting.AdReportEventListener$Factory", "members/com.vungle.publisher.reporting.AdReportEventListener$Factory", true, AdReportEventListener.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.reporting.AdReportEventListener", AdReportEventListener.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdReportEventListener.Factory get() {
        AdReportEventListener.Factory factory = new AdReportEventListener.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdReportEventListener.Factory object) {
        object.a = this.a.get();
    }
}
