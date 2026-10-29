package com.vungle.publisher.display.controller;

import com.vungle.publisher.event.EventBus;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdWebViewClient$$InjectAdapter extends Binding<AdWebViewClient> implements MembersInjector<AdWebViewClient>, Provider<AdWebViewClient> {
    private Binding<EventBus> a;
    private Binding<WebViewConfig> b;

    public AdWebViewClient$$InjectAdapter() {
        super("com.vungle.publisher.display.controller.AdWebViewClient", "members/com.vungle.publisher.display.controller.AdWebViewClient", true, AdWebViewClient.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.event.EventBus", AdWebViewClient.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.display.controller.WebViewConfig", AdWebViewClient.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdWebViewClient get() {
        AdWebViewClient adWebViewClient = new AdWebViewClient();
        injectMembers(adWebViewClient);
        return adWebViewClient;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdWebViewClient object) {
        object.a = this.a.get();
        object.b = this.b.get();
    }
}
