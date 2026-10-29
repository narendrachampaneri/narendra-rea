package com.amazon.identity.auth.device.authorization.api;

import android.content.Context;
import com.amazon.identity.auth.device.appid.AppIdentifier;
import com.amazon.identity.auth.device.appid.ThirdPartyAppIdentifier;
import com.amazon.identity.auth.device.dataobject.AppInfo;

/* JADX INFO: loaded from: classes.dex */
public final class AppIdentifierHelper {
    private AppIdentifierHelper() {
    }

    public static boolean isAPIKeyValid(String packageName, Context context) {
        AppIdentifier appIdentifier = new ThirdPartyAppIdentifier();
        return appIdentifier.isAPIKeyValid(packageName, context);
    }

    public static AppInfo getAppInfo(String packageName, Context context) {
        AppIdentifier appIdentifier = new ThirdPartyAppIdentifier();
        return appIdentifier.getAppInfo(packageName, context);
    }
}
