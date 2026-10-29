package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AppFingerprintHttpRequest$$InjectAdapter extends Binding<AppFingerprintHttpRequest> implements MembersInjector<AppFingerprintHttpRequest>, Provider<AppFingerprintHttpRequest> {
    private Binding<IngestHttpRequest> a;

    public AppFingerprintHttpRequest$$InjectAdapter() {
        super("com.vungle.publisher.net.http.AppFingerprintHttpRequest", "members/com.vungle.publisher.net.http.AppFingerprintHttpRequest", false, AppFingerprintHttpRequest.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.net.http.IngestHttpRequest", AppFingerprintHttpRequest.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AppFingerprintHttpRequest get() {
        AppFingerprintHttpRequest appFingerprintHttpRequest = new AppFingerprintHttpRequest();
        injectMembers(appFingerprintHttpRequest);
        return appFingerprintHttpRequest;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AppFingerprintHttpRequest object) {
        this.a.injectMembers(object);
    }
}
