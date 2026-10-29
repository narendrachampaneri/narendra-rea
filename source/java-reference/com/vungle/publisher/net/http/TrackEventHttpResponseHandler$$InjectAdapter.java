package com.vungle.publisher.net.http;

import com.vungle.publisher.db.model.EventTrackingHttpLogEntry;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class TrackEventHttpResponseHandler$$InjectAdapter extends Binding<TrackEventHttpResponseHandler> implements MembersInjector<TrackEventHttpResponseHandler>, Provider<TrackEventHttpResponseHandler> {
    private Binding<EventTrackingHttpLogEntry.Factory> a;
    private Binding<MaxRetryAgeHttpResponseHandler> b;

    public TrackEventHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.net.http.TrackEventHttpResponseHandler", "members/com.vungle.publisher.net.http.TrackEventHttpResponseHandler", false, TrackEventHttpResponseHandler.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.EventTrackingHttpLogEntry$Factory", TrackEventHttpResponseHandler.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.net.http.MaxRetryAgeHttpResponseHandler", TrackEventHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final TrackEventHttpResponseHandler get() {
        TrackEventHttpResponseHandler trackEventHttpResponseHandler = new TrackEventHttpResponseHandler();
        injectMembers(trackEventHttpResponseHandler);
        return trackEventHttpResponseHandler;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(TrackEventHttpResponseHandler object) {
        object.b = this.a.get();
        this.b.injectMembers(object);
    }
}
