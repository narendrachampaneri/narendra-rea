package com.vungle.publisher.net.http;

import com.vungle.publisher.cs;
import com.vungle.publisher.cu;
import com.vungle.publisher.db.model.LoggedException;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class IngestHttpGateway$$InjectAdapter extends Binding<cu> implements MembersInjector<cu>, Provider<cu> {
    private Binding<ReportExceptionsHttpTransactionFactory> a;
    private Binding<AppFingerprintHttpTransactionFactory> b;
    private Binding<LoggedException.Factory> c;
    private Binding<cs> d;

    public IngestHttpGateway$$InjectAdapter() {
        super("com.vungle.publisher.cu", "members/com.vungle.publisher.net.http.IngestHttpGateway", false, cu.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.net.http.ReportExceptionsHttpTransactionFactory", cu.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.net.http.AppFingerprintHttpTransactionFactory", cu.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", cu.class, getClass().getClassLoader());
        this.d = linker.requestBinding("members/com.vungle.publisher.net.http.HttpGateway", cu.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final cu get() {
        cu cuVar = new cu();
        injectMembers(cuVar);
        return cuVar;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(cu object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.f = this.c.get();
        this.d.injectMembers(object);
    }
}
