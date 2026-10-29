package com.vungle.publisher.db.model;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LocalArchive$$InjectAdapter extends Binding<LocalArchive> implements MembersInjector<LocalArchive>, Provider<LocalArchive> {
    private Binding<LocalArchive.Factory> a;
    private Binding<LoggedException.Factory> b;
    private Binding<ArchiveEntry.Factory> c;
    private Binding<LocalAd.Factory> d;
    private Binding<LocalViewableDelegate> e;
    private Binding<Viewable> f;

    public LocalArchive$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalArchive", "members/com.vungle.publisher.db.model.LocalArchive", false, LocalArchive.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.LocalArchive$Factory", LocalArchive.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", LocalArchive.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.db.model.ArchiveEntry$Factory", LocalArchive.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.db.model.LocalAd$Factory", LocalArchive.class, getClass().getClassLoader());
        this.e = linker.requestBinding("com.vungle.publisher.db.model.LocalViewableDelegate", LocalArchive.class, getClass().getClassLoader());
        this.f = linker.requestBinding("members/com.vungle.publisher.db.model.Viewable", LocalArchive.class, getClass().getClassLoader(), false, true);
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
    public final LocalArchive get() {
        LocalArchive localArchive = new LocalArchive();
        injectMembers(localArchive);
        return localArchive;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LocalArchive object) {
        object.e = this.a.get();
        object.f = this.b.get();
        object.g = this.c.get();
        object.h = this.d.get();
        object.i = this.e.get();
        this.f.injectMembers(object);
    }
}
