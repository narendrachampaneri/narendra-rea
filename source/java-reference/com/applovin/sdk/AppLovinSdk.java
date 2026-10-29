package com.applovin.sdk;

import android.content.Context;
import android.util.Log;
import com.applovin.impl.sdk.AppLovinSdkImpl;
import com.applovin.nativeAds.AppLovinNativeAdService;

/* JADX INFO: loaded from: classes.dex */
public abstract class AppLovinSdk {
    public static final String URI_HOST = "com.applovin.sdk";
    public static final String URI_SCHEME = "applovin";
    public static final String VERSION = "6.1.4";
    public static final int VERSION_CODE = 614;
    private static AppLovinSdk[] a = new AppLovinSdk[0];
    private static final Object b = new Object();

    public static AppLovinSdk getInstance(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return getInstance(AppLovinSdkUtils.retrieveSdkKey(context), AppLovinSdkUtils.retrieveUserSettings(context), context);
    }

    public static AppLovinSdk getInstance(AppLovinSdkSettings appLovinSdkSettings, Context context) {
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return getInstance(AppLovinSdkUtils.retrieveSdkKey(context), appLovinSdkSettings, context);
    }

    public static AppLovinSdk getInstance(String str, AppLovinSdkSettings appLovinSdkSettings, Context context) {
        AppLovinSdk appLovinSdkImpl;
        synchronized (b) {
            if (a.length == 1 && a[0].getSdkKey().equals(str)) {
                appLovinSdkImpl = a[0];
            } else {
                AppLovinSdk[] appLovinSdkArr = a;
                int length = appLovinSdkArr.length;
                for (int i = 0; i < length; i++) {
                    appLovinSdkImpl = appLovinSdkArr[i];
                    if (!appLovinSdkImpl.getSdkKey().equals(str)) {
                    }
                }
                try {
                    appLovinSdkImpl = new AppLovinSdkImpl();
                    appLovinSdkImpl.initialize(str, appLovinSdkSettings, context.getApplicationContext());
                    AppLovinSdk[] appLovinSdkArr2 = new AppLovinSdk[a.length + 1];
                    System.arraycopy(a, 0, appLovinSdkArr2, 0, a.length);
                    appLovinSdkArr2[a.length] = appLovinSdkImpl;
                    a = appLovinSdkArr2;
                } catch (Throwable th) {
                    Log.e(AppLovinLogger.SDK_TAG, "Failed to build AppLovin SDK. Try cleaning application data and starting the application again.", th);
                    throw new RuntimeException("Unable to build AppLovin SDK");
                }
            }
        }
        return appLovinSdkImpl;
    }

    public static void initializeSdk(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        AppLovinSdk appLovinSdk = getInstance(context);
        if (appLovinSdk != null) {
            appLovinSdk.initializeSdk();
        } else {
            Log.e(AppLovinLogger.SDK_TAG, "Unable to initialize AppLovin SDK: SDK object not created");
        }
    }

    public abstract AppLovinAdService getAdService();

    public abstract Context getApplicationContext();

    public abstract AppLovinEventService getEventService();

    public abstract AppLovinLogger getLogger();

    public abstract AppLovinNativeAdService getNativeAdService();

    public abstract AppLovinPostbackService getPostbackService();

    public abstract String getSdkKey();

    public abstract AppLovinSdkSettings getSettings();

    public abstract AppLovinTargetingData getTargetingData();

    public abstract boolean hasCriticalErrors();

    protected abstract void initialize(String str, AppLovinSdkSettings appLovinSdkSettings, Context context);

    public abstract void initializeSdk();

    public abstract boolean isEnabled();

    public abstract void setPluginVersion(String str);
}
