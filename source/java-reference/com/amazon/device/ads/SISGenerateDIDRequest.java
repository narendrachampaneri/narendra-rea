package com.amazon.device.ads;

import com.vungle.publisher.FullScreenAdActivity;
import org.json.JSONObject;

/* JADX INFO: compiled from: SISRequests.java */
/* JADX INFO: loaded from: classes.dex */
class SISGenerateDIDRequest extends SISDeviceRequest {
    private static final String PATH = "/generate_did";
    private static final String LOGTAG = SISGenerateDIDRequest.class.getSimpleName();
    private static final Metrics.MetricType CALL_METRIC_TYPE = Metrics.MetricType.SIS_LATENCY_REGISTER;

    public SISGenerateDIDRequest() {
        setCallMetricType(CALL_METRIC_TYPE);
        setLogTag(LOGTAG);
        setPath(PATH);
    }

    @Override // com.amazon.device.ads.SISRequest
    public void onResponseReceived(JSONObject payload) {
        String adId = JSONUtils.getStringFromJSON(payload, FullScreenAdActivity.AD_ID_EXTRA_KEY, "");
        if (adId.length() > 0) {
            MobileAdsInfoStore.getInstance().getRegistrationInfo().putAdId(adId, getAdvertisingIdentifierInfo());
        }
    }
}
