package com.vungle.publisher.net.http;

import dagger.Lazy;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class TrackEventHttpTransactionFactory$$InjectAdapter extends Binding<TrackEventHttpTransactionFactory> implements MembersInjector<TrackEventHttpTransactionFactory>, Provider<TrackEventHttpTransactionFactory> {
    private Binding<TrackEventHttpRequest.Factory> a;
    private Binding<Lazy<TrackEventHttpResponseHandler>> b;
    private Binding<HttpTransaction.Factory> c;

    public TrackEventHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.TrackEventHttpTransactionFactory", "members/com.vungle.publisher.net.http.TrackEventHttpTransactionFactory", true, TrackEventHttpTransactionFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.net.http.TrackEventHttpRequest$Factory", TrackEventHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("dagger.Lazy<com.vungle.publisher.net.http.TrackEventHttpResponseHandler>", TrackEventHttpTransactionFactory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.net.http.HttpTransaction$Factory", TrackEventHttpTransactionFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final TrackEventHttpTransactionFactory get() {
        TrackEventHttpTransactionFactory trackEventHttpTransactionFactory = new TrackEventHttpTransactionFactory();
        injectMembers(trackEventHttpTransactionFactory);
        return trackEventHttpTransactionFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(TrackEventHttpTransactionFactory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
