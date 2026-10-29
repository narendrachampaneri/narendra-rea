package com.amazon.device.ads;

import android.annotation.SuppressLint;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class AdRequest {
    private static final String AAX_ENDPOINT = "/e/msdk/ads";
    private static final String LOGTAG = AdRequest.class.getSimpleName();
    private static final AAXParameter<?>[] PARAMETERS = {AAXParameter.APP_KEY, AAXParameter.CHANNEL, AAXParameter.PUBLISHER_KEYWORDS, AAXParameter.PUBLISHER_ASINS, AAXParameter.USER_AGENT, AAXParameter.SDK_VERSION, AAXParameter.GEOLOCATION, AAXParameter.DEVICE_INFO, AAXParameter.PACKAGE_INFO, AAXParameter.TEST, AAXParameter.SIS_DEVICE_IDENTIFIER, AAXParameter.SHA1_UDID, AAXParameter.MD5_UDID, AAXParameter.ADVERTISING_IDENTIFIER, AAXParameter.OPT_OUT};
    private AdvertisingIdentifier.Info advertisingIdentifierInfo;
    private final Configuration configuration;
    private final ConnectionInfo connectionInfo;
    private final DebugProperties debugProperties;
    private String instrPixelUrl;
    private final JSONObjectBuilder jsonObjectBuilder;
    private final MobileAdsLogger logger;
    private final AdTargetingOptions opt;
    private final String orientation;
    protected final Map<Integer, LOISlot> slots;
    private final WebRequest.WebRequestFactory webRequestFactory;

    public AdRequest(AdTargetingOptions opt) {
        this(opt, new WebRequest.WebRequestFactory(), MobileAdsInfoStore.getInstance(), Configuration.getInstance(), DebugProperties.getInstance(), new MobileAdsLoggerFactory());
    }

    @SuppressLint({"UseSparseArrays"})
    AdRequest(AdTargetingOptions opt, WebRequest.WebRequestFactory webRequestFactory, MobileAdsInfoStore infoStore, Configuration configuration, DebugProperties debugProperties, MobileAdsLoggerFactory loggerFactory) {
        this.opt = opt;
        this.webRequestFactory = webRequestFactory;
        this.slots = new HashMap();
        DeviceInfo deviceInfo = infoStore.getDeviceInfo();
        this.orientation = deviceInfo.getOrientation();
        this.connectionInfo = new ConnectionInfo(infoStore);
        this.configuration = configuration;
        this.debugProperties = debugProperties;
        this.logger = loggerFactory.createMobileAdsLogger(LOGTAG);
        Map<String, String> advancedOptions = this.opt.getCopyOfAdvancedOptions();
        AAXParameter.ParameterData parameterData = new AAXParameter.ParameterData().setAdTargetingOptions(this.opt).setAdvancedOptions(advancedOptions).setAdRequest(this);
        this.jsonObjectBuilder = new JSONObjectBuilder(this.logger).setAAXParameters(PARAMETERS).setAdvancedOptions(advancedOptions).setParameterData(parameterData);
    }

    public void setInstrumentationPixelURL(String instrPixelUrl) {
        this.instrPixelUrl = instrPixelUrl;
    }

    public String getInstrumentationPixelURL() {
        return this.instrPixelUrl;
    }

    AdTargetingOptions getAdTargetingOptions() {
        return this.opt;
    }

    String getOrientation() {
        return this.orientation;
    }

    AdvertisingIdentifier.Info getAdvertisingIdentifierInfo() {
        return this.advertisingIdentifierInfo;
    }

    AdRequest setAdvertisingIdentifierInfo(AdvertisingIdentifier.Info advertisingIdentifierInfo) {
        this.advertisingIdentifierInfo = advertisingIdentifierInfo;
        return this;
    }

    public void putSlot(AdSlot adSlot) {
        if (getAdvertisingIdentifierInfo().hasSISDeviceIdentifier()) {
            adSlot.getMetricsCollector().incrementMetric(Metrics.MetricType.AD_COUNTER_IDENTIFIED_DEVICE);
        }
        adSlot.setConnectionInfo(this.connectionInfo);
        LOISlot slot = new LOISlot(adSlot, this, this.logger);
        this.slots.put(Integer.valueOf(adSlot.getSlotNumber()), slot);
    }

    protected JSONArray getSlots() {
        JSONArray array = new JSONArray();
        for (LOISlot slot : this.slots.values()) {
            array.put(slot.getJSON());
        }
        return array;
    }

    public WebRequest getWebRequest() {
        WebRequest request = this.webRequestFactory.createWebRequest();
        request.setUseSecure(isSSLRequired() || request.getUseSecure());
        request.setExternalLogTag(LOGTAG);
        request.setHttpMethod(WebRequest.HttpMethod.POST);
        request.setHost(this.configuration.getString(Configuration.ConfigOption.AAX_HOSTNAME));
        request.setPath(AAX_ENDPOINT);
        request.enableLog(true);
        request.setContentType("application/json");
        request.setDisconnectEnabled(false);
        setParametersInWebRequest(request);
        return request;
    }

    private boolean isSSLRequired() {
        boolean configSendGeo = Configuration.getInstance().getBoolean(Configuration.ConfigOption.SEND_GEO);
        boolean configTruncateLatLong = Configuration.getInstance().getBoolean(Configuration.ConfigOption.TRUNCATE_LAT_LON);
        return !configTruncateLatLong && configSendGeo && getAdTargetingOptions().isGeoLocationEnabled();
    }

    protected void setParametersInWebRequest(WebRequest request) {
        this.jsonObjectBuilder.build();
        Object slots = AAXParameter.SLOTS.getValue(this.jsonObjectBuilder.getParameterData());
        if (slots == null) {
            slots = getSlots();
        }
        this.jsonObjectBuilder.putIntoJSON(AAXParameter.SLOTS, slots);
        JSONObject json = this.jsonObjectBuilder.getJSON();
        String additionalTargetingParams = this.debugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_AAX_AD_PARAMS, null);
        if (!StringUtils.isNullOrEmpty(additionalTargetingParams)) {
            request.setAdditionalQueryParamsString(additionalTargetingParams);
        }
        setRequestBodyString(request, json);
    }

    protected void setRequestBodyString(WebRequest request, JSONObject json) {
        request.setRequestBodyString(!(json instanceof JSONObject) ? json.toString() : JSONObjectInstrumentation.toString(json));
    }

    static class LOISlot {
        static final AAXParameter<?>[] PARAMETERS = {AAXParameter.SIZE, AAXParameter.PAGE_TYPE, AAXParameter.SLOT, AAXParameter.SLOT_POSITION, AAXParameter.MAX_SIZE, AAXParameter.SLOT_ID, AAXParameter.FLOOR_PRICE, AAXParameter.SUPPORTED_MEDIA_TYPES, AAXParameter.VIDEO_OPTIONS};
        private final AdSlot adSlot;
        private final JSONObjectBuilder jsonObjectBuilder;
        private final AdTargetingOptions opt;

        LOISlot(AdSlot adSlot, AdRequest adRequest, MobileAdsLogger logger) {
            this.opt = adSlot.getAdTargetingOptions();
            this.adSlot = adSlot;
            Map<String, String> advancedOptions = this.opt.getCopyOfAdvancedOptions();
            AAXParameter.ParameterData parameterData = new AAXParameter.ParameterData().setAdTargetingOptions(this.opt).setAdvancedOptions(advancedOptions).setLOISlot(this).setAdRequest(adRequest);
            this.jsonObjectBuilder = new JSONObjectBuilder(logger).setAAXParameters(PARAMETERS).setAdvancedOptions(advancedOptions).setParameterData(parameterData);
        }

        AdTargetingOptions getAdTargetingOptions() {
            return this.opt;
        }

        JSONObject getJSON() {
            this.jsonObjectBuilder.build();
            return this.jsonObjectBuilder.getJSON();
        }

        AdSlot getAdSlot() {
            return this.adSlot;
        }
    }

    static class JSONObjectBuilder {
        private AAXParameter<?>[] aaxParameters;
        private Map<String, String> advancedOptions;
        private final JSONObject json = new JSONObject();
        private final MobileAdsLogger logger;
        private AAXParameter.ParameterData parameterData;

        JSONObjectBuilder(MobileAdsLogger logger) {
            this.logger = logger;
        }

        JSONObjectBuilder setAAXParameters(AAXParameter<?>[] aaxParameters) {
            this.aaxParameters = aaxParameters;
            return this;
        }

        JSONObjectBuilder setAdvancedOptions(Map<String, String> advancedOptions) {
            this.advancedOptions = advancedOptions;
            return this;
        }

        JSONObjectBuilder setParameterData(AAXParameter.ParameterData parameterData) {
            this.parameterData = parameterData;
            return this;
        }

        AAXParameter.ParameterData getParameterData() {
            return this.parameterData;
        }

        JSONObject getJSON() {
            return this.json;
        }

        void build() {
            for (AAXParameter<?> parameter : this.aaxParameters) {
                Object value = parameter.getValue(this.parameterData);
                putIntoJSON(parameter, value);
            }
            if (this.advancedOptions != null) {
                for (Map.Entry<String, String> entry : this.advancedOptions.entrySet()) {
                    if (!StringUtils.isNullOrWhiteSpace(entry.getValue())) {
                        putIntoJSON(entry.getKey(), entry.getValue());
                    }
                }
            }
        }

        void putIntoJSON(AAXParameter<?> parameter, Object value) {
            putIntoJSON(parameter.getName(), value);
        }

        void putIntoJSON(String key, Object value) {
            if (value != null) {
                try {
                    this.json.put(key, value);
                } catch (JSONException e) {
                    this.logger.d("Could not add parameter to JSON %s: %s", key, value);
                }
            }
        }
    }

    static class AdRequestBuilder {
        private AdTargetingOptions adTargetingOptions;
        private AdvertisingIdentifier.Info advertisingIdentifierInfo;

        AdRequestBuilder() {
        }

        public AdRequestBuilder withAdTargetingOptions(AdTargetingOptions adTargetingOptions) {
            this.adTargetingOptions = adTargetingOptions;
            return this;
        }

        public AdRequestBuilder withAdvertisingIdentifierInfo(AdvertisingIdentifier.Info advertisingIdentifierInfo) {
            this.advertisingIdentifierInfo = advertisingIdentifierInfo;
            return this;
        }

        public AdRequest build() {
            return new AdRequest(this.adTargetingOptions).setAdvertisingIdentifierInfo(this.advertisingIdentifierInfo);
        }
    }
}
