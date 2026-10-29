package com.vungle.publisher.inject;

import android.content.Context;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import android.view.WindowManager;
import com.google.android.exoplayer.util.MimeTypes;
import com.vungle.log.Logger;
import com.vungle.publisher.FullScreenAdActivity;
import com.vungle.publisher.VunglePub;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.bt;
import com.vungle.publisher.cb;
import com.vungle.publisher.cc;
import com.vungle.publisher.cg;
import com.vungle.publisher.cj;
import com.vungle.publisher.ck;
import com.vungle.publisher.cl;
import com.vungle.publisher.cm;
import com.vungle.publisher.cn;
import com.vungle.publisher.cp;
import com.vungle.publisher.display.view.PostRollFragment;
import com.vungle.publisher.display.view.VideoFragment;
import com.vungle.publisher.env.AdvertisingDeviceIdStrategy;
import com.vungle.publisher.env.AndroidDevice;
import com.vungle.publisher.env.WrapperFramework;
import com.vungle.publisher.image.BitmapFactory;
import com.vungle.publisher.inject.annotations.AdTempDirectory;
import com.vungle.publisher.inject.annotations.EnvSharedPreferences;
import com.vungle.publisher.inject.annotations.IngestBaseUrl;
import com.vungle.publisher.inject.annotations.OldAdTempDirectory;
import com.vungle.publisher.inject.annotations.VungleBaseUrl;
import com.vungle.publisher.location.AndroidLocation;
import com.vungle.publisher.location.GoogleLocationClientDetailedLocationProvider;
import com.vungle.publisher.location.GoogleLocationServicesDetailedLocationProvider;
import com.vungle.publisher.net.AndroidNetwork;
import com.vungle.sdk.VungleAdvert;
import dagger.Module;
import dagger.Provides;
import java.io.File;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Module(injects = {AdManager.class, AndroidDevice.class, AndroidLocation.class, AndroidNetwork.class, FullScreenAdActivity.class, GoogleLocationClientDetailedLocationProvider.class, GoogleLocationServicesDetailedLocationProvider.class, PostRollFragment.class, VideoFragment.class, VungleAdvert.class, VunglePub.class})
class ConfigurablePublisherModule implements cg {
    Context a;
    String b;
    BitmapFactory c;
    Class<? extends FullScreenAdActivity> d;
    WrapperFramework e;
    String f;
    private boolean g;

    ConfigurablePublisherModule() {
    }

    @Override // com.vungle.publisher.cg
    public void setBitmapFactory(BitmapFactory bitmapFactory) {
        if (this.g) {
            Logger.d(Logger.INJECT_TAG, "BitmapFactory in publisher module NOT set - already initialized");
        } else {
            Logger.d(Logger.INJECT_TAG, "setting BitmapFactory in publisher module: " + bitmapFactory);
            this.c = bitmapFactory;
        }
    }

    @Override // com.vungle.publisher.cg
    public final void a(Class<? extends FullScreenAdActivity> cls) {
        if (this.g) {
            Logger.d(Logger.INJECT_TAG, "full screen ad activity class in publisher module NOT set - already initialized");
        } else {
            Logger.d(Logger.INJECT_TAG, "setting full screen ad activity class in publisher module: " + cls);
            this.d = cls;
        }
    }

    @Override // com.vungle.publisher.cg
    public void setWrapperFramework(WrapperFramework framework) {
        if (this.g) {
            Logger.d(Logger.INJECT_TAG, "wrapper framework in publisher module NOT set - already initialized");
        } else {
            Logger.d(Logger.INJECT_TAG, "setting framework in publisher module: " + framework);
            this.e = framework;
        }
    }

    @Override // com.vungle.publisher.cg
    public void setWrapperFrameworkVersion(String wrapperFrameworkVersion) {
        if (this.g) {
            Logger.d(Logger.INJECT_TAG, "wrapper framework version in publisher module NOT set - already initialized");
        } else {
            Logger.d(Logger.INJECT_TAG, "setting framework in publisher module: " + wrapperFrameworkVersion);
            this.f = wrapperFrameworkVersion;
        }
    }

