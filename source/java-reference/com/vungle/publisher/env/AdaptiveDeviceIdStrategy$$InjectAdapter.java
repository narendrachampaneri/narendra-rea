package com.vungle.publisher.env;

import android.content.Context;
import android.net.wifi.WifiManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptiveDeviceIdStrategy$$InjectAdapter extends Binding<AdaptiveDeviceIdStrategy> implements MembersInjector<AdaptiveDeviceIdStrategy>, Provider<AdaptiveDeviceIdStrategy> {
    private Binding<Context> a;
    private Binding<WifiManager> b;
    private Binding<AdvertisingDeviceIdStrategy> c;

    public AdaptiveDeviceIdStrategy$$InjectAdapter() {
        super("com.vungle.publisher.env.AdaptiveDeviceIdStrategy", "members/com.vungle.publisher.env.AdaptiveDeviceIdStrategy", true, AdaptiveDeviceIdStrategy.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("android.content.Context", AdaptiveDeviceIdStrategy.class, getClass().getClassLoader());
        this.b = linker.requestBinding("android.net.wifi.WifiManager", AdaptiveDeviceIdStrategy.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.env.AdvertisingDeviceIdStrategy", AdaptiveDeviceIdStrategy.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdaptiveDeviceIdStrategy get() {
        AdaptiveDeviceIdStrategy adaptiveDeviceIdStrategy = new AdaptiveDeviceIdStrategy();
        injectMembers(adaptiveDeviceIdStrategy);
        return adaptiveDeviceIdStrategy;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdaptiveDeviceIdStrategy object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
