package com.vungle.publisher.protocol;

import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.net.http.MaxRetryAgeHttpResponseHandler;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestStreamingAdHttpResponseHandler$$InjectAdapter extends Binding<RequestStreamingAdHttpResponseHandler> implements MembersInjector<RequestStreamingAdHttpResponseHandler>, Provider<RequestStreamingAdHttpResponseHandler> {
    private Binding<EventBus> a;
    private Binding<RequestStreamingAdResponse.Factory> b;
    private Binding<MaxRetryAgeHttpResponseHandler> c;

    public RequestStreamingAdHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestStreamingAdHttpResponseHandler", "members/com.vungle.publisher.protocol.RequestStreamingAdHttpResponseHandler", true, RequestStreamingAdHttpResponseHandler.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.event.EventBus", RequestStreamingAdHttpResponseHandler.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.protocol.message.RequestStreamingAdResponse$Factory", RequestStreamingAdHttpResponseHandler.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.net.http.MaxRetryAgeHttpResponseHandler", RequestStreamingAdHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestStreamingAdHttpResponseHandler get() {
        RequestStreamingAdHttpResponseHandler requestStreamingAdHttpResponseHandler = new RequestStreamingAdHttpResponseHandler();
        injectMembers(requestStreamingAdHttpResponseHandler);
        return requestStreamingAdHttpResponseHandler;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestStreamingAdHttpResponseHandler object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
