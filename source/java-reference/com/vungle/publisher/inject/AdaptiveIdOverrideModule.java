package com.vungle.publisher.inject;

import android.content.Context;
import android.net.wifi.WifiManager;
import com.vungle.publisher.env.AdaptiveDeviceIdStrategy;
import com.vungle.publisher.env.AndroidDevice;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Module(includes = {ConfigurablePublisherModule.class}, overrides = true)
public class AdaptiveIdOverrideModule implements OverrideModule {
    @Provides
    @Singleton
    AndroidDevice.DeviceIdStrategy provideDeviceIdStrategy(AdaptiveDeviceIdStrategy deviceIdStrategy) {
        return deviceIdStrategy;
    }

    @Provides
    WifiManager provideWifiManager(Context context) {
        return (WifiManager) context.getSystemService("wifi");
    }
}
