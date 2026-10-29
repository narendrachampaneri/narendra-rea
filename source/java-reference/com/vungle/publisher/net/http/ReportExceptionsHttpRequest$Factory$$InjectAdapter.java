package com.vungle.publisher.net.http;

import com.vungle.publisher.protocol.message.ReportExceptions;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportExceptionsHttpRequest$Factory$$InjectAdapter extends Binding<ReportExceptionsHttpRequest.Factory> implements MembersInjector<ReportExceptionsHttpRequest.Factory>, Provider<ReportExceptionsHttpRequest.Factory> {
    private Binding<ReportExceptions.Factory> a;
    private Binding<Provider<ReportExceptionsHttpRequest>> b;
    private Binding<IngestHttpRequest.Factory> c;

    public ReportExceptionsHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.ReportExceptionsHttpRequest$Factory", "members/com.vungle.publisher.net.http.ReportExceptionsHttpRequest$Factory", true, ReportExceptionsHttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.ReportExceptions$Factory", ReportExceptionsHttpRequest.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.net.http.ReportExceptionsHttpRequest>", ReportExceptionsHttpRequest.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.net.http.IngestHttpRequest$Factory", ReportExceptionsHttpRequest.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportExceptionsHttpRequest.Factory get() {
        ReportExceptionsHttpRequest.Factory factory = new ReportExceptionsHttpRequest.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportExceptionsHttpRequest.Factory object) {
        object.a = this.a.get();
        object.d = this.b.get();
        this.c.injectMembers(object);
    }
}