    @Override // com.vungle.publisher.cg
    public final void a(Context context, String str) {
        if (this.g) {
            Logger.d(Logger.INJECT_TAG, "publisher module already initialized");
            return;
        }
        Logger.d(Logger.INJECT_TAG, "initializing publisher module");
        this.a = context.getApplicationContext();
        this.b = str;
        this.g = true;
    }

    @Provides
    @AdTempDirectory
    static String a(Context context) {
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            throw new cb();
        }
        return cc.a(externalFilesDir.getAbsolutePath(), ".vungle");
    }

    @Provides
    @OldAdTempDirectory
    static String b(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir == null) {
            throw new cb();
        }
        return cc.a(externalCacheDir, ".VungleCacheDir");
    }

    @Provides
    @Singleton
    static AudioManager c(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager == null) {
            Logger.d(Logger.DEVICE_TAG, "AudioManager not avaialble");
        }
        return audioManager;
    }

    @Provides
    static ConnectivityManager d(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            Logger.d(Logger.DEVICE_TAG, "ConnectivityManager not available");
        }
        return connectivityManager;
    }

    @Provides
    static cj a(ck ckVar) {
        return ckVar;
    }

    @Provides
    @Singleton
    static cl a() {
        GoogleLocationClientDetailedLocationProvider googleLocationClientDetailedLocationProvider;
        NoClassDefFoundError e;
        try {
            googleLocationClientDetailedLocationProvider = new GoogleLocationClientDetailedLocationProvider();
            try {
                Injector.getInstance().a.inject(googleLocationClientDetailedLocationProvider);
            } catch (NoClassDefFoundError e2) {
                e = e2;
                Logger.d("error creating GoogleLocationClientDetailedLocationProvider", e);
            }
        } catch (NoClassDefFoundError e3) {
            googleLocationClientDetailedLocationProvider = null;
            e = e3;
        }
        return googleLocationClientDetailedLocationProvider;
    }

    @Provides
    @Singleton
    static cm b() {
        GoogleLocationServicesDetailedLocationProvider googleLocationServicesDetailedLocationProvider;
        NoClassDefFoundError e;
        try {
            googleLocationServicesDetailedLocationProvider = new GoogleLocationServicesDetailedLocationProvider();
            try {
                Injector.getInstance().a.inject(googleLocationServicesDetailedLocationProvider);
            } catch (NoClassDefFoundError e2) {
                e = e2;
                Logger.d("error creating GoogleLocationServicesDetailedLocationProvider", e);
            }
        } catch (NoClassDefFoundError e3) {
            googleLocationServicesDetailedLocationProvider = null;
            e = e3;
        }
        return googleLocationServicesDetailedLocationProvider;
    }

    @Provides
    @Singleton
    static bt a(AndroidDevice androidDevice) {
        return androidDevice;
    }

    @Provides
    @Singleton
    static AndroidDevice.DeviceIdStrategy a(AdvertisingDeviceIdStrategy advertisingDeviceIdStrategy) {
        return advertisingDeviceIdStrategy;
    }

    @Provides
    @EnvSharedPreferences
    static SharedPreferences e(Context context) {
        return context.getSharedPreferences("VUNGLE_PUB_APP_INFO", 0);
    }

    @Provides
    @Singleton
    static cn a(AndroidLocation androidLocation) {
        return androidLocation;
    }

    @Provides
    @Singleton
    static cp a(AndroidNetwork androidNetwork) {
        return androidNetwork;
    }

    @Provides
    static TelephonyManager f(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            Logger.d(Logger.DEVICE_TAG, "TelephonyManager not avaialble");
        }
        return telephonyManager;
    }

    @Provides
    @VungleBaseUrl
    static String c() {
        return "http://api.vungle.com/api/v4/";
    }

    @Provides
    @IngestBaseUrl
    static String d() {
        return "https://ingest.vungle.com/";
    }

    @Provides
    static WindowManager g(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            Logger.d(Logger.DEVICE_TAG, "WindowManager not available");
        }
        return windowManager;
    }
}
