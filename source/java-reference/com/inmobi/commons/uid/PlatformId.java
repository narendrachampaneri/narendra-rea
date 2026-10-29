package com.inmobi.commons.uid;

import android.content.Context;
import android.provider.Settings;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;

/* JADX INFO: loaded from: classes.dex */
public class PlatformId {
    public static String getAndroidId(Context context) {
        String string = null;
        try {
            string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.PRODUCT_COMMONS, "Unable to retrieve android id.");
        }
        if (string == null) {
            try {
                return Settings.System.getString(context.getContentResolver(), "android_id");
            } catch (Exception e2) {
                Log.internal(InternalSDKUtil.PRODUCT_COMMONS, "Unable to retrieve android id.");
                return string;
            }
        }
        return string;
    }
}
