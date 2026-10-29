package com.vungle.publisher.async;

import com.vungle.publisher.db.model.LoggedException;
import dagger.Lazy;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ScheduledPriorityExecutor$$InjectAdapter extends Binding<ScheduledPriorityExecutor> implements MembersInjector<ScheduledPriorityExecutor>, Provider<ScheduledPriorityExecutor> {
    private Binding<Lazy<LoggedException.Factory>> a;

    public ScheduledPriorityExecutor$$InjectAdapter() {
        super("com.vungle.publisher.async.ScheduledPriorityExecutor", "members/com.vungle.publisher.async.ScheduledPriorityExecutor", true, ScheduledPriorityExecutor.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("dagger.Lazy<com.vungle.publisher.db.model.LoggedException$Factory>", ScheduledPriorityExecutor.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ScheduledPriorityExecutor get() {
        ScheduledPriorityExecutor scheduledPriorityExecutor = new ScheduledPriorityExecutor();
        injectMembers(scheduledPriorityExecutor);
        return scheduledPriorityExecutor;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ScheduledPriorityExecutor object) {
        object.a = this.a.get();
    }
}
