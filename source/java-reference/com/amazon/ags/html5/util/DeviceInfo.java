package com.amazon.ags.html5.util;

import android.os.Build;
import com.amazon.ags.client.KindleFireProxy;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceInfo {
    private static final String DEVICE_TYPE_ANDROID = "A1K0FT6QT4HWL9";
    private static final String DEVICE_TYPE_KINDLE = "AXRZR9ASDFH6P";
    private final KindleFireProxy kindleFireProxy;

    public DeviceInfo(KindleFireProxy kindleFireProxy) {
        this.kindleFireProxy = kindleFireProxy;
    }

    public static String getIdentifier() {
        if (Build.SERIAL != null && Build.SERIAL.length() > 0) {
            return Build.SERIAL;
        }
        if ("android_id" != 0 && "android_id".length() > 0) {
            return "android_id";
        }
        return "UNKNOWN";
    }

    public static String getManufacturer() {
        return Build.MANUFACTURER;
    }

    public static String getModel() {
        String manufacturer = Build.MANUFACTURER;
        String model = Build.MODEL;
        if (model != null && manufacturer != null && model.startsWith(manufacturer)) {
            return model.replace(manufacturer, "");
        }
        return model;
    }

    public String getDeviceType() {
        return this.kindleFireProxy.isKindle() ? DEVICE_TYPE_KINDLE : DEVICE_TYPE_ANDROID;
    }
}
