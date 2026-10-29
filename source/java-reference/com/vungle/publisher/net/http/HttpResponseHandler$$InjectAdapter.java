package com.vungle.publisher.net.http;

import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.ct;
import com.vungle.publisher.db.model.LoggedException;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class HttpResponseHandler$$InjectAdapter extends Binding<ct> implements MembersInjector<ct> {
    private Binding<ScheduledPriorityExecutor> a;
    private Binding<LoggedException.Factory> b;

    public HttpResponseHandler$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.net.http.HttpResponseHandler", false, ct.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", ct.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", ct.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ct object) {
        object.f = this.a.get();
        object.g = this.b.get();
    }
}
