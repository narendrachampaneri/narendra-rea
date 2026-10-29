package com.inmobi.commons.data;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.commons.uid.UID;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class DeviceInfo {
    private static String a;
    private static String b;
    private static String c;
    private static String f;
    private static String g;
    private static String d = null;
    private static String e = null;
    private static a h = a.PORTRAIT;

    private enum a {
        PORTRAIT(1),
        REVERSE_PORTRAIT(2),
        LANDSCAPE(3),
        REVERSE_LANDSCAPE(4);

        private int e;

        a(int i) {
            this.e = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int a() {
            return this.e;
        }
    }

    public static String getNetworkType() {
        return a;
    }

    private static void a(String str) {
        a = str;
    }

    private static void a(Context context) {
        try {
            if (f == null) {
                f = FileOperations.getPreferences(context, InternalSDKUtil.IM_PREF, UID.KEY_AID);
            }
            if (f == null) {
                f = UUID.randomUUID().toString();
                FileOperations.setPreferences(context, InternalSDKUtil.IM_PREF, UID.KEY_AID, f);
            }
        } catch (Exception e2) {
        }
    }

    public static String getAid() {
        return f;
    }

    public static String getLocalization() {
        return b;
    }

    private static void b(String str) {
        b = str;
    }

    private static String a() {
        return c;
    }

    private static void c(String str) {
        c = str;
    }

    public static String getPhoneDefaultUserAgent() {
        return g == null ? "" : g;
    }

    public static String getScreenSize() {
        return d;
    }

    public static void setScreenSize(String str) {
        d = str;
    }

    public static String getScreenDensity() {
        return e;
    }

    public static void setScreenDensity(String str) {
        e = str;
    }

    public static int getOrientation() {
        return h.a();
    }

    private static void a(a aVar) {
        h = aVar;
    }

    public static void updateDeviceInfo() {
        String lowerCase;
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            Display defaultDisplay = ((WindowManager) InternalSDKUtil.getContext().getSystemService("window")).getDefaultDisplay();
            defaultDisplay.getMetrics(displayMetrics);
            float f2 = displayMetrics.density;
            int displayWidth = (int) (WrapperFunctions.getDisplayWidth(defaultDisplay) / f2);
            int displayHeight = (int) (WrapperFunctions.getDisplayHeight(defaultDisplay) / f2);
            setScreenDensity(String.valueOf(f2));
            setScreenSize("" + displayWidth + "X" + displayHeight);
            setPhoneDefaultUserAgent(InternalSDKUtil.getUserAgent());
            if (a() == null) {
                c(Build.BRAND);
                Locale locale = Locale.getDefault();
                String language = locale.getLanguage();
                if (language != null) {
                    lowerCase = language.toLowerCase(Locale.ENGLISH);
                    String country = locale.getCountry();
                    if (country != null) {
                        lowerCase = lowerCase + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + country.toLowerCase(Locale.ENGLISH);
                    }
                } else {
                    String str = (String) System.getProperties().get("user.language");
                    String str2 = (String) System.getProperties().get("user.region");
                    lowerCase = (str == null || str2 == null) ? language : str + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + str2;
                    if (lowerCase == null) {
                        lowerCase = "en";
                    }
                }
                b(lowerCase);
            }
            if (InternalSDKUtil.getContext() != null) {
                a(InternalSDKUtil.getContext());
            }
            updateDeviceOrientation();
            updateNetworkConnectedInfo();
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception setting device info", e2);
        }
    }

    public static void updateNetworkConnectedInfo() {
        a(InternalSDKUtil.getConnectivityType(InternalSDKUtil.getContext()));
    }

    public static void updateDeviceOrientation() {
        try {
            int currentOrientationInFixedValues = WrapperFunctions.getCurrentOrientationInFixedValues(InternalSDKUtil.getContext());
            if (currentOrientationInFixedValues == 9) {
                a(a.REVERSE_PORTRAIT);
            } else if (currentOrientationInFixedValues == 8) {
                a(a.REVERSE_LANDSCAPE);
            } else if (currentOrientationInFixedValues == 0) {
                a(a.LANDSCAPE);
            } else {
                a(a.PORTRAIT);
            }
        } catch (Exception e2) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Error getting the orientation info ", e2);
        }
    }

    public static void setPhoneDefaultUserAgent(String str) {
        g = str;
    }

    public static int getDisplayRotation(Display display) {
        Method method = null;
        try {
            method = Display.class.getMethod("getRotation", (Class[]) null);
        } catch (NoSuchMethodException e2) {
            try {
                method = Display.class.getMethod("getOrientation", (Class[]) null);
            } catch (NoSuchMethodException e3) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to access getOrientation method via reflection");
            }
        }
        if (method != null) {
            try {
                return ((Integer) method.invoke(display, (Object[]) null)).intValue();
            } catch (Exception e4) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to access display rotation");
            }
        }
        return -999;
    }

    public static boolean isDefOrientationLandscape(int i, int i2, int i3) {
        if (i2 <= i3 || !(i == 0 || i == 2)) {
            return i2 < i3 && (i == 1 || i == 3);
        }
        return true;
    }

    public static boolean isTablet(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        double d2 = displayMetrics.widthPixels / displayMetrics.xdpi;
        double d3 = displayMetrics.heightPixels / displayMetrics.ydpi;
        return Math.sqrt((d3 * d3) + (d2 * d2)) > 7.0d;
    }
}
