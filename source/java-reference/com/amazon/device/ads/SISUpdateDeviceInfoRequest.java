package com.amazon.device.ads;

import com.vungle.publisher.FullScreenAdActivity;
import org.json.JSONObject;

/* JADX INFO: compiled from: SISRequests.java */
/* JADX INFO: loaded from: classes.dex */
class SISUpdateDeviceInfoRequest extends SISDeviceRequest {
    private static final Metrics.MetricType CALL_METRIC_TYPE = Metrics.MetricType.SIS_LATENCY_UPDATE_DEVICE_INFO;
    private static final String LOGTAG = "SISUpdateDeviceInfoRequest";
    private static final String PATH = "/update_dev_info";

    public SISUpdateDeviceInfoRequest() {
        setCallMetricType(CALL_METRIC_TYPE);
        setLogTag(LOGTAG);
        setPath(PATH);
    }

    @Override // com.amazon.device.ads.SISDeviceRequest, com.amazon.device.ads.SISRequest
    public WebRequest.QueryStringParameters getQueryParameters() {
        String adId = DebugProperties.getInstance().getDebugPropertyAsString(DebugProperties.DEBUG_ADID, getAdvertisingIdentifierInfo().getSISDeviceIdentifier());
        WebRequest.QueryStringParameters baseQueryParameters = super.getQueryParameters();
        if (!StringUtils.isNullOrEmpty(adId)) {
            baseQueryParameters.putUrlEncoded(FullScreenAdActivity.AD_ID_EXTRA_KEY, adId);
        }
        return baseQueryParameters;
    }

    @Override // com.amazon.device.ads.SISRequest
    public void onResponseReceived(JSONObject payload) {
        String adId = JSONUtils.getStringFromJSON(payload, FullScreenAdActivity.AD_ID_EXTRA_KEY, "");
        boolean idChanged = JSONUtils.getBooleanFromJSON(payload, "idChanged", false);
        if (idChanged) {
            Metrics.getInstance().getMetricsCollector().incrementMetric(Metrics.MetricType.SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED);
        }
        if (adId.length() > 0) {
            MobileAdsInfoStore.getInstance().getRegistrationInfo().putAdId(adId, getAdvertisingIdentifierInfo());
        }
    }
}
