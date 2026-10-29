package com.vungle.publisher.protocol;

import com.vungle.publisher.protocol.message.SessionStart;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class SessionStartHttpRequest$Factory$$InjectAdapter extends Binding<SessionStartHttpRequest.Factory> implements MembersInjector<SessionStartHttpRequest.Factory>, Provider<SessionStartHttpRequest.Factory> {
    private Binding<SessionStart.Factory> a;
    private Binding<ProtocolHttpRequest.a> b;

    public SessionStartHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.SessionStartHttpRequest$Factory", "members/com.vungle.publisher.protocol.SessionStartHttpRequest$Factory", true, SessionStartHttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.SessionStart$Factory", SessionStartHttpRequest.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.protocol.ProtocolHttpRequest$Factory", SessionStartHttpRequest.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final SessionStartHttpRequest.Factory get() {
        SessionStartHttpRequest.Factory factory = new SessionStartHttpRequest.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(SessionStartHttpRequest.Factory object) {
        object.g = this.a.get();
        this.b.injectMembers(object);
    }
}
