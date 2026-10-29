package com.vungle.publisher.protocol.message;

import com.vungle.publisher.bt;
import com.vungle.publisher.bv;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportExceptions$$InjectAdapter extends Binding<ReportExceptions> implements MembersInjector<ReportExceptions>, Provider<ReportExceptions> {
    private Binding<bt> a;
    private Binding<bv> b;
    private Binding<BaseJsonArray> c;

    public ReportExceptions$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.ReportExceptions", "members/com.vungle.publisher.protocol.message.ReportExceptions", false, ReportExceptions.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.bt", ReportExceptions.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.bv", ReportExceptions.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.protocol.message.BaseJsonArray", ReportExceptions.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ReportExceptions get() {
        ReportExceptions reportExceptions = new ReportExceptions();
        injectMembers(reportExceptions);
        return reportExceptions;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportExceptions object) {
        object.b = this.a.get();
        object.c = this.b.get();
        this.c.injectMembers(object);
    }
}
