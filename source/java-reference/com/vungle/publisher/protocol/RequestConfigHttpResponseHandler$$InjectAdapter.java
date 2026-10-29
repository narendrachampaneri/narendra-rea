package com.vungle.publisher.protocol;

import com.vungle.publisher.cy;
import com.vungle.publisher.env.SdkConfig;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler;
import com.vungle.publisher.protocol.message.RequestConfigResponse;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestConfigHttpResponseHandler$$InjectAdapter extends Binding<cy> implements MembersInjector<cy>, Provider<cy> {
    private Binding<RequestConfigResponse.Factory> a;
    private Binding<SdkConfig> b;
    private Binding<EventBus> c;
    private Binding<Provider<RequestConfigAsync>> d;
    private Binding<InfiniteRetryHttpResponseHandler> e;

    public RequestConfigHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.cy", "members/com.vungle.publisher.protocol.RequestConfigHttpResponseHandler", false, cy.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.message.RequestConfigResponse$Factory", cy.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.env.SdkConfig", cy.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.event.EventBus", cy.class, getClass().getClassLoader());
        this.d = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.protocol.RequestConfigAsync>", cy.class, getClass().getClassLoader());
        this.e = linker.requestBinding("members/com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler", cy.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
        injectMembersBindings.add(this.e);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final cy get() {
        cy cyVar = new cy();
        injectMembers(cyVar);
        return cyVar;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(cy object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
        object.d = this.d.get();
        this.e.injectMembers(object);
    }
}
