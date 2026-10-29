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
public final class UnfilledAdHttpTransactionFactory$$InjectAdapter extends Binding<UnfilledAdHttpTransactionFactory> implements MembersInjector<UnfilledAdHttpTransactionFactory>, Provider<UnfilledAdHttpTransactionFactory> {
    private Binding<UnfilledAdHttpRequest.Factory> a;
    private Binding<FireAndForgetHttpResponseHandler> b;
    private Binding<HttpTransaction.Factory> c;

    public UnfilledAdHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.UnfilledAdHttpTransactionFactory", "members/com.vungle.publisher.protocol.UnfilledAdHttpTransactionFactory", true, UnfilledAdHttpTransactionFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.UnfilledAdHttpRequest$Factory", UnfilledAdHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler", UnfilledAdHttpTransactionFactory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.net.http.HttpTransaction$Factory", UnfilledAdHttpTransactionFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final UnfilledAdHttpTransactionFactory get() {
        UnfilledAdHttpTransactionFactory unfilledAdHttpTransactionFactory = new UnfilledAdHttpTransactionFactory();
        injectMembers(unfilledAdHttpTransactionFactory);
        return unfilledAdHttpTransactionFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(UnfilledAdHttpTransactionFactory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
