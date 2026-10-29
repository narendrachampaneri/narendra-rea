package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportExceptions$Factory$$InjectAdapter extends Binding<ReportExceptions.Factory> implements MembersInjector<ReportExceptions.Factory>, Provider<ReportExceptions.Factory> {
    private Binding<Provider<ReportExceptions>> a;

    public ReportExceptions$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.ReportExceptions$Factory", "members/com.vungle.publisher.protocol.message.ReportExceptions$Factory", true, ReportExceptions.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.protocol.message.ReportExceptions>", ReportExceptions.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportExceptions.Factory get() {
        ReportExceptions.Factory factory = new ReportExceptions.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportExceptions.Factory object) {
        object.a = this.a.get();
    }
}
