package com.vungle.publisher.ad.prepare;

import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.event.EventBus;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class PrepareViewableRunnable$$InjectAdapter extends Binding<PrepareViewableRunnable> implements MembersInjector<PrepareViewableRunnable>, Provider<PrepareViewableRunnable> {
    private Binding<EventBus> a;
    private Binding<LoggedException.Factory> b;

    public PrepareViewableRunnable$$InjectAdapter() {
        super("com.vungle.publisher.ad.prepare.PrepareViewableRunnable", "members/com.vungle.publisher.ad.prepare.PrepareViewableRunnable", false, PrepareViewableRunnable.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.event.EventBus", PrepareViewableRunnable.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", PrepareViewableRunnable.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final PrepareViewableRunnable get() {
        PrepareViewableRunnable prepareViewableRunnable = new PrepareViewableRunnable();
        injectMembers(prepareViewableRunnable);
        return prepareViewableRunnable;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(PrepareViewableRunnable object) {
        object.d = this.a.get();
        object.e = this.b.get();
    }
}
