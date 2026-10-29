package com.amazon.device.ads;

import com.amazon.insights.delivery.DefaultDeliveryClient;
import com.newrelic.agent.android.instrumentation.JSONArrayInstrumentation;
import com.vungle.publisher.FullScreenAdActivity;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: SISRequests.java */
/* JADX INFO: loaded from: classes.dex */
class SISRegisterEventRequest implements SISRequest {
    private static final Metrics.MetricType CALL_METRIC_TYPE = Metrics.MetricType.SIS_LATENCY_REGISTER_EVENT;
    private static final String LOGTAG = "SISRegisterEventRequest";
    private static final String PATH = "/register_event";
    private final AdvertisingIdentifier.Info advertisingIdentifierInfo;
    private final JSONArray appEvents;
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);

    /* JADX INFO: compiled from: SISRequests.java */
    enum SISRequestType {
        GENERATE_DID,
        UPDATE_DEVICE_INFO,
        REGISTER_EVENT
    }

    public SISRegisterEventRequest(AdvertisingIdentifier.Info advertisingIdentifierInfo, JSONArray appEvents) {
        this.advertisingIdentifierInfo = advertisingIdentifierInfo;
        this.appEvents = appEvents;
    }

    @Override // com.amazon.device.ads.SISRequest
    public String getLogTag() {
        return LOGTAG;
    }

    @Override // com.amazon.device.ads.SISRequest
    public Metrics.MetricType getCallMetricType() {
        return CALL_METRIC_TYPE;
    }

    @Override // com.amazon.device.ads.SISRequest
    public String getPath() {
        return PATH;
    }

    @Override // com.amazon.device.ads.SISRequest
    public WebRequest.QueryStringParameters getQueryParameters() {
        WebRequest.QueryStringParameters queryStringParameters = new WebRequest.QueryStringParameters();
        queryStringParameters.putUrlEncoded(FullScreenAdActivity.AD_ID_EXTRA_KEY, this.advertisingIdentifierInfo.getSISDeviceIdentifier());
        queryStringParameters.putUrlEncoded("dt", MobileAdsInfoStore.getInstance().getDeviceInfo().getDeviceType());
        RegistrationInfo registrationInfo = MobileAdsInfoStore.getInstance().getRegistrationInfo();
        queryStringParameters.putUrlEncoded(SettingsJsonConstants.APP_KEY, registrationInfo.getAppName());
        queryStringParameters.putUrlEncoded("appId", registrationInfo.getAppKey());
        queryStringParameters.putUrlEncoded("aud", Configuration.getInstance().getString(Configuration.ConfigOption.SIS_DOMAIN));
        return queryStringParameters;
    }

    @Override // com.amazon.device.ads.SISRequest
    public HashMap<String, String> getPostParameters() {
        HashMap<String, String> eventsMap = new HashMap<>();
        JSONArray jSONArray = this.appEvents;
        eventsMap.put(DefaultDeliveryClient.EVENTS_DIRECTORY, !(jSONArray instanceof JSONArray) ? jSONArray.toString() : JSONArrayInstrumentation.toString(jSONArray));
        return eventsMap;
    }

    @Override // com.amazon.device.ads.SISRequest
    public void onResponseReceived(JSONObject payload) {
        int statusCode = JSONUtils.getIntegerFromJSON(payload, "rcode", 0);
        if (statusCode == 1) {
            this.logger.d("Application events registered successfully.");
            AppEventRegistrationHandler.getInstance().onAppEventsRegistered();
        } else {
            this.logger.d("Application events not registered. rcode:" + statusCode);
        }
    }

    @Override // com.amazon.device.ads.SISRequest
    public MobileAdsLogger getLogger() {
        return this.logger;
    }

    /* JADX INFO: compiled from: SISRequests.java */
    static class SISRequestFactory {
        SISRequestFactory() {
        }

        public SISDeviceRequest createDeviceRequest(SISRequestType requestType) {
            switch (requestType) {
                case GENERATE_DID:
                    return new SISGenerateDIDRequest();
                case UPDATE_DEVICE_INFO:
                    return new SISUpdateDeviceInfoRequest();
                default:
                    throw new IllegalArgumentException("SISRequestType " + requestType + " is not a SISDeviceRequest");
            }
        }

        public SISRegisterEventRequest createRegisterEventRequest(AdvertisingIdentifier.Info advertisingIdentifierInfo, JSONArray appEvents) {
            return new SISRegisterEventRequest(advertisingIdentifierInfo, appEvents);
        }
    }
}
