package com.inmobi.commons.analytics.bootstrapper;

import android.content.Context;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.cache.CacheController;
import com.inmobi.commons.cache.ProductConfig;
import com.inmobi.commons.internal.CommonsException;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.ThinICE;
import com.inmobi.commons.uid.UID;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsInitializer {
    public static final String PRODUCT_ANALYTICS = "ltvp";
    private static Context a = null;
    private static Map<String, String> b = new HashMap();
    private static AnalyticsConfigParams c = new AnalyticsConfigParams();
    private static CacheController.Validator d = new CacheController.Validator() { // from class: com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer.1
        @Override // com.inmobi.commons.cache.CacheController.Validator
        public boolean validate(Map<String, Object> map) {
            return AnalyticsInitializer.b(map);
        }
    };

    public static AnalyticsConfigParams getRawConfigParams() {
        return c;
    }

    public static AnalyticsConfigParams getConfigParams() {
        if (InternalSDKUtil.getContext() != null && InMobi.getAppId() != null) {
            b(InternalSDKUtil.getContext());
        }
        return c;
    }

    private static void a(Context context) {
        if (context != null && a == null) {
            if (a == null) {
                a = context.getApplicationContext();
                b = getUidMap(context);
                try {
                    ProductConfig config = CacheController.getConfig(PRODUCT_ANALYTICS, context, b, d);
                    if (config.getRawData() != null) {
                        b(config.getData());
                        return;
                    }
                    return;
                } catch (CommonsException e) {
                    Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception while retreiving configs due to commons Exception with code " + e.getCode());
                    return;
                } catch (Exception e2) {
                    Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception while retreiving configs.", e2);
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
        b = getUidMap(a);
        try {
            CacheController.getConfig(PRODUCT_ANALYTICS, context, b, d);
        } catch (Exception e) {
        }
    }

    public static Map<String, String> getUidMap(Context context) {
        return UID.getInstance().getMapForEncryption(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Map<String, Object> map) {
        AnalyticsConfigParams analyticsConfigParams = new AnalyticsConfigParams();
        try {
            analyticsConfigParams.setFromMap((Map) map.get("common"));
            c = analyticsConfigParams;
            ThinICE.setConfig(analyticsConfigParams.getThinIceConfig());
            return true;
        } catch (Exception e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception while saving configs.", e);
            return false;
        }
    }
}
