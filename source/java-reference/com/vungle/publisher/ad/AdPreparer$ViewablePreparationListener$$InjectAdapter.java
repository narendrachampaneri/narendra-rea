package com.vungle.publisher.ad;

import com.vungle.publisher.ad.prepare.PrepareViewableRunnable;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.by;
import dagger.Lazy;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdPreparer$ViewablePreparationListener$$InjectAdapter extends Binding<AdPreparer.ViewablePreparationListener> implements MembersInjector<AdPreparer.ViewablePreparationListener>, Provider<AdPreparer.ViewablePreparationListener> {
    private Binding<ScheduledPriorityExecutor> a;
    private Binding<PrepareViewableRunnable.Factory> b;
    private Binding<Lazy<AdPreparer>> c;
    private Binding<by> d;

    public AdPreparer$ViewablePreparationListener$$InjectAdapter() {
        super("com.vungle.publisher.ad.AdPreparer$ViewablePreparationListener", "members/com.vungle.publisher.ad.AdPreparer$ViewablePreparationListener", true, AdPreparer.ViewablePreparationListener.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", AdPreparer.ViewablePreparationListener.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.ad.prepare.PrepareViewableRunnable$Factory", AdPreparer.ViewablePreparationListener.class, getClass().getClassLoader());
        this.c = linker.requestBinding("dagger.Lazy<com.vungle.publisher.ad.AdPreparer>", AdPreparer.ViewablePreparationListener.class, getClass().getClassLoader());
        this.d = linker.requestBinding("members/com.vungle.publisher.event.BaseEventListener", AdPreparer.ViewablePreparationListener.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdPreparer.ViewablePreparationListener get() {
        AdPreparer.ViewablePreparationListener viewablePreparationListener = new AdPreparer.ViewablePreparationListener();
        injectMembers(viewablePreparationListener);
        return viewablePreparationListener;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdPreparer.ViewablePreparationListener object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
        this.d.injectMembers(object);
    }
}
