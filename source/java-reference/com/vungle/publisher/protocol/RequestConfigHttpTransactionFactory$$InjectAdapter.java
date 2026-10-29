package com.vungle.publisher.protocol;

import com.vungle.publisher.cy;
import com.vungle.publisher.net.http.HttpTransaction;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestConfigHttpTransactionFactory$$InjectAdapter extends Binding<RequestConfigHttpTransactionFactory> implements MembersInjector<RequestConfigHttpTransactionFactory>, Provider<RequestConfigHttpTransactionFactory> {
    private Binding<RequestConfigHttpRequest.Factory> a;
    private Binding<cy> b;
    private Binding<HttpTransaction.Factory> c;

    public RequestConfigHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestConfigHttpTransactionFactory", "members/com.vungle.publisher.protocol.RequestConfigHttpTransactionFactory", true, RequestConfigHttpTransactionFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.RequestConfigHttpRequest$Factory", RequestConfigHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.cy", RequestConfigHttpTransactionFactory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.net.http.HttpTransaction$Factory", RequestConfigHttpTransactionFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestConfigHttpTransactionFactory get() {
        RequestConfigHttpTransactionFactory requestConfigHttpTransactionFactory = new RequestConfigHttpTransactionFactory();
        injectMembers(requestConfigHttpTransactionFactory);
        return requestConfigHttpTransactionFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestConfigHttpTransactionFactory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
