package com.vungle.publisher.protocol;

import com.vungle.publisher.bf;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestConfigAsync$$InjectAdapter extends Binding<RequestConfigAsync> implements MembersInjector<RequestConfigAsync>, Provider<RequestConfigAsync> {
    private Binding<RequestConfigAsync.RequestConfigRunnable> a;
    private Binding<bf> b;

    public RequestConfigAsync$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestConfigAsync", "members/com.vungle.publisher.protocol.RequestConfigAsync", true, RequestConfigAsync.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.RequestConfigAsync$RequestConfigRunnable", RequestConfigAsync.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.async.ExecutorAsync", RequestConfigAsync.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestConfigAsync get() {
        RequestConfigAsync requestConfigAsync = new RequestConfigAsync();
        injectMembers(requestConfigAsync);
        return requestConfigAsync;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestConfigAsync object) {
        object.b = this.a.get();
        this.b.injectMembers(object);
    }
}
