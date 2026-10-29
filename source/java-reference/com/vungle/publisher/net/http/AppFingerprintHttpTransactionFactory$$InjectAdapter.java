package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AppFingerprintHttpTransactionFactory$$InjectAdapter extends Binding<AppFingerprintHttpTransactionFactory> implements MembersInjector<AppFingerprintHttpTransactionFactory>, Provider<AppFingerprintHttpTransactionFactory> {
    private Binding<AppFingerprintHttpRequest.Factory> a;
    private Binding<AppFingerprintHttpResponseHandler> b;
    private Binding<HttpTransaction.Factory> c;

    public AppFingerprintHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.AppFingerprintHttpTransactionFactory", "members/com.vungle.publisher.net.http.AppFingerprintHttpTransactionFactory", true, AppFingerprintHttpTransactionFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.net.http.AppFingerprintHttpRequest$Factory", AppFingerprintHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.net.http.AppFingerprintHttpResponseHandler", AppFingerprintHttpTransactionFactory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.net.http.HttpTransaction$Factory", AppFingerprintHttpTransactionFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AppFingerprintHttpTransactionFactory get() {
        AppFingerprintHttpTransactionFactory appFingerprintHttpTransactionFactory = new AppFingerprintHttpTransactionFactory();
        injectMembers(appFingerprintHttpTransactionFactory);
        return appFingerprintHttpTransactionFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AppFingerprintHttpTransactionFactory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
