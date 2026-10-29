package com.vungle.publisher.inject;

import android.content.Context;
import android.net.wifi.WifiManager;
import com.vungle.publisher.env.AdaptiveDeviceIdStrategy;
import com.vungle.publisher.env.AndroidDevice;
import dagger.internal.Binding;
import dagger.internal.BindingsGroup;
import dagger.internal.Linker;
import dagger.internal.ModuleAdapter;
import dagger.internal.ProvidesBinding;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptiveIdOverrideModule$$ModuleAdapter extends ModuleAdapter<AdaptiveIdOverrideModule> {
    private static final String[] a = new String[0];
    private static final Class<?>[] b = new Class[0];
    private static final Class<?>[] c = {ConfigurablePublisherModule.class};

    @Override // dagger.internal.ModuleAdapter
    public final /* synthetic */ void getBindings(BindingsGroup x0, AdaptiveIdOverrideModule adaptiveIdOverrideModule) {
        AdaptiveIdOverrideModule adaptiveIdOverrideModule2 = adaptiveIdOverrideModule;
        x0.contributeProvidesBinding("com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy", new ProvideDeviceIdStrategyProvidesAdapter(adaptiveIdOverrideModule2));
        x0.contributeProvidesBinding("android.net.wifi.WifiManager", new ProvideWifiManagerProvidesAdapter(adaptiveIdOverrideModule2));
    }

    @Override // dagger.internal.ModuleAdapter
    public final /* synthetic */ AdaptiveIdOverrideModule newModule() {
        return new AdaptiveIdOverrideModule();
    }

    public AdaptiveIdOverrideModule$$ModuleAdapter() {
        super(AdaptiveIdOverrideModule.class, a, b, true, c, true, false);
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideDeviceIdStrategyProvidesAdapter extends ProvidesBinding<AndroidDevice.DeviceIdStrategy> implements Provider<AndroidDevice.DeviceIdStrategy> {
        private final AdaptiveIdOverrideModule a;
        private Binding<AdaptiveDeviceIdStrategy> b;

        public ProvideDeviceIdStrategyProvidesAdapter(AdaptiveIdOverrideModule module) {
            super("com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy", true, "com.vungle.publisher.inject.AdaptiveIdOverrideModule", "provideDeviceIdStrategy");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("com.vungle.publisher.env.AdaptiveDeviceIdStrategy", AdaptiveIdOverrideModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final AndroidDevice.DeviceIdStrategy get() {
            return this.a.provideDeviceIdStrategy(this.b.get());
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideWifiManagerProvidesAdapter extends ProvidesBinding<WifiManager> implements Provider<WifiManager> {
        private final AdaptiveIdOverrideModule a;
        private Binding<Context> b;

        public ProvideWifiManagerProvidesAdapter(AdaptiveIdOverrideModule module) {
            super("android.net.wifi.WifiManager", false, "com.vungle.publisher.inject.AdaptiveIdOverrideModule", "provideWifiManager");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("android.content.Context", AdaptiveIdOverrideModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final WifiManager get() {
            return this.a.provideWifiManager(this.b.get());
        }
    }
}
