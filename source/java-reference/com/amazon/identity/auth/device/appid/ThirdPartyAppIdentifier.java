package com.amazon.identity.auth.device.appid;

import android.content.Context;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.amazon.identity.auth.device.utils.MAPLog;

/* JADX INFO: loaded from: classes.dex */
public final class ThirdPartyAppIdentifier extends AbstractAppIdentifier {
    private static final String LOG_TAG = ThirdPartyAppIdentifier.class.getName();

    @Override // com.amazon.identity.auth.device.appid.AbstractAppIdentifier, com.amazon.identity.auth.device.appid.AppIdentifier
    public String getPackageName(String appId, Context context) {
        return null;
    }

    @Override // com.amazon.identity.auth.device.appid.AbstractAppIdentifier, com.amazon.identity.auth.device.appid.AppIdentifier
    public String[] getPackageNames(String appId, Context context) {
        return null;
    }

    @Override // com.amazon.identity.auth.device.appid.AbstractAppIdentifier, com.amazon.identity.auth.device.appid.AppIdentifier
    public String getPackageNameByVariant(String appVariantId, Context context) {
        return null;
    }

    @Override // com.amazon.identity.auth.device.appid.AbstractAppIdentifier, com.amazon.identity.auth.device.appid.AppIdentifier
    public String getAppFamilyId(String packageName, Context context) {
        MAPLog.i(LOG_TAG, "getAppFamilyId : packageName=" + packageName);
        if (packageName == null) {
            MAPLog.w(LOG_TAG, "packageName can't be null!");
            return null;
        }
        AppInfo appInfo = getAppInfo(packageName, context);
        if (appInfo != null) {
            return appInfo.getAppFamilyId();
        }
        return null;
    }

    @Override // com.amazon.identity.auth.device.appid.AbstractAppIdentifier, com.amazon.identity.auth.device.appid.AppIdentifier
    public String getAppVariantId(String packageName, Context context) {
        MAPLog.i(LOG_TAG, "getAppVariantId : packageName=" + packageName);
        if (packageName == null) {
            MAPLog.w(LOG_TAG, "packageName can't be null!");
            return null;
        }
        AppInfo appInfo = getAppInfo(packageName, context);
        if (appInfo != null) {
            return appInfo.getAppVariantId();
        }
        return null;
    }

    @Override // com.amazon.identity.auth.device.appid.AppIdentifier
    public String[] getAllowedScopes(String packageName, Context context) {
        MAPLog.i(LOG_TAG, "getAllowedScopes : packageName=" + packageName);
        if (packageName == null) {
            MAPLog.w(LOG_TAG, "packageName can't be null!");
            return null;
        }
        AppInfo appInfo = getAppInfo(packageName, context);
        if (appInfo != null) {
            return appInfo.getAllowedScopes();
        }
        return null;
    }

    @Override // com.amazon.identity.auth.device.appid.AppIdentifier
    public String[] getAppPermissions(String packageName, Context context) {
        MAPLog.i(LOG_TAG, "getAppPermissions : packageName=" + packageName);
        if (packageName == null) {
            MAPLog.w(LOG_TAG, "packageName can't be null!");
            return null;
        }
        AppInfo appInfo = getAppInfo(packageName, context);
        if (appInfo != null) {
            return appInfo.getGrantedPermissions();
        }
        return null;
    }

    public AppInfo getAppInfoByApiKey(String packageName, String apiKey, Context context) {
        MAPLog.i(LOG_TAG, "getAppInfo : packageName=" + packageName);
        if (packageName != null) {
            return APIKeyDecoder.doDecode(packageName, apiKey, false, context);
        }
        MAPLog.w(LOG_TAG, "packageName can't be null!");
        return null;
    }

    public boolean isAPIKeyValidFormat(String packageName, String apiKey, Context context) {
        MAPLog.pii(LOG_TAG, "isAPIKeyValid : packageName=" + packageName, "apiKey=" + apiKey);
        if (packageName == null) {
            MAPLog.w(LOG_TAG, "packageName can't be null!");
            return false;
        }
        if (apiKey != null) {
            return APIKeyDecoder.doDecode(packageName, apiKey, false, context) != null;
        }
        MAPLog.w(LOG_TAG, "apiKey can't be null!");
        return false;
    }
}
