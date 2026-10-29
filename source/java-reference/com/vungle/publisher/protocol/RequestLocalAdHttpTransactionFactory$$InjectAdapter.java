package com.vungle.publisher.protocol;

import com.vungle.publisher.net.http.HttpTransaction;
import dagger.Lazy;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestLocalAdHttpTransactionFactory$$InjectAdapter extends Binding<RequestLocalAdHttpTransactionFactory> implements MembersInjector<RequestLocalAdHttpTransactionFactory>, Provider<RequestLocalAdHttpTransactionFactory> {
    private Binding<RequestLocalAdHttpRequest.Factory> a;
    private Binding<Lazy<RequestLocalAdHttpResponseHandler>> b;
    private Binding<HttpTransaction.Factory> c;

    public RequestLocalAdHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestLocalAdHttpTransactionFactory", "members/com.vungle.publisher.protocol.RequestLocalAdHttpTransactionFactory", true, RequestLocalAdHttpTransactionFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.RequestLocalAdHttpRequest$Factory", RequestLocalAdHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("dagger.Lazy<com.vungle.publisher.protocol.RequestLocalAdHttpResponseHandler>", RequestLocalAdHttpTransactionFactory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.net.http.HttpTransaction$Factory", RequestLocalAdHttpTransactionFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestLocalAdHttpTransactionFactory get() {
        RequestLocalAdHttpTransactionFactory requestLocalAdHttpTransactionFactory = new RequestLocalAdHttpTransactionFactory();
        injectMembers(requestLocalAdHttpTransactionFactory);
        return requestLocalAdHttpTransactionFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestLocalAdHttpTransactionFactory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
