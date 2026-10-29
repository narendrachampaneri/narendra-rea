package com.mopub.common.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.StatFs;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.amazon.device.ads.DeviceInfo;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.io.File;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Collections;
import java.util.Locale;
import org.apache.http.conn.util.InetAddressUtils;

/* JADX INFO: loaded from: classes.dex */
public class DeviceUtils {
    private static final int MAX_DISK_CACHE_SIZE = 104857600;
    private static final int MAX_MEMORY_CACHE_SIZE = 31457280;
    private static final int MIN_DISK_CACHE_SIZE = 31457280;

    private DeviceUtils() {
    }

    public enum ForceOrientation {
        FORCE_PORTRAIT(DeviceInfo.ORIENTATION_PORTRAIT),
        FORCE_LANDSCAPE(DeviceInfo.ORIENTATION_LANDSCAPE),
        DEVICE_ORIENTATION("device"),
        UNDEFINED("");


        @NonNull
        private final String mKey;

        ForceOrientation(String key) {
            this.mKey = key;
        }

        @NonNull
        public static ForceOrientation getForceOrientation(@Nullable String key) {
            for (ForceOrientation orientation : values()) {
                if (orientation.mKey.equalsIgnoreCase(key)) {
                    return orientation;
                }
            }
            return UNDEFINED;
        }
    }

    public enum IP {
        IPv4,
        IPv6;

        /* JADX INFO: Access modifiers changed from: private */
        public boolean matches(String address) {
            switch (this) {
                case IPv4:
                    return InetAddressUtils.isIPv4Address(address);
                case IPv6:
                    return InetAddressUtils.isIPv6Address(address);
                default:
                    return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String toString(String address) {
            switch (this) {
                case IPv4:
                    return address;
                case IPv6:
                    return address.split("%")[0];
                default:
                    return null;
            }
        }
    }

    public static String getIpAddress(IP ip) throws SocketException {
        for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
            for (InetAddress address : Collections.list(networkInterface.getInetAddresses())) {
                if (!address.isLoopbackAddress()) {
                    String hostAddress = address.getHostAddress().toUpperCase(Locale.US);
                    if (ip.matches(hostAddress)) {
                        return ip.toString(hostAddress);
                    }
                }
            }
        }
        return null;
    }

    public static String getHashedUdid(Context context) {
        if (context == null) {
            return null;
        }
        String udid = Settings.Secure.getString(context.getContentResolver(), "android_id");
        return Utils.sha1(udid);
    }

    public static boolean isNetworkAvailable(@Nullable Context context) {
        if (context == null) {
            return false;
        }
        int internetPermission = context.checkCallingOrSelfPermission("android.permission.INTERNET");
        if (internetPermission == -1) {
            return false;
        }
        int networkAccessPermission = context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE");
        if (networkAccessPermission == -1) {
            return true;
        }
        try {
            ConnectivityManager connnectionManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo networkInfo = connnectionManager.getActiveNetworkInfo();
            return networkInfo.isConnected();
        } catch (NullPointerException e) {
            return false;
        }
    }

    public static int memoryCacheSizeBytes(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        long memoryClass = activityManager.getMemoryClass();
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.HONEYCOMB)) {
            try {
                int flagLargeHeap = ApplicationInfo.class.getDeclaredField("FLAG_LARGE_HEAP").getInt(null);
                if (Utils.bitMaskContainsFlag(context.getApplicationInfo().flags, flagLargeHeap)) {
                    memoryClass = ((Integer) new Reflection.MethodBuilder(activityManager, "getLargeMemoryClass").execute()).intValue();
                }
            } catch (Exception e) {
                MoPubLog.d("Unable to reflectively determine large heap size on Honeycomb and above.");
            }
        }
        long result = Math.min(31457280L, (memoryClass / 8) * PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID * PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID);
        return (int) result;
    }

    public static long diskCacheSizeBytes(File dir, long minSize) {
        long size = minSize;
        try {
            StatFs statFs = new StatFs(dir.getAbsolutePath());
            long availableBytes = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
            size = availableBytes / 50;
        } catch (IllegalArgumentException e) {
            MoPubLog.d("Unable to calculate 2% of available disk space, defaulting to minimum");
        }
        return Math.max(Math.min(size, 104857600L), 31457280L);
    }

    public static long diskCacheSizeBytes(File dir) {
        return diskCacheSizeBytes(dir, 31457280L);
    }

    public static int getScreenOrientation(@NonNull Activity activity) {
        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        int deviceOrientation = activity.getResources().getConfiguration().orientation;
        return getScreenOrientationFromRotationAndOrientation(rotation, deviceOrientation);
    }

    static int getScreenOrientationFromRotationAndOrientation(int rotation, int orientation) {
        if (1 == orientation) {
            switch (rotation) {
                case 1:
                case 2:
                    return 9;
                default:
                    return 1;
            }
        }
        if (2 == orientation) {
            switch (rotation) {
                case 2:
                case 3:
                    return 8;
                default:
                    return 0;
            }
        }
        MoPubLog.d("Unknown screen orientation. Defaulting to portrait.");
        return 9;
    }

    public static void lockOrientation(@NonNull Activity activity, @NonNull CreativeOrientation creativeOrientation) {
        int requestedOrientation;
        if (Preconditions.NoThrow.checkNotNull(creativeOrientation) && Preconditions.NoThrow.checkNotNull(activity)) {
            Display display = ((WindowManager) activity.getSystemService("window")).getDefaultDisplay();
            int currentRotation = display.getRotation();
            int deviceOrientation = activity.getResources().getConfiguration().orientation;
            int currentOrientation = getScreenOrientationFromRotationAndOrientation(currentRotation, deviceOrientation);
            if (CreativeOrientation.PORTRAIT == creativeOrientation) {
                if (9 == currentOrientation) {
                    requestedOrientation = 9;
                } else {
                    requestedOrientation = 1;
                }
            } else if (CreativeOrientation.LANDSCAPE == creativeOrientation) {
                if (8 == currentOrientation) {
                    requestedOrientation = 8;
                } else {
                    requestedOrientation = 0;
                }
            } else {
                return;
            }
            activity.setRequestedOrientation(requestedOrientation);
        }
    }

    @TargetApi(17)
    public static Point getDeviceDimensions(@NonNull Context context) {
        Integer bestWidthPixels = null;
        Integer bestHeightPixels = null;
        if (Build.VERSION.SDK_INT >= 13) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            Display display = windowManager.getDefaultDisplay();
            if (Build.VERSION.SDK_INT >= 17) {
                Point screenSize = new Point();
                display.getRealSize(screenSize);
                bestWidthPixels = Integer.valueOf(screenSize.x);
                bestHeightPixels = Integer.valueOf(screenSize.y);
            } else {
                try {
                    bestWidthPixels = (Integer) new Reflection.MethodBuilder(display, "getRawWidth").execute();
                    bestHeightPixels = (Integer) new Reflection.MethodBuilder(display, "getRawHeight").execute();
                } catch (Exception e) {
                    MoPubLog.v("Display#getRawWidth/Height failed.", e);
                }
            }
        }
        if (bestWidthPixels == null || bestHeightPixels == null) {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            bestWidthPixels = Integer.valueOf(displayMetrics.widthPixels);
            bestHeightPixels = Integer.valueOf(displayMetrics.heightPixels);
        }
        return new Point(bestWidthPixels.intValue(), bestHeightPixels.intValue());
    }
}
