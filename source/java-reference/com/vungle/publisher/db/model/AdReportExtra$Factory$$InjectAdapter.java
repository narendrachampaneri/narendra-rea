package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdReportExtra$Factory$$InjectAdapter extends Binding<AdReportExtra.Factory> implements MembersInjector<AdReportExtra.Factory>, Provider<AdReportExtra.Factory> {
    private Binding<Provider<AdReportExtra>> a;
    private Binding<bi.a> b;

    public AdReportExtra$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.AdReportExtra$Factory", "members/com.vungle.publisher.db.model.AdReportExtra$Factory", true, AdReportExtra.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.AdReportExtra>", AdReportExtra.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.BaseModel$Factory", AdReportExtra.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdReportExtra.Factory get() {
        AdReportExtra.Factory factory = new AdReportExtra.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdReportExtra.Factory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
