package com.mopub.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class ClientMetadata {
    private static final String DEVICE_ORIENTATION_LANDSCAPE = "l";
    private static final String DEVICE_ORIENTATION_PORTRAIT = "p";
    private static final String DEVICE_ORIENTATION_SQUARE = "s";
    private static final String DEVICE_ORIENTATION_UNKNOWN = "u";
    private static final String IFA_PREFIX = "ifa:";
    private static final String SHA_PREFIX = "sha:";
    private static final int TYPE_ETHERNET = 9;
    private static final int UNKNOWN_NETWORK = -1;
    private static volatile ClientMetadata sInstance;
    private String mAppName;
    private final String mAppPackageName;
    private final String mAppVersion;
    private final ConnectivityManager mConnectivityManager;
    private final Context mContext;
    private final String mIsoCountryCode;
    private final String mNetworkOperator;
    private String mNetworkOperatorForUrl;
    private String mNetworkOperatorName;
    private final String mSimIsoCountryCode;
    private String mSimOperator;
    private String mSimOperatorName;
    private String mUdid;
    private boolean mDoNotTrack = false;
    private boolean mAdvertisingInfoSet = false;
    private final String mDeviceManufacturer = Build.MANUFACTURER;
    private final String mDeviceModel = Build.MODEL;
    private final String mDeviceProduct = Build.PRODUCT;
    private final String mDeviceOsVersion = Build.VERSION.RELEASE;
    private final String mSdkVersion = MoPub.SDK_VERSION;

    public enum MoPubNetworkType {
        UNKNOWN(0),
        ETHERNET(1),
        WIFI(2),
        MOBILE(3);

        private final int mId;

        MoPubNetworkType(int id) {
            this.mId = id;
        }

        @Override // java.lang.Enum
        public String toString() {
            return Integer.toString(this.mId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static MoPubNetworkType fromAndroidNetworkType(int type) {
            switch (type) {
                case 0:
                case 2:
                case 3:
                case 4:
                case 5:
                    return MOBILE;
                case 1:
                    return WIFI;
                case 6:
                case 7:
                case 8:
                default:
                    return UNKNOWN;
                case 9:
                    return ETHERNET;
            }
        }

        public int getId() {
            return this.mId;
        }
    }

    public static ClientMetadata getInstance(Context context) throws Throwable {
        ClientMetadata result = sInstance;
        if (result == null) {
            synchronized (ClientMetadata.class) {
                try {
                    result = sInstance;
                    if (result == null) {
                        ClientMetadata result2 = new ClientMetadata(context);
                        try {
                            sInstance = result2;
                            result = result2;
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        return result;
    }

    public static ClientMetadata getInstance() {
        ClientMetadata result = sInstance;
        if (result == null) {
            synchronized (ClientMetadata.class) {
                result = sInstance;
            }
        }
        return result;
    }

    public ClientMetadata(Context context) {
        this.mContext = context.getApplicationContext();
        this.mConnectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        this.mAppVersion = getAppVersionFromContext(this.mContext);
        PackageManager packageManager = this.mContext.getPackageManager();
        ApplicationInfo applicationInfo = null;
        this.mAppPackageName = context.getPackageName();
        try {
            applicationInfo = packageManager.getApplicationInfo(this.mAppPackageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
        }
        if (applicationInfo != null) {
            this.mAppName = (String) packageManager.getApplicationLabel(applicationInfo);
        }
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        this.mNetworkOperatorForUrl = telephonyManager.getNetworkOperator();
        this.mNetworkOperator = telephonyManager.getNetworkOperator();
        if (telephonyManager.getPhoneType() == 2 && telephonyManager.getSimState() == 5) {
            this.mNetworkOperatorForUrl = telephonyManager.getSimOperator();
            this.mSimOperator = telephonyManager.getSimOperator();
        }
        this.mIsoCountryCode = telephonyManager.getNetworkCountryIso();
        this.mSimIsoCountryCode = telephonyManager.getSimCountryIso();
        try {
            this.mNetworkOperatorName = telephonyManager.getNetworkOperatorName();
            if (telephonyManager.getSimState() == 5) {
                this.mSimOperatorName = telephonyManager.getSimOperatorName();
            }
        } catch (SecurityException e2) {
            this.mNetworkOperatorName = null;
            this.mSimOperatorName = null;
        }
        this.mUdid = getDeviceIdFromContext(this.mContext);
    }

    private static String getAppVersionFromContext(Context context) {
        try {
            String packageName = context.getPackageName();
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            return packageInfo.versionName;
        } catch (Exception e) {
            MoPubLog.d("Failed to retrieve PackageInfo#versionName.");
            return null;
        }
    }

    private static String getDeviceIdFromContext(Context context) {
        String deviceId = Settings.Secure.getString(context.getContentResolver(), "android_id");
        return SHA_PREFIX + (deviceId == null ? "" : Utils.sha1(deviceId));
    }

    public String getOrientationString() {
        int orientationInt = this.mContext.getResources().getConfiguration().orientation;
        if (orientationInt == 1) {
            return "p";
        }
        if (orientationInt == 2) {
            return DEVICE_ORIENTATION_LANDSCAPE;
        }
        if (orientationInt != 3) {
            return DEVICE_ORIENTATION_UNKNOWN;
        }
        return DEVICE_ORIENTATION_SQUARE;
    }

    public MoPubNetworkType getActiveNetworkType() {
        int networkType = -1;
        if (this.mContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
            NetworkInfo activeNetworkInfo = this.mConnectivityManager.getActiveNetworkInfo();
            networkType = activeNetworkInfo != null ? activeNetworkInfo.getType() : -1;
        }
        return MoPubNetworkType.fromAndroidNetworkType(networkType);
    }

    public float getDensity() {
        return this.mContext.getResources().getDisplayMetrics().density;
    }

    public String getNetworkOperatorForUrl() {
        return this.mNetworkOperatorForUrl;
    }

    public String getNetworkOperator() {
        return this.mNetworkOperator;
    }

    public Locale getDeviceLocale() {
        return this.mContext.getResources().getConfiguration().locale;
    }

    public String getSimOperator() {
        return this.mSimOperator;
    }

    public String getIsoCountryCode() {
        return this.mIsoCountryCode;
    }

    public String getSimIsoCountryCode() {
        return this.mSimIsoCountryCode;
    }

    public String getNetworkOperatorName() {
        return this.mNetworkOperatorName;
    }

    public String getSimOperatorName() {
        return this.mSimOperatorName;
    }

    public synchronized String getDeviceId() {
        return this.mUdid;
    }

    public synchronized boolean isDoNotTrackSet() {
        return this.mDoNotTrack;
    }

    public synchronized void setAdvertisingInfo(String advertisingId, boolean doNotTrack) {
        this.mUdid = IFA_PREFIX + advertisingId;
        this.mDoNotTrack = doNotTrack;
        this.mAdvertisingInfoSet = true;
    }

    public synchronized boolean isAdvertisingInfoSet() {
        return this.mAdvertisingInfoSet;
    }

    public String getDeviceManufacturer() {
        return this.mDeviceManufacturer;
    }

    public String getDeviceModel() {
        return this.mDeviceModel;
    }

    public String getDeviceProduct() {
        return this.mDeviceProduct;
    }

    public String getDeviceOsVersion() {
        return this.mDeviceOsVersion;
    }

    public int getDeviceScreenWidthDip() {
        return Dips.screenWidthAsIntDips(this.mContext);
    }

    public int getDeviceScreenHeightDip() {
        return Dips.screenHeightAsIntDips(this.mContext);
    }

    public Point getDeviceDimensions() {
        return Preconditions.NoThrow.checkNotNull(this.mContext) ? DeviceUtils.getDeviceDimensions(this.mContext) : new Point(0, 0);
    }

    public String getSdkVersion() {
        return this.mSdkVersion;
    }

    public String getAppVersion() {
        return this.mAppVersion;
    }

    public String getAppPackageName() {
        return this.mAppPackageName;
    }

    public String getAppName() {
        return this.mAppName;
    }

    @VisibleForTesting
    @Deprecated
    public static void setInstance(ClientMetadata clientMetadata) {
        synchronized (ClientMetadata.class) {
            sInstance = clientMetadata;
        }
    }

    @VisibleForTesting
    public static void clearForTesting() {
        sInstance = null;
    }
}
