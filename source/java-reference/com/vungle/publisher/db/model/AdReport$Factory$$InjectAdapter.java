package com.vungle.publisher.db.model;

import com.vungle.publisher.db.DatabaseHelper;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdReport$Factory$$InjectAdapter extends Binding<AdReport.Factory> implements MembersInjector<AdReport.Factory>, Provider<AdReport.Factory> {
    private Binding<DatabaseHelper> a;
    private Binding<LocalAdReport.Factory> b;
    private Binding<StreamingAdReport.Factory> c;

    public AdReport$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.AdReport$Factory", "members/com.vungle.publisher.db.model.AdReport$Factory", true, AdReport.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.DatabaseHelper", AdReport.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LocalAdReport$Factory", AdReport.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.db.model.StreamingAdReport$Factory", AdReport.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdReport.Factory get() {
        AdReport.Factory factory = new AdReport.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdReport.Factory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
    }
}
