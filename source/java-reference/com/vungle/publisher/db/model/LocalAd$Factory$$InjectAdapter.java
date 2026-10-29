package com.vungle.publisher.db.model;

import com.vungle.publisher.async.ScheduledPriorityExecutor;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LocalAd$Factory$$InjectAdapter extends Binding<LocalAd.Factory> implements MembersInjector<LocalAd.Factory>, Provider<LocalAd.Factory> {
    private Binding<Provider<String>> a;
    private Binding<LocalArchive.Factory> b;
    private Binding<Viewable.Factory> c;
    private Binding<Provider<LocalAd>> d;
    private Binding<LocalVideo.Factory> e;
    private Binding<ScheduledPriorityExecutor> f;
    private Binding<Ad.Factory> g;

    public LocalAd$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalAd$Factory", "members/com.vungle.publisher.db.model.LocalAd$Factory", true, LocalAd.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("@com.vungle.publisher.inject.annotations.AdTempDirectory()/javax.inject.Provider<java.lang.String>", LocalAd.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LocalArchive$Factory", LocalAd.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.db.model.Viewable$Factory", LocalAd.Factory.class, getClass().getClassLoader());
        this.d = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.LocalAd>", LocalAd.Factory.class, getClass().getClassLoader());
        this.e = linker.requestBinding("com.vungle.publisher.db.model.LocalVideo$Factory", LocalAd.Factory.class, getClass().getClassLoader());
        this.f = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", LocalAd.Factory.class, getClass().getClassLoader());
        this.g = linker.requestBinding("members/com.vungle.publisher.db.model.Ad$Factory", LocalAd.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
        injectMembersBindings.add(this.e);
        injectMembersBindings.add(this.f);
        injectMembersBindings.add(this.g);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LocalAd.Factory get() {
        LocalAd.Factory factory = new LocalAd.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LocalAd.Factory object) {
        object.d = this.a.get();
        object.e = this.b.get();
        object.f = this.c.get();
        object.g = this.d.get();
        object.h = this.e.get();
        object.i = this.f.get();
        this.g.injectMembers(object);
    }
}
