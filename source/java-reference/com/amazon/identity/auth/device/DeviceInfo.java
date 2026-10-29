package com.amazon.identity.auth.device;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.text.format.Time;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class DeviceInfo {
    public static final String EMPTY_FIELD = "unknown";
    private String deviceId;
    private final int flags;
    private final String processName;
    private final int targetSdkVersion;
    private final int uid;
    private static final String LOG_TAG = DeviceInfo.class.getName();
    private static final String board = Build.BOARD;
    private static final String bootloader = Build.BOOTLOADER;
    private static final String brand = Build.BRAND;
    private static final String cpu_abi = Build.CPU_ABI;
    private static final String cpu_api2 = Build.CPU_ABI2;
    private static final String device = Build.DEVICE;
    private static final String display = Build.DISPLAY;
    private static final String fingerprint = Build.FINGERPRINT;
    private static final String hardware = Build.HARDWARE;
    private static final String host = Build.HOST;
    private static final String id = Build.ID;
    public static final String manufacturer = Build.MANUFACTURER;
    public static final String model = Build.MODEL;
    private static final String product = Build.PRODUCT;
    private static final String radio = Build.RADIO;
    private static final String tags = Build.TAGS;
    private static final long time = Build.TIME;
    private static String type = Build.TYPE;
    private static String user = Build.USER;
    private static final String codename = Build.VERSION.CODENAME;
    private static final String incremental = Build.VERSION.INCREMENTAL;
    public static final String release = Build.VERSION.RELEASE;
    public static final int sdk_version = Build.VERSION.SDK_INT;
    private static final String country = Locale.getDefault().getCountry();
    private static final String language = Locale.getDefault().getLanguage();
    private static final String timezone = Time.getCurrentTimezone();

    public DeviceInfo(Context context) throws AuthError {
        ApplicationInfo ai = context.getApplicationInfo();
        this.processName = ai.processName;
        this.targetSdkVersion = ai.targetSdkVersion;
        this.uid = ai.uid;
        this.flags = ai.flags;
    }

    public String toString() {
        return super.toString();
    }
}
