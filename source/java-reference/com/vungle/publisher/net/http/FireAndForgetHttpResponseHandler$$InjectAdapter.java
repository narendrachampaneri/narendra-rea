package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class FireAndForgetHttpResponseHandler$$InjectAdapter extends Binding<FireAndForgetHttpResponseHandler> implements MembersInjector<FireAndForgetHttpResponseHandler>, Provider<FireAndForgetHttpResponseHandler> {
    private Binding<MaxRetryAgeHttpResponseHandler> a;

    public FireAndForgetHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler", "members/com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler", false, FireAndForgetHttpResponseHandler.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.net.http.MaxRetryAgeHttpResponseHandler", FireAndForgetHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final FireAndForgetHttpResponseHandler get() {
        FireAndForgetHttpResponseHandler fireAndForgetHttpResponseHandler = new FireAndForgetHttpResponseHandler();
        injectMembers(fireAndForgetHttpResponseHandler);
        return fireAndForgetHttpResponseHandler;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(FireAndForgetHttpResponseHandler object) {
        this.a.injectMembers(object);
    }
}
