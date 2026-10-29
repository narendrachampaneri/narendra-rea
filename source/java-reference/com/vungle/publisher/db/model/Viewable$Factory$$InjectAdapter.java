package com.vungle.publisher.db.model;

import com.vungle.publisher.db.DatabaseHelper;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class Viewable$Factory$$InjectAdapter extends Binding<Viewable.Factory> implements MembersInjector<Viewable.Factory>, Provider<Viewable.Factory> {
    private Binding<DatabaseHelper> a;

    public Viewable$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.Viewable$Factory", "members/com.vungle.publisher.db.model.Viewable$Factory", true, Viewable.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.DatabaseHelper", Viewable.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final Viewable.Factory get() {
        Viewable.Factory factory = new Viewable.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(Viewable.Factory object) {
        object.a = this.a.get();
    }
}
