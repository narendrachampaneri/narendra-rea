package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ArchiveEntry$$InjectAdapter extends Binding<ArchiveEntry> implements MembersInjector<ArchiveEntry>, Provider<ArchiveEntry> {
    private Binding<ArchiveEntry.Factory> a;
    private Binding<LocalArchive.Factory> b;
    private Binding<bi> c;

    public ArchiveEntry$$InjectAdapter() {
        super("com.vungle.publisher.db.model.ArchiveEntry", "members/com.vungle.publisher.db.model.ArchiveEntry", false, ArchiveEntry.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.ArchiveEntry$Factory", ArchiveEntry.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LocalArchive$Factory", ArchiveEntry.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.db.model.BaseModel", ArchiveEntry.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ArchiveEntry get() {
        ArchiveEntry archiveEntry = new ArchiveEntry();
        injectMembers(archiveEntry);
        return archiveEntry;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ArchiveEntry object) {
        object.d = this.a.get();
        object.e = this.b.get();
        this.c.injectMembers(object);
    }
}
