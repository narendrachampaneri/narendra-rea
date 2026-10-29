package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdReport$BaseFactory$$InjectAdapter extends Binding<AdReport.BaseFactory> implements MembersInjector<AdReport.BaseFactory> {
    private Binding<AdReportExtra.Factory> a;
    private Binding<bi.a> b;

    public AdReport$BaseFactory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.db.model.AdReport$BaseFactory", false, AdReport.BaseFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.AdReportExtra$Factory", AdReport.BaseFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.BaseModel$Factory", AdReport.BaseFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdReport.BaseFactory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
