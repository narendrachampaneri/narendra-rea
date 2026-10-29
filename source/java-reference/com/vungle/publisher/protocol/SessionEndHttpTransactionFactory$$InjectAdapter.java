package com.vungle.publisher.protocol;

import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import com.vungle.publisher.net.http.HttpTransaction;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class SessionEndHttpTransactionFactory$$InjectAdapter extends Binding<SessionEndHttpTransactionFactory> implements MembersInjector<SessionEndHttpTransactionFactory>, Provider<SessionEndHttpTransactionFactory> {
    private Binding<SessionEndHttpRequest.Factory> a;
    private Binding<FireAndForgetHttpResponseHandler> b;
    private Binding<HttpTransaction.Factory> c;

    public SessionEndHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.SessionEndHttpTransactionFactory", "members/com.vungle.publisher.protocol.SessionEndHttpTransactionFactory", true, SessionEndHttpTransactionFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.SessionEndHttpRequest$Factory", SessionEndHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler", SessionEndHttpTransactionFactory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.net.http.HttpTransaction$Factory", SessionEndHttpTransactionFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final SessionEndHttpTransactionFactory get() {
        SessionEndHttpTransactionFactory sessionEndHttpTransactionFactory = new SessionEndHttpTransactionFactory();
        injectMembers(sessionEndHttpTransactionFactory);
        return sessionEndHttpTransactionFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(SessionEndHttpTransactionFactory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
