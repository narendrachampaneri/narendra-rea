package com.vungle.publisher.ad;

import com.vungle.publisher.ad.prepare.PrepareAdRunnable;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdPreparer$$InjectAdapter extends Binding<AdPreparer> implements MembersInjector<AdPreparer>, Provider<AdPreparer> {
    private Binding<PrepareAdRunnable.Factory> a;
    private Binding<AdPreparer.ViewablePreparationListener> b;
    private Binding<ScheduledPriorityExecutor> c;

    public AdPreparer$$InjectAdapter() {
        super("com.vungle.publisher.ad.AdPreparer", "members/com.vungle.publisher.ad.AdPreparer", true, AdPreparer.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.ad.prepare.PrepareAdRunnable$Factory", AdPreparer.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.ad.AdPreparer$ViewablePreparationListener", AdPreparer.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", AdPreparer.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdPreparer get() {
        AdPreparer adPreparer = new AdPreparer();
        injectMembers(adPreparer);
        return adPreparer;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdPreparer object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
    }
}
