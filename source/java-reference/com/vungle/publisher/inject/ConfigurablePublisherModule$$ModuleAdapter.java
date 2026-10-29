package com.vungle.publisher.inject;

import android.content.Context;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import android.view.WindowManager;
import com.vungle.publisher.FullScreenAdActivity;
import com.vungle.publisher.bs;
import com.vungle.publisher.bt;
import com.vungle.publisher.bv;
import com.vungle.publisher.cj;
import com.vungle.publisher.ck;
import com.vungle.publisher.cl;
import com.vungle.publisher.cm;
import com.vungle.publisher.cn;
import com.vungle.publisher.cp;
import com.vungle.publisher.env.AdvertisingDeviceIdStrategy;
import com.vungle.publisher.env.AndroidDevice;
import com.vungle.publisher.env.WrapperFramework;
import com.vungle.publisher.image.AssetBitmapFactory;
import com.vungle.publisher.image.BitmapFactory;
import com.vungle.publisher.location.AndroidLocation;
import com.vungle.publisher.net.AndroidNetwork;
import dagger.internal.Binding;
import dagger.internal.BindingsGroup;
import dagger.internal.Linker;
import dagger.internal.ModuleAdapter;
import dagger.internal.ProvidesBinding;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ConfigurablePublisherModule$$ModuleAdapter extends ModuleAdapter<ConfigurablePublisherModule> {
    private static final String[] a = {"members/com.vungle.publisher.ad.AdManager", "members/com.vungle.publisher.env.AndroidDevice", "members/com.vungle.publisher.location.AndroidLocation", "members/com.vungle.publisher.net.AndroidNetwork", "members/com.vungle.publisher.FullScreenAdActivity", "members/com.vungle.publisher.location.GoogleLocationClientDetailedLocationProvider", "members/com.vungle.publisher.location.GoogleLocationServicesDetailedLocationProvider", "members/com.vungle.publisher.display.view.PostRollFragment", "members/com.vungle.publisher.display.view.VideoFragment", "members/com.vungle.sdk.VungleAdvert", "members/com.vungle.publisher.VunglePub"};
    private static final Class<?>[] b = new Class[0];
    private static final Class<?>[] c = new Class[0];

    @Override // dagger.internal.ModuleAdapter
    public final /* synthetic */ void getBindings(BindingsGroup x0, ConfigurablePublisherModule configurablePublisherModule) {
        ConfigurablePublisherModule configurablePublisherModule2 = configurablePublisherModule;
        x0.contributeProvidesBinding("android.content.Context", new ProvideApplicationContextProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("@com.vungle.publisher.inject.annotations.AdTempDirectory()/java.lang.String", new ProvideAdTempDirectoryProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("@com.vungle.publisher.inject.annotations.OldAdTempDirectory()/java.lang.String", new ProvideOldAdTempDirectoryProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("android.media.AudioManager", new ProvideAudioManagerProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("com.vungle.publisher.image.BitmapFactory", new ProvideBitmapFactoryProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("android.net.ConnectivityManager", new ProvideConnectivityManagerProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("com.vungle.publisher.cj", new ProvideGoogleAggregateDetailedLocationProviderProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("com.vungle.publisher.cl", new ProvideGoogleLocationClientDetailedLocationProviderProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("com.vungle.publisher.cm", new ProvideGoogleLocationServicesDetailedLocationProviderProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("com.vungle.publisher.bt", new ProvideDeviceProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy", new ProvideDeviceIdStrategyProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("@com.vungle.publisher.inject.annotations.EnvSharedPreferences()/android.content.SharedPreferences", new ProvideEnvSharedPreferencesProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("@com.vungle.publisher.inject.annotations.FullScreenAdActivityClass()/java.lang.Class", new ProvideFullScreenAdActivityClassProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("com.vungle.publisher.cn", new ProvideLocationProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("com.vungle.publisher.cp", new ProvideNetworkProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("com.vungle.publisher.bv", new ProvidePublisherAppProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("android.telephony.TelephonyManager", new ProvideTelephonyManagerProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("@com.vungle.publisher.inject.annotations.VungleBaseUrl()/java.lang.String", new ProvideVungleBaseUrlProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("@com.vungle.publisher.inject.annotations.IngestBaseUrl()/java.lang.String", new ProvideIngestBaseUrlProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("android.view.WindowManager", new ProvideWindowManagerProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("com.vungle.publisher.env.WrapperFramework", new ProvideWrapperFrameworkProvidesAdapter(configurablePublisherModule2));
        x0.contributeProvidesBinding("@com.vungle.publisher.inject.annotations.WrapperFrameworkVersion()/java.lang.String", new ProvideWrapperFrameworkVersionProvidesAdapter(configurablePublisherModule2));
    }

    @Override // dagger.internal.ModuleAdapter
    public final /* synthetic */ ConfigurablePublisherModule newModule() {
        return new ConfigurablePublisherModule();
    }

    public ConfigurablePublisherModule$$ModuleAdapter() {
        super(ConfigurablePublisherModule.class, a, b, false, c, true, false);
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideApplicationContextProvidesAdapter extends ProvidesBinding<Context> implements Provider<Context> {
        private final ConfigurablePublisherModule a;

        public ProvideApplicationContextProvidesAdapter(ConfigurablePublisherModule module) {
            super("android.content.Context", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideApplicationContext");
            this.a = module;
            setLibrary(false);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final Context get() {
            return this.a.a;
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideAdTempDirectoryProvidesAdapter extends ProvidesBinding<String> implements Provider<String> {
        private final ConfigurablePublisherModule a;
        private Binding<Context> b;

        public ProvideAdTempDirectoryProvidesAdapter(ConfigurablePublisherModule module) {
            super("@com.vungle.publisher.inject.annotations.AdTempDirectory()/java.lang.String", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideAdTempDirectory");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("android.content.Context", ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final String get() {
            return ConfigurablePublisherModule.a(this.b.get());
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideOldAdTempDirectoryProvidesAdapter extends ProvidesBinding<String> implements Provider<String> {
        private final ConfigurablePublisherModule a;
        private Binding<Context> b;

        public ProvideOldAdTempDirectoryProvidesAdapter(ConfigurablePublisherModule module) {
            super("@com.vungle.publisher.inject.annotations.OldAdTempDirectory()/java.lang.String", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideOldAdTempDirectory");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("android.content.Context", ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final String get() {
            return ConfigurablePublisherModule.b(this.b.get());
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideAudioManagerProvidesAdapter extends ProvidesBinding<AudioManager> implements Provider<AudioManager> {
        private final ConfigurablePublisherModule a;
        private Binding<Context> b;

        public ProvideAudioManagerProvidesAdapter(ConfigurablePublisherModule module) {
            super("android.media.AudioManager", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideAudioManager");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("android.content.Context", ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final AudioManager get() {
            return ConfigurablePublisherModule.c(this.b.get());
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideBitmapFactoryProvidesAdapter extends ProvidesBinding<BitmapFactory> implements Provider<BitmapFactory> {
        private final ConfigurablePublisherModule a;
        private Binding<AssetBitmapFactory> b;

        public ProvideBitmapFactoryProvidesAdapter(ConfigurablePublisherModule module) {
            super("com.vungle.publisher.image.BitmapFactory", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideBitmapFactory");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("com.vungle.publisher.image.AssetBitmapFactory", ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final BitmapFactory get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return configurablePublisherModule.c == null ? this.b.get() : configurablePublisherModule.c;
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideConnectivityManagerProvidesAdapter extends ProvidesBinding<ConnectivityManager> implements Provider<ConnectivityManager> {
        private final ConfigurablePublisherModule a;
        private Binding<Context> b;

        public ProvideConnectivityManagerProvidesAdapter(ConfigurablePublisherModule module) {
            super("android.net.ConnectivityManager", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideConnectivityManager");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("android.content.Context", ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final ConnectivityManager get() {
            return ConfigurablePublisherModule.d(this.b.get());
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideGoogleAggregateDetailedLocationProviderProvidesAdapter extends ProvidesBinding<cj> implements Provider<cj> {
        private final ConfigurablePublisherModule a;
        private Binding<ck> b;

        public ProvideGoogleAggregateDetailedLocationProviderProvidesAdapter(ConfigurablePublisherModule module) {
            super("com.vungle.publisher.cj", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideGoogleAggregateDetailedLocationProvider");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("com.vungle.publisher.ck", ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final cj get() {
            return ConfigurablePublisherModule.a(this.b.get());
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideGoogleLocationClientDetailedLocationProviderProvidesAdapter extends ProvidesBinding<cl> implements Provider<cl> {
        private final ConfigurablePublisherModule a;

        public ProvideGoogleLocationClientDetailedLocationProviderProvidesAdapter(ConfigurablePublisherModule module) {
            super("com.vungle.publisher.cl", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideGoogleLocationClientDetailedLocationProvider");
            this.a = module;
            setLibrary(false);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final cl get() {
            return ConfigurablePublisherModule.a();
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideGoogleLocationServicesDetailedLocationProviderProvidesAdapter extends ProvidesBinding<cm> implements Provider<cm> {
        private final ConfigurablePublisherModule a;

        public ProvideGoogleLocationServicesDetailedLocationProviderProvidesAdapter(ConfigurablePublisherModule module) {
            super("com.vungle.publisher.cm", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideGoogleLocationServicesDetailedLocationProvider");
            this.a = module;
            setLibrary(false);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final cm get() {
            return ConfigurablePublisherModule.b();
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideDeviceProvidesAdapter extends ProvidesBinding<bt> implements Provider<bt> {
        private final ConfigurablePublisherModule a;
        private Binding<AndroidDevice> b;

        public ProvideDeviceProvidesAdapter(ConfigurablePublisherModule module) {
            super("com.vungle.publisher.bt", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideDevice");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("com.vungle.publisher.env.AndroidDevice", ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final bt get() {
            return ConfigurablePublisherModule.a(this.b.get());
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideDeviceIdStrategyProvidesAdapter extends ProvidesBinding<AndroidDevice.DeviceIdStrategy> implements Provider<AndroidDevice.DeviceIdStrategy> {
        private final ConfigurablePublisherModule a;
        private Binding<AdvertisingDeviceIdStrategy> b;

        public ProvideDeviceIdStrategyProvidesAdapter(ConfigurablePublisherModule module) {
            super("com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideDeviceIdStrategy");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("com.vungle.publisher.env.AdvertisingDeviceIdStrategy", ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final AndroidDevice.DeviceIdStrategy get() {
            return ConfigurablePublisherModule.a(this.b.get());
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideEnvSharedPreferencesProvidesAdapter extends ProvidesBinding<SharedPreferences> implements Provider<SharedPreferences> {
        private final ConfigurablePublisherModule a;
        private Binding<Context> b;

        public ProvideEnvSharedPreferencesProvidesAdapter(ConfigurablePublisherModule module) {
            super("@com.vungle.publisher.inject.annotations.EnvSharedPreferences()/android.content.SharedPreferences", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideEnvSharedPreferences");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("android.content.Context", ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final SharedPreferences get() {
            return ConfigurablePublisherModule.e(this.b.get());
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideFullScreenAdActivityClassProvidesAdapter extends ProvidesBinding<Class> implements Provider<Class> {
        private final ConfigurablePublisherModule a;

        public ProvideFullScreenAdActivityClassProvidesAdapter(ConfigurablePublisherModule module) {
            super("@com.vungle.publisher.inject.annotations.FullScreenAdActivityClass()/java.lang.Class", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideFullScreenAdActivityClass");
            this.a = module;
            setLibrary(false);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final Class get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return configurablePublisherModule.d == null ? FullScreenAdActivity.class : configurablePublisherModule.d;
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideLocationProvidesAdapter extends ProvidesBinding<cn> implements Provider<cn> {
        private final ConfigurablePublisherModule a;
        private Binding<AndroidLocation> b;

        public ProvideLocationProvidesAdapter(ConfigurablePublisherModule module) {
            super("com.vungle.publisher.cn", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideLocation");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("com.vungle.publisher.location.AndroidLocation", ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final cn get() {
            return ConfigurablePublisherModule.a(this.b.get());
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideNetworkProvidesAdapter extends ProvidesBinding<cp> implements Provider<cp> {
        private final ConfigurablePublisherModule a;
        private Binding<AndroidNetwork> b;

        public ProvideNetworkProvidesAdapter(ConfigurablePublisherModule module) {
            super("com.vungle.publisher.cp", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideNetwork");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("com.vungle.publisher.net.AndroidNetwork", ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final cp get() {
            return ConfigurablePublisherModule.a(this.b.get());
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvidePublisherAppProvidesAdapter extends ProvidesBinding<bv> implements Provider<bv> {
        private final ConfigurablePublisherModule a;
        private Binding<Context> b;
        private Binding<WrapperFramework> c;

        public ProvidePublisherAppProvidesAdapter(ConfigurablePublisherModule module) {
            super("com.vungle.publisher.bv", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "providePublisherApp");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("android.content.Context", ConfigurablePublisherModule.class, getClass().getClassLoader());
            this.c = linker.requestBinding("com.vungle.publisher.env.WrapperFramework", ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
            getBindings.add(this.c);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final bv get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            Context context = this.b.get();
            return new bs(context.getPackageName(), configurablePublisherModule.b, this.c.get());
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideTelephonyManagerProvidesAdapter extends ProvidesBinding<TelephonyManager> implements Provider<TelephonyManager> {
        private final ConfigurablePublisherModule a;
        private Binding<Context> b;

        public ProvideTelephonyManagerProvidesAdapter(ConfigurablePublisherModule module) {
            super("android.telephony.TelephonyManager", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideTelephonyManager");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("android.content.Context", ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final TelephonyManager get() {
            return ConfigurablePublisherModule.f(this.b.get());
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideVungleBaseUrlProvidesAdapter extends ProvidesBinding<String> implements Provider<String> {
        private final ConfigurablePublisherModule a;

        public ProvideVungleBaseUrlProvidesAdapter(ConfigurablePublisherModule module) {
            super("@com.vungle.publisher.inject.annotations.VungleBaseUrl()/java.lang.String", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideVungleBaseUrl");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final String get() {
            return ConfigurablePublisherModule.c();
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideIngestBaseUrlProvidesAdapter extends ProvidesBinding<String> implements Provider<String> {
        private final ConfigurablePublisherModule a;

        public ProvideIngestBaseUrlProvidesAdapter(ConfigurablePublisherModule module) {
            super("@com.vungle.publisher.inject.annotations.IngestBaseUrl()/java.lang.String", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideIngestBaseUrl");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final String get() {
            return ConfigurablePublisherModule.d();
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideWindowManagerProvidesAdapter extends ProvidesBinding<WindowManager> implements Provider<WindowManager> {
        private final ConfigurablePublisherModule a;
        private Binding<Context> b;

        public ProvideWindowManagerProvidesAdapter(ConfigurablePublisherModule module) {
            super("android.view.WindowManager", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideWindowManager");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.Binding
        public final void attach(Linker linker) {
            this.b = linker.requestBinding("android.content.Context", ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        @Override // dagger.internal.Binding
        public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> set) {
            getBindings.add(this.b);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final WindowManager get() {
            return ConfigurablePublisherModule.g(this.b.get());
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideWrapperFrameworkProvidesAdapter extends ProvidesBinding<WrapperFramework> implements Provider<WrapperFramework> {
        private final ConfigurablePublisherModule a;

        public ProvideWrapperFrameworkProvidesAdapter(ConfigurablePublisherModule module) {
            super("com.vungle.publisher.env.WrapperFramework", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideWrapperFramework");
            this.a = module;
            setLibrary(false);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final WrapperFramework get() {
            return this.a.e;
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class ProvideWrapperFrameworkVersionProvidesAdapter extends ProvidesBinding<String> implements Provider<String> {
        private final ConfigurablePublisherModule a;

        public ProvideWrapperFrameworkVersionProvidesAdapter(ConfigurablePublisherModule module) {
            super("@com.vungle.publisher.inject.annotations.WrapperFrameworkVersion()/java.lang.String", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideWrapperFrameworkVersion");
            this.a = module;
            setLibrary(false);
        }

        @Override // dagger.internal.ProvidesBinding, dagger.internal.Binding, javax.inject.Provider
        public final String get() {
            return this.a.f;
        }
    }
}
