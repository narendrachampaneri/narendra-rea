package com.vungle.publisher;

import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.display.view.PostRollFragment;
import com.vungle.publisher.display.view.VideoFragment;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.reporting.AdReportEventListener;
import com.vungle.publisher.util.IntentFactory;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class FullScreenAdActivity$$InjectAdapter extends Binding<FullScreenAdActivity> implements MembersInjector<FullScreenAdActivity>, Provider<FullScreenAdActivity> {
    private Binding<FullScreenAdActivity.AdEventListener.Factory> a;
    private Binding<AdManager> b;
    private Binding<AdReportEventListener.Factory> c;
    private Binding<bt> d;
    private Binding<EventBus> e;
    private Binding<VideoFragment.Factory> f;
    private Binding<PostRollFragment.Factory> g;
    private Binding<SdkState> h;
    private Binding<IntentFactory> i;
    private Binding<LoggedException.Factory> j;

    public FullScreenAdActivity$$InjectAdapter() {
        super("com.vungle.publisher.FullScreenAdActivity", "members/com.vungle.publisher.FullScreenAdActivity", false, FullScreenAdActivity.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.FullScreenAdActivity$AdEventListener$Factory", FullScreenAdActivity.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.ad.AdManager", FullScreenAdActivity.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.reporting.AdReportEventListener$Factory", FullScreenAdActivity.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.bt", FullScreenAdActivity.class, getClass().getClassLoader());
        this.e = linker.requestBinding("com.vungle.publisher.event.EventBus", FullScreenAdActivity.class, getClass().getClassLoader());
        this.f = linker.requestBinding("com.vungle.publisher.display.view.VideoFragment$Factory", FullScreenAdActivity.class, getClass().getClassLoader());
        this.g = linker.requestBinding("com.vungle.publisher.display.view.PostRollFragment$Factory", FullScreenAdActivity.class, getClass().getClassLoader());
        this.h = linker.requestBinding("com.vungle.publisher.env.SdkState", FullScreenAdActivity.class, getClass().getClassLoader());
        this.i = linker.requestBinding("com.vungle.publisher.util.IntentFactory", FullScreenAdActivity.class, getClass().getClassLoader());
        this.j = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", FullScreenAdActivity.class, getClass().getClassLoader());
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
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final FullScreenAdActivity get() {
        FullScreenAdActivity fullScreenAdActivity = new FullScreenAdActivity();
        injectMembers(fullScreenAdActivity);
        return fullScreenAdActivity;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(FullScreenAdActivity object) {
        object.c = this.a.get();
        object.d = this.b.get();
        object.e = this.c.get();
        object.f = this.d.get();
        object.g = this.e.get();
        object.h = this.f.get();
        object.i = this.g.get();
        object.j = this.h.get();
        object.k = this.i.get();
        object.l = this.j.get();
    }
}
