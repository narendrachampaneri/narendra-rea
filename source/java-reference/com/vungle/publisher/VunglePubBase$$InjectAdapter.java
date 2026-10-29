package com.vungle.publisher;

import android.content.Context;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.db.DatabaseHelper;
import com.vungle.publisher.env.SdkConfig;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.file.CacheManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class VunglePubBase$$InjectAdapter extends Binding<VunglePubBase> implements MembersInjector<VunglePubBase> {
    private Binding<AdManager> a;
    private Binding<InitializationEventListener> b;
    private Binding<CacheManager> c;
    private Binding<DatabaseHelper> d;
    private Binding<Demographic> e;
    private Binding<bt> f;
    private Binding<EventBus> g;
    private Binding<AdConfig> h;
    private Binding<SafeBundleAdConfigFactory> i;
    private Binding<SdkConfig> j;
    private Binding<SdkState> k;
    private Binding<Context> l;

    public VunglePubBase$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.VunglePubBase", false, VunglePubBase.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.ad.AdManager", VunglePubBase.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.InitializationEventListener", VunglePubBase.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.file.CacheManager", VunglePubBase.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.db.DatabaseHelper", VunglePubBase.class, getClass().getClassLoader());
        this.e = linker.requestBinding("com.vungle.publisher.Demographic", VunglePubBase.class, getClass().getClassLoader());
        this.f = linker.requestBinding("com.vungle.publisher.bt", VunglePubBase.class, getClass().getClassLoader());
        this.g = linker.requestBinding("com.vungle.publisher.event.EventBus", VunglePubBase.class, getClass().getClassLoader());
        this.h = linker.requestBinding("com.vungle.publisher.AdConfig", VunglePubBase.class, getClass().getClassLoader());
        this.i = linker.requestBinding("com.vungle.publisher.SafeBundleAdConfigFactory", VunglePubBase.class, getClass().getClassLoader());
        this.j = linker.requestBinding("com.vungle.publisher.env.SdkConfig", VunglePubBase.class, getClass().getClassLoader());
        this.k = linker.requestBinding("com.vungle.publisher.env.SdkState", VunglePubBase.class, getClass().getClassLoader());
        this.l = linker.requestBinding("android.content.Context", VunglePubBase.class, getClass().getClassLoader());
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
        injectMembersBindings.add(this.h);
        injectMembersBindings.add(this.i);
        injectMembersBindings.add(this.j);
        injectMembersBindings.add(this.k);
        injectMembersBindings.add(this.l);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(VunglePubBase object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
        object.d = this.d.get();
        object.e = this.e.get();
        object.f = this.f.get();
        object.g = this.g.get();
        object.h = this.h.get();
        object.i = this.i.get();
        object.j = this.j.get();
        object.k = this.k.get();
        object.l = this.l.get();
    }
}
