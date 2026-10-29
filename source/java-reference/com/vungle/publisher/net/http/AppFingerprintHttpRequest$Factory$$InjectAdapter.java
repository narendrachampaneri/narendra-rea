package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AppFingerprintHttpRequest$Factory$$InjectAdapter extends Binding<AppFingerprintHttpRequest.Factory> implements MembersInjector<AppFingerprintHttpRequest.Factory>, Provider<AppFingerprintHttpRequest.Factory> {
    private Binding<Provider<AppFingerprintHttpRequest>> a;
    private Binding<IngestHttpRequest.Factory> b;

    public AppFingerprintHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.AppFingerprintHttpRequest$Factory", "members/com.vungle.publisher.net.http.AppFingerprintHttpRequest$Factory", true, AppFingerprintHttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.net.http.AppFingerprintHttpRequest>", AppFingerprintHttpRequest.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.net.http.IngestHttpRequest$Factory", AppFingerprintHttpRequest.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AppFingerprintHttpRequest.Factory get() {
        AppFingerprintHttpRequest.Factory factory = new AppFingerprintHttpRequest.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AppFingerprintHttpRequest.Factory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
