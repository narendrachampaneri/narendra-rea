package com.vungle.publisher.net.http;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class TrackEventHttpRequest$Factory$$InjectAdapter extends Binding<TrackEventHttpRequest.Factory> implements MembersInjector<TrackEventHttpRequest.Factory>, Provider<TrackEventHttpRequest.Factory> {
    private Binding<HttpRequest.Factory> a;

    public TrackEventHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.TrackEventHttpRequest$Factory", "members/com.vungle.publisher.net.http.TrackEventHttpRequest$Factory", true, TrackEventHttpRequest.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.net.http.HttpRequest$Factory", TrackEventHttpRequest.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final TrackEventHttpRequest.Factory get() {
        TrackEventHttpRequest.Factory factory = new TrackEventHttpRequest.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(TrackEventHttpRequest.Factory object) {
        this.a.injectMembers(object);
    }
}
