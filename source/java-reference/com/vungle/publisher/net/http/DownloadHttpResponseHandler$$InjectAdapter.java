package com.vungle.publisher.net.http;

import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.event.EventBus;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class DownloadHttpResponseHandler$$InjectAdapter extends Binding<DownloadHttpResponseHandler> implements MembersInjector<DownloadHttpResponseHandler>, Provider<DownloadHttpResponseHandler> {
    private Binding<EventBus> a;
    private Binding<AdManager> b;
    private Binding<MaxRetryAgeHttpResponseHandler> c;

    public DownloadHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.net.http.DownloadHttpResponseHandler", "members/com.vungle.publisher.net.http.DownloadHttpResponseHandler", false, DownloadHttpResponseHandler.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.event.EventBus", DownloadHttpResponseHandler.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.ad.AdManager", DownloadHttpResponseHandler.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.net.http.MaxRetryAgeHttpResponseHandler", DownloadHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final DownloadHttpResponseHandler get() {
        DownloadHttpResponseHandler downloadHttpResponseHandler = new DownloadHttpResponseHandler();
        injectMembers(downloadHttpResponseHandler);
        return downloadHttpResponseHandler;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(DownloadHttpResponseHandler object) {
        object.d = this.a.get();
        object.e = this.b.get();
        this.c.injectMembers(object);
    }
}
