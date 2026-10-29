package com.inmobi.commons.internal;

import com.amazon.identity.auth.device.endpoint.AbstractOauthTokenRequest;
import com.inmobi.commons.metric.MetricConfigParams;
import com.inmobi.commons.uid.UID;
import com.inmobi.commons.uid.UIDMapConfigParams;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CommonsConfig {
    private static Log.INTERNAL_LOG_LEVEL a = Log.INTERNAL_LOG_LEVEL.NONE;
    private static Log.INTERNAL_LOG_LEVEL b = a;
    private MetricConfigParams c = new MetricConfigParams();

    protected static int getLogLevelConfig() {
        return b.getValue();
    }

    public MetricConfigParams getApiStatsConfig() {
        return this.c;
    }

    public final void setFromMap(Map<String, Object> map) throws Exception {
        Map<String, Object> mapPopulateToNewMap = InternalSDKUtil.populateToNewMap((Map) map.get("AND"), (Map) map.get("common"), true);
        UIDMapConfigParams uIDMapConfigParams = new UIDMapConfigParams();
        uIDMapConfigParams.setMap(InternalSDKUtil.getObjectFromMap(mapPopulateToNewMap, "ids"));
        UID.getInstance().setCommonsDeviceIdMaskMap(uIDMapConfigParams.getMap());
        b = Log.getLogLevelValue(InternalSDKUtil.getIntFromMap(mapPopulateToNewMap, "ll", 0, 2L));
        this.c.setFromMap((Map) mapPopulateToNewMap.get(AbstractOauthTokenRequest.API_PREFIX));
    }
}
