package com.vungle.publisher.async;

import com.vungle.publisher.bf;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorAsync$$InjectAdapter extends Binding<bf> implements MembersInjector<bf> {
    private Binding<ScheduledPriorityExecutor> a;

    public ExecutorAsync$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.async.ExecutorAsync", false, bf.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", bf.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(bf object) {
        object.a = this.a.get();
    }
}
