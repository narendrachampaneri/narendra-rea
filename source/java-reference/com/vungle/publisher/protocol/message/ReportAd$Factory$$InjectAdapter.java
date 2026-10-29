package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportAd$Factory$$InjectAdapter extends Binding<ReportAd.Factory> implements MembersInjector<ReportAd.Factory> {
    private Binding<ExtraInfo.Factory> a;
    private Binding<MessageFactory> b;

    public ReportAd$Factory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.protocol.message.ReportAd$Factory", false, ReportAd.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.ExtraInfo$Factory", ReportAd.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.protocol.message.MessageFactory", ReportAd.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ReportAd.Factory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
