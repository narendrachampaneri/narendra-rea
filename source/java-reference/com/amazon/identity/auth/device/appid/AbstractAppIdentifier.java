package com.amazon.identity.auth.device.appid;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.amazon.identity.auth.device.utils.ThirdPartyResourceParser;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractAppIdentifier implements AppIdentifier {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String LOG_TAG;

    @Override // com.amazon.identity.auth.device.appid.AppIdentifier
    public abstract String getAppFamilyId(String str, Context context);

    @Override // com.amazon.identity.auth.device.appid.AppIdentifier
    public abstract String getAppVariantId(String str, Context context);

    @Override // com.amazon.identity.auth.device.appid.AppIdentifier
    public abstract String getPackageName(String str, Context context);

    @Override // com.amazon.identity.auth.device.appid.AppIdentifier
    public abstract String getPackageNameByVariant(String str, Context context);

    @Override // com.amazon.identity.auth.device.appid.AppIdentifier
    public abstract String[] getPackageNames(String str, Context context);

    static {
        $assertionsDisabled = !AbstractAppIdentifier.class.desiredAssertionStatus();
        LOG_TAG = AbstractAppIdentifier.class.getName();
    }

    @Override // com.amazon.identity.auth.device.appid.AppIdentifier
    public boolean isAPIKeyValid(Context context) {
        if (context == null) {
            MAPLog.w(LOG_TAG, "context can't be null!");
            return false;
        }
        String packageName = context.getPackageName();
        return isAPIKeyValid(packageName, context);
    }

    @Override // com.amazon.identity.auth.device.appid.AppIdentifier
    public boolean isAPIKeyValid(String packageName, Context context) {
        MAPLog.i(LOG_TAG, "isAPIKeyValid : packageName=" + packageName);
        if (packageName != null) {
            return getAppInfo(packageName, context) != null;
        }
        MAPLog.w(LOG_TAG, "packageName can't be null!");
        return false;
    }

    @Override // com.amazon.identity.auth.device.appid.AppIdentifier
    public boolean isAPIKeyValid(String packageName, String apiKey, Context context) {
        MAPLog.pii(LOG_TAG, "isAPIKeyValid : packageName=" + packageName, "apiKey=" + apiKey);
        if (packageName == null) {
            MAPLog.w(LOG_TAG, "packageName can't be null!");
            return false;
        }
        if (apiKey != null) {
            return APIKeyDecoder.decode(packageName, apiKey, context) != null;
        }
        MAPLog.w(LOG_TAG, "apiKey can't be null!");
        return false;
    }

    @Override // com.amazon.identity.auth.device.appid.AppIdentifier
    public AppInfo getAppInfo(String packageName, Context context) {
        MAPLog.i(LOG_TAG, "getAppInfo : packageName=" + packageName);
        if (packageName == null) {
            MAPLog.w(LOG_TAG, "packageName can't be null!");
            return null;
        }
        String apiKey = getAPIKey(packageName, context);
        return APIKeyDecoder.decode(packageName, apiKey, context);
    }

    @Override // com.amazon.identity.auth.device.appid.AppIdentifier
    public String getAppLabel(String packageName, Context context) {
        MAPLog.i(LOG_TAG, "getAppLabel : packageName=" + packageName);
        if (packageName == null) {
            MAPLog.w(LOG_TAG, "packageName can't be null!");
            return null;
        }
        try {
            ApplicationInfo appInfo = context.getPackageManager().getApplicationInfo(packageName, 0);
            String to_return = (String) context.getPackageManager().getApplicationLabel(appInfo);
            return to_return;
        } catch (PackageManager.NameNotFoundException e) {
            MAPLog.e(LOG_TAG, "" + e.getMessage(), e);
            return null;
        }
    }

    private String getAPIKey(String packageName, Context context) {
        MAPLog.i(LOG_TAG, "Finding API Key for " + packageName);
        if (!$assertionsDisabled && packageName == null) {
            throw new AssertionError();
        }
        ThirdPartyResourceParser parser = new ThirdPartyResourceParser(context, packageName);
        String to_return = parser.getApiKey();
        return to_return;
    }
}
