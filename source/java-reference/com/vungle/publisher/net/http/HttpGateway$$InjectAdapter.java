package com.vungle.publisher.net.http;

import android.content.Context;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.cs;
import com.vungle.publisher.db.model.LoggedException;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class HttpGateway$$InjectAdapter extends Binding<cs> implements MembersInjector<cs> {
    private Binding<Context> a;
    private Binding<LoggedException.Factory> b;
    private Binding<ScheduledPriorityExecutor> c;

    public HttpGateway$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.net.http.HttpGateway", false, cs.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("android.content.Context", cs.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", cs.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", cs.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(cs object) {
        object.c = this.a.get();
        object.d = this.b.get();
        object.e = this.c.get();
    }
}
