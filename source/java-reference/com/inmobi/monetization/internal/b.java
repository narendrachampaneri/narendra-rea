package com.inmobi.monetization.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.util.Log;
import com.inmobi.androidsdk.IMBrowserActivity;
import java.util.Iterator;

/* JADX INFO: compiled from: AdNetworkUtil.java */
/* JADX INFO: loaded from: classes.dex */
class b {
    private static boolean a = false;

    public static void a(Context context) throws InvalidManifestConfigException {
        ResolveInfo next;
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") != 0) {
            Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_INTERNET_PERMISSION);
            throw new InvalidManifestConfigException(-1);
        }
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
            Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_ACCESS_NETWORK_PERMISSION);
            throw new InvalidManifestConfigException(-9);
        }
        Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(new Intent(context, (Class<?>) IMBrowserActivity.class), 65536).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!next.activityInfo.name.contentEquals("com.inmobi.androidsdk.IMBrowserActivity"));
        if (next == null) {
            Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_ACTIVITY_DECLARATION);
            throw new InvalidManifestConfigException(-2);
        }
        int i = next.activityInfo.configChanges;
        if (i == 0) {
            Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_CONFIG_CHANGES);
            throw new InvalidManifestConfigException(-3);
        }
        if ((i & 16) == 0) {
            Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_CONFIG_KEYBOARD);
            throw new InvalidManifestConfigException(-4);
        }
        if ((i & 32) == 0) {
            Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_CONFIG_KEYBOARDHIDDEN);
            throw new InvalidManifestConfigException(-5);
        }
        if ((i & 128) == 0) {
            Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_CONFIG_ORIENTATION);
            throw new InvalidManifestConfigException(-6);
        }
        if (Build.VERSION.SDK_INT >= 13) {
            if ((i & 1024) == 0) {
                Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_CONFIG_SCREENSIZE);
                throw new InvalidManifestConfigException(-7);
            }
            if ((i & 2048) == 0) {
                Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_CONFIG_SMALLEST_SCREENSIZE);
                throw new InvalidManifestConfigException(-8);
            }
        }
    }

    public static Activity a(Activity activity) {
        while (activity.getParent() != null) {
            activity = activity.getParent();
        }
        return activity;
    }
}
