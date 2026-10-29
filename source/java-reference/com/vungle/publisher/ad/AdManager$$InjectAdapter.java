package com.vungle.publisher.ad;

import android.content.Context;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.bt;
import com.vungle.publisher.cp;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.db.model.StreamingAd;
import com.vungle.publisher.db.model.Viewable;
import com.vungle.publisher.env.SdkConfig;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import dagger.Lazy;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdManager$$InjectAdapter extends Binding<AdManager> implements MembersInjector<AdManager>, Provider<AdManager> {
    private Binding<AdPreparer> a;
    private Binding<Context> b;
    private Binding<bt> c;
    private Binding<EventBus> d;
    private Binding<Class> e;
    private Binding<ScheduledPriorityExecutor> f;
    private Binding<LocalAd.Factory> g;
    private Binding<cp> h;
    private Binding<Lazy<AdManager.PlayAdEventListener>> i;
    private Binding<Lazy<AdManager.AdAvailabilityEventListener>> j;
    private Binding<Provider<AdManager.PrepareStreamingAdEventListener>> k;
    private Binding<ProtocolHttpGateway> l;
    private Binding<SdkConfig> m;
    private Binding<StreamingAd.Factory> n;
    private Binding<Viewable.Factory> o;
    private Binding<Lazy<SdkState>> p;
    private Binding<LoggedException.Factory> q;

    public AdManager$$InjectAdapter() {
        super("com.vungle.publisher.ad.AdManager", "members/com.vungle.publisher.ad.AdManager", true, AdManager.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.ad.AdPreparer", AdManager.class, getClass().getClassLoader());
        this.b = linker.requestBinding("android.content.Context", AdManager.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.bt", AdManager.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.event.EventBus", AdManager.class, getClass().getClassLoader());
        this.e = linker.requestBinding("@com.vungle.publisher.inject.annotations.FullScreenAdActivityClass()/java.lang.Class", AdManager.class, getClass().getClassLoader());
        this.f = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", AdManager.class, getClass().getClassLoader());
        this.g = linker.requestBinding("com.vungle.publisher.db.model.LocalAd$Factory", AdManager.class, getClass().getClassLoader());
        this.h = linker.requestBinding("com.vungle.publisher.cp", AdManager.class, getClass().getClassLoader());
        this.i = linker.requestBinding("dagger.Lazy<com.vungle.publisher.ad.AdManager$PlayAdEventListener>", AdManager.class, getClass().getClassLoader());
        this.j = linker.requestBinding("dagger.Lazy<com.vungle.publisher.ad.AdManager$AdAvailabilityEventListener>", AdManager.class, getClass().getClassLoader());
        this.k = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.ad.AdManager$PrepareStreamingAdEventListener>", AdManager.class, getClass().getClassLoader());
        this.l = linker.requestBinding("com.vungle.publisher.protocol.ProtocolHttpGateway", AdManager.class, getClass().getClassLoader());
        this.m = linker.requestBinding("com.vungle.publisher.env.SdkConfig", AdManager.class, getClass().getClassLoader());
        this.n = linker.requestBinding("com.vungle.publisher.db.model.StreamingAd$Factory", AdManager.class, getClass().getClassLoader());
        this.o = linker.requestBinding("com.vungle.publisher.db.model.Viewable$Factory", AdManager.class, getClass().getClassLoader());
        this.p = linker.requestBinding("dagger.Lazy<com.vungle.publisher.env.SdkState>", AdManager.class, getClass().getClassLoader());
        this.q = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", AdManager.class, getClass().getClassLoader());
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
        injectMembersBindings.add(this.m);
        injectMembersBindings.add(this.n);
        injectMembersBindings.add(this.o);
        injectMembersBindings.add(this.p);
        injectMembersBindings.add(this.q);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdManager get() {
        AdManager adManager = new AdManager();
        injectMembers(adManager);
        return adManager;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdManager object) {
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
        object.m = this.m.get();
        object.n = this.n.get();
        object.o = this.o.get();
        object.p = this.p.get();
        object.q = this.q.get();
    }
}
