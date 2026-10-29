package com.inmobi.commons.analytics.iat.impl.config;

import android.content.Context;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.cache.CacheController;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.Logger;
import com.inmobi.commons.uid.UID;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdTrackerInitializer {
    public static final String PRODUCT_IAT = "iat";
    private static Map<String, String> b;
    private static Context a = null;
    private static AdTrackerConfigParams c = new AdTrackerConfigParams();
    private static Logger d = new Logger(2, "iat");
    private static CacheController.Validator e = new CacheController.Validator() { // from class: com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer.1
        @Override // com.inmobi.commons.cache.CacheController.Validator
        public boolean validate(Map<String, Object> map) {
            return AdTrackerInitializer.b(map);
        }
    };

    public static AdTrackerConfigParams getConfigParams() {
        if (InternalSDKUtil.getContext() != null && InMobi.getAppId() != null) {
            b(InternalSDKUtil.getContext());
        }
        d.setMetricConfigParams(c.getMetric());
        return c;
    }

    public static Logger getLogger() {
        return d;
    }

    private static void a(Context context) {
        if (context != null && a == null) {
            if (a == null) {
                a = context.getApplicationContext();
                b = UID.getInstance().getMapForEncryption(getConfigParams().getDeviceIdMaskMap());
                try {
                    b(CacheController.getConfig("iat", context, b, e).getData());
                    return;
                } catch (Exception e2) {
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Exception while retreiving configs.");
                    return;
                }
            }
            return;
        }
        if (a == null && context == null) {
            a.getApplicationContext();
        }
    }

    private static void b(Context context) {
        a(context);
        try {
            CacheController.getConfig("iat", context, b, e);
        } catch (Exception e2) {
        }
    }

    public static Map<String, String> getUidMap(Context context) {
        return UID.getInstance().getMapForEncryption(getConfigParams().getDeviceIdMaskMap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Map<String, Object> map) {
        b = getUidMap(a);
        Map<String, Object> mapPopulateToNewMap = InternalSDKUtil.populateToNewMap((Map) map.get("AND"), (Map) map.get("common"), true);
        try {
            AdTrackerConfigParams adTrackerConfigParams = new AdTrackerConfigParams();
            adTrackerConfigParams.setFromMap(mapPopulateToNewMap);
            c = adTrackerConfigParams;
            return true;
        } catch (Exception e2) {
            return false;
        }
    }
}
