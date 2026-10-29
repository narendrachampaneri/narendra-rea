package com.vungle.publisher.location;

import com.vungle.publisher.ck;
import com.vungle.publisher.cl;
import com.vungle.publisher.cm;
import dagger.Lazy;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class GoogleAggregateDetailedLocationProvider$$InjectAdapter extends Binding<ck> implements MembersInjector<ck>, Provider<ck> {
    private Binding<Lazy<cl>> a;
    private Binding<cm> b;

    public GoogleAggregateDetailedLocationProvider$$InjectAdapter() {
        super("com.vungle.publisher.ck", "members/com.vungle.publisher.location.GoogleAggregateDetailedLocationProvider", false, ck.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("dagger.Lazy<com.vungle.publisher.location.IGoogleLocationClientDetailedLocationProvider>", ck.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.cm", ck.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ck get() {
        ck ckVar = new ck();
        injectMembers(ckVar);
        return ckVar;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ck object) {
        object.c = this.a.get();
        object.d = this.b.get();
    }
}
