package com.vungle.publisher.protocol.message;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class SessionEnd$Factory$$InjectAdapter extends Binding<SessionEnd.Factory> implements MembersInjector<SessionEnd.Factory>, Provider<SessionEnd.Factory> {
    private Binding<SessionStart.Factory> a;

    public SessionEnd$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.SessionEnd$Factory", "members/com.vungle.publisher.protocol.message.SessionEnd$Factory", true, SessionEnd.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.SessionStart$Factory", SessionEnd.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final SessionEnd.Factory get() {
        SessionEnd.Factory factory = new SessionEnd.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(SessionEnd.Factory object) {
        object.a = this.a.get();
    }
}
