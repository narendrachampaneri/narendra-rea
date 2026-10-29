package com.vungle.publisher.display.controller;

import com.vungle.publisher.event.EventBus;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdWebChromeClient$$InjectAdapter extends Binding<AdWebChromeClient> implements MembersInjector<AdWebChromeClient>, Provider<AdWebChromeClient> {
    private Binding<EventBus> a;

    public AdWebChromeClient$$InjectAdapter() {
        super("com.vungle.publisher.display.controller.AdWebChromeClient", "members/com.vungle.publisher.display.controller.AdWebChromeClient", true, AdWebChromeClient.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.event.EventBus", AdWebChromeClient.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdWebChromeClient get() {
        AdWebChromeClient adWebChromeClient = new AdWebChromeClient();
        injectMembers(adWebChromeClient);
        return adWebChromeClient;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdWebChromeClient object) {
        object.a = this.a.get();
    }
}
