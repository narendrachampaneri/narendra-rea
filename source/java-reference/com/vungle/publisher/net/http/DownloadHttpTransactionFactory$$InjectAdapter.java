package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class DownloadHttpTransactionFactory$$InjectAdapter extends Binding<DownloadHttpTransactionFactory> implements MembersInjector<DownloadHttpTransactionFactory>, Provider<DownloadHttpTransactionFactory> {
    private Binding<DownloadHttpRequest.Factory> a;
    private Binding<DownloadHttpResponseHandler.Factory> b;
    private Binding<HttpTransaction.Factory> c;

    public DownloadHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.DownloadHttpTransactionFactory", "members/com.vungle.publisher.net.http.DownloadHttpTransactionFactory", true, DownloadHttpTransactionFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.net.http.DownloadHttpRequest$Factory", DownloadHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.net.http.DownloadHttpResponseHandler$Factory", DownloadHttpTransactionFactory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.net.http.HttpTransaction$Factory", DownloadHttpTransactionFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final DownloadHttpTransactionFactory get() {
        DownloadHttpTransactionFactory downloadHttpTransactionFactory = new DownloadHttpTransactionFactory();
        injectMembers(downloadHttpTransactionFactory);
        return downloadHttpTransactionFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(DownloadHttpTransactionFactory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
