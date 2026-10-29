package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ExtraInfo$Factory$$InjectAdapter extends Binding<ExtraInfo.Factory> implements MembersInjector<ExtraInfo.Factory>, Provider<ExtraInfo.Factory> {
    private Binding<MessageFactory> a;

    public ExtraInfo$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.ExtraInfo$Factory", "members/com.vungle.publisher.protocol.message.ExtraInfo$Factory", true, ExtraInfo.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.protocol.message.MessageFactory", ExtraInfo.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ExtraInfo.Factory get() {
        ExtraInfo.Factory factory = new ExtraInfo.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ExtraInfo.Factory object) {
        this.a.injectMembers(object);
    }
}
