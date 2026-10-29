package com.vungle.publisher.protocol;

import com.vungle.publisher.protocol.message.SessionEnd;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class SessionEndHttpRequest$Factory$$InjectAdapter extends Binding<SessionEndHttpRequest.Factory> implements MembersInjector<SessionEndHttpRequest.Factory>, Provider<SessionEndHttpRequest.Factory> {
    private Binding<SessionEnd.Factory> a;
    private Binding<ProtocolHttpRequest.a> b;

    public SessionEndHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.SessionEndHttpRequest$Factory", "members/com.vungle.publisher.protocol.SessionEndHttpRequest$Factory", true, SessionEndHttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.SessionEnd$Factory", SessionEndHttpRequest.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.protocol.ProtocolHttpRequest$Factory", SessionEndHttpRequest.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final SessionEndHttpRequest.Factory get() {
        SessionEndHttpRequest.Factory factory = new SessionEndHttpRequest.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(SessionEndHttpRequest.Factory object) {
        object.g = this.a.get();
        this.b.injectMembers(object);
    }
}
