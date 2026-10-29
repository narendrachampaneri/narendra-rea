package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdReportExtra$$InjectAdapter extends Binding<AdReportExtra> implements MembersInjector<AdReportExtra>, Provider<AdReportExtra> {
    private Binding<AdReportExtra.Factory> a;
    private Binding<bi> b;

    public AdReportExtra$$InjectAdapter() {
        super("com.vungle.publisher.db.model.AdReportExtra", "members/com.vungle.publisher.db.model.AdReportExtra", false, AdReportExtra.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.AdReportExtra$Factory", AdReportExtra.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.BaseModel", AdReportExtra.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdReportExtra get() {
        AdReportExtra adReportExtra = new AdReportExtra();
        injectMembers(adReportExtra);
        return adReportExtra;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdReportExtra object) {
        object.d = this.a.get();
        this.b.injectMembers(object);
    }
}
