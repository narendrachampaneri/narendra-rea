package com.vungle.publisher.ad.prepare;

import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.reporting.AdReportManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class PrepareAdRunnable$$InjectAdapter extends Binding<PrepareAdRunnable> implements MembersInjector<PrepareAdRunnable>, Provider<PrepareAdRunnable> {
    private Binding<EventBus> a;
    private Binding<AdManager> b;
    private Binding<AdReportManager> c;
    private Binding<ScheduledPriorityExecutor> d;
    private Binding<PrepareViewableRunnable.Factory> e;
    private Binding<PrepareAdRunnable.RetryMap> f;
    private Binding<LoggedException.Factory> g;

    public PrepareAdRunnable$$InjectAdapter() {
        super("com.vungle.publisher.ad.prepare.PrepareAdRunnable", "members/com.vungle.publisher.ad.prepare.PrepareAdRunnable", false, PrepareAdRunnable.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.event.EventBus", PrepareAdRunnable.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.ad.AdManager", PrepareAdRunnable.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.reporting.AdReportManager", PrepareAdRunnable.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", PrepareAdRunnable.class, getClass().getClassLoader());
        this.e = linker.requestBinding("com.vungle.publisher.ad.prepare.PrepareViewableRunnable$Factory", PrepareAdRunnable.class, getClass().getClassLoader());
        this.f = linker.requestBinding("com.vungle.publisher.ad.prepare.PrepareAdRunnable$RetryMap", PrepareAdRunnable.class, getClass().getClassLoader());
        this.g = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", PrepareAdRunnable.class, getClass().getClassLoader());
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
    public final PrepareAdRunnable get() {
        PrepareAdRunnable prepareAdRunnable = new PrepareAdRunnable();
        injectMembers(prepareAdRunnable);
        return prepareAdRunnable;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(PrepareAdRunnable object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
        object.d = this.d.get();
        object.e = this.e.get();
        object.f = this.f.get();
        object.g = this.g.get();
    }
}
