package com.vungle.publisher.net.http;

import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.cr;
import com.vungle.publisher.cs;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ExternalHttpGateway$$InjectAdapter extends Binding<cr> implements MembersInjector<cr>, Provider<cr> {
    private Binding<TrackEventHttpTransactionFactory> a;
    private Binding<ScheduledPriorityExecutor> b;
    private Binding<cs> c;

    public ExternalHttpGateway$$InjectAdapter() {
        super("com.vungle.publisher.cr", "members/com.vungle.publisher.net.http.ExternalHttpGateway", false, cr.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.net.http.TrackEventHttpTransactionFactory", cr.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", cr.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.net.http.HttpGateway", cr.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final cr get() {
        cr crVar = new cr();
        injectMembers(crVar);
        return crVar;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(cr object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
