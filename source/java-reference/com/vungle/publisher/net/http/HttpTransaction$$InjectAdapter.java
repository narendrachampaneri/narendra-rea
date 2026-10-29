package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class HttpTransaction$$InjectAdapter extends Binding<HttpTransaction> implements MembersInjector<HttpTransaction>, Provider<HttpTransaction> {
    private Binding<HttpTransport> a;

    public HttpTransaction$$InjectAdapter() {
        super("com.vungle.publisher.net.http.HttpTransaction", "members/com.vungle.publisher.net.http.HttpTransaction", false, HttpTransaction.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.net.http.HttpTransport", HttpTransaction.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final HttpTransaction get() {
        HttpTransaction httpTransaction = new HttpTransaction();
        injectMembers(httpTransaction);
        return httpTransaction;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(HttpTransaction object) {
        object.d = this.a.get();
    }
}
