package android.support.v4.app;

import android.app.ActivityManager;

/* JADX INFO: loaded from: classes2.dex */
class ActivityManagerCompatKitKat {
    ActivityManagerCompatKitKat() {
    }

    public static boolean isLowRamDevice(ActivityManager am) {
        return am.isLowRamDevice();
    }
}
