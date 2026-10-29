package com.vungle.publisher.protocol.message;

import com.vungle.publisher.bt;
import com.vungle.publisher.bv;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class SessionStart$Factory$$InjectAdapter extends Binding<SessionStart.Factory> implements MembersInjector<SessionStart.Factory>, Provider<SessionStart.Factory> {
    private Binding<bt> a;
    private Binding<bv> b;

    public SessionStart$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.SessionStart$Factory", "members/com.vungle.publisher.protocol.message.SessionStart$Factory", true, SessionStart.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.bt", SessionStart.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.bv", SessionStart.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final SessionStart.Factory get() {
        SessionStart.Factory factory = new SessionStart.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(SessionStart.Factory object) {
        object.a = this.a.get();
        object.b = this.b.get();
    }
}
