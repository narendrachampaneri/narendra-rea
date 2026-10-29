package com.vungle.publisher.protocol;

import com.vungle.publisher.net.http.HttpTransaction;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestStreamingAdHttpTransactionFactory$$InjectAdapter extends Binding<RequestStreamingAdHttpTransactionFactory> implements MembersInjector<RequestStreamingAdHttpTransactionFactory>, Provider<RequestStreamingAdHttpTransactionFactory> {
    private Binding<RequestStreamingAdHttpRequest.Factory> a;
    private Binding<RequestStreamingAdHttpResponseHandler> b;
    private Binding<HttpTransaction.Factory> c;

    public RequestStreamingAdHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestStreamingAdHttpTransactionFactory", "members/com.vungle.publisher.protocol.RequestStreamingAdHttpTransactionFactory", true, RequestStreamingAdHttpTransactionFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.RequestStreamingAdHttpRequest$Factory", RequestStreamingAdHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.protocol.RequestStreamingAdHttpResponseHandler", RequestStreamingAdHttpTransactionFactory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.net.http.HttpTransaction$Factory", RequestStreamingAdHttpTransactionFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestStreamingAdHttpTransactionFactory get() {
        RequestStreamingAdHttpTransactionFactory requestStreamingAdHttpTransactionFactory = new RequestStreamingAdHttpTransactionFactory();
        injectMembers(requestStreamingAdHttpTransactionFactory);
        return requestStreamingAdHttpTransactionFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestStreamingAdHttpTransactionFactory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
