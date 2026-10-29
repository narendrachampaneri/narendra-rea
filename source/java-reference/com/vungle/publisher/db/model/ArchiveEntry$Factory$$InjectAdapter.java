package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ArchiveEntry$Factory$$InjectAdapter extends Binding<ArchiveEntry.Factory> implements MembersInjector<ArchiveEntry.Factory>, Provider<ArchiveEntry.Factory> {
    private Binding<Provider<ArchiveEntry>> a;
    private Binding<bi.a> b;

    public ArchiveEntry$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.ArchiveEntry$Factory", "members/com.vungle.publisher.db.model.ArchiveEntry$Factory", true, ArchiveEntry.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.ArchiveEntry>", ArchiveEntry.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.BaseModel$Factory", ArchiveEntry.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ArchiveEntry.Factory get() {
        ArchiveEntry.Factory factory = new ArchiveEntry.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ArchiveEntry.Factory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
