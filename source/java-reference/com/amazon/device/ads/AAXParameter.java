package com.amazon.device.ads;

import android.content.Context;
import android.location.Location;
import com.google.android.exoplayer.util.MimeTypes;
import com.inmobi.monetization.internal.configs.PkInitilaizer;
import com.newrelic.agent.android.instrumentation.JSONArrayInstrumentation;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
abstract class AAXParameter<T> {
    private final String debugName;
    private final String name;
    private static final String LOGTAG = AAXParameter.class.getSimpleName();
    static final AAXParameter<String> APP_KEY = new AppKeyParameter();
    static final AAXParameter<String> CHANNEL = new StringParameter("c", DebugProperties.DEBUG_CHANNEL);
    static final PublisherKeywordsParameter PUBLISHER_KEYWORDS = new PublisherKeywordsParameter();
    static final AAXParameter<JSONArray> PUBLISHER_ASINS = new JSONArrayParameter("pa", DebugProperties.DEBUG_PA);
    static final AAXParameter<String> USER_AGENT = new UserAgentParameter();
    static final AAXParameter<String> SDK_VERSION = new SDKVersionParameter();
    static final AAXParameter<String> GEOLOCATION = new GeoLocationParameter();
    static final AAXParameter<JSONObject> DEVICE_INFO = new DeviceInfoParameter();
    static final AAXParameter<JSONObject> PACKAGE_INFO = new PackageInfoParameter();
    static final AAXParameter<Boolean> TEST = new TestParameter();
    static final AAXParameter<String> SIS_DEVICE_IDENTIFIER = new SISDeviceIdentifierParameter();
    static final AAXParameter<String> SHA1_UDID = new SHA1UDIDParameter();
    static final AAXParameter<String> MD5_UDID = new MD5UDIDParameter();
    static final AAXParameter<JSONArray> SLOTS = new JSONArrayParameter("slots", DebugProperties.DEBUG_SLOTS);
    static final AAXParameter<String> ADVERTISING_IDENTIFIER = new AdvertisingIdentifierParameter();
    static final AAXParameter<Boolean> OPT_OUT = new OptOutParameter();
    static final AAXParameter<String> SIZE = new SizeParameter();
    static final AAXParameter<String> PAGE_TYPE = new StringParameter("pt", DebugProperties.DEBUG_PT);
    static final AAXParameter<String> SLOT = new SlotParameter();
    static final AAXParameter<String> SLOT_POSITION = new StringParameter("sp", DebugProperties.DEBUG_SP);
    static final AAXParameter<String> MAX_SIZE = new MaxSizeParameter();
    static final AAXParameter<Integer> SLOT_ID = new SlotIdParameter();
    static final AAXParameter<Long> FLOOR_PRICE = new FloorPriceParameter();
    static final AAXParameter<JSONArray> SUPPORTED_MEDIA_TYPES = new SupportedMediaTypesParameter();
    static final AAXParameter<JSONObject> VIDEO_OPTIONS = new VideoOptionsParameter();

    protected abstract T getFromDebugProperties();

    protected abstract T parseFromString(String str);

    AAXParameter(String name, String debugName) {
        this.name = name;
        this.debugName = debugName;
    }

    String getName() {
        return this.name;
    }

    protected String getDebugName() {
        return this.debugName;
    }

    protected boolean hasDebugPropertiesValue() {
        return DebugProperties.getInstance().containsDebugProperty(this.debugName);
    }

    /* JADX WARN: Multi-variable type inference failed */
    T getValue(ParameterData parameterData) {
        T derivedValue;
        if (hasDebugPropertiesValue()) {
            derivedValue = getFromDebugProperties();
        } else if (parameterData.advancedOptions.containsKey(this.name)) {
            derivedValue = parseFromString((String) parameterData.advancedOptions.remove(this.name));
        } else {
            derivedValue = getDerivedValue(parameterData);
        }
        T tApplyPostParameterProcessing = applyPostParameterProcessing(derivedValue, parameterData);
        if ((tApplyPostParameterProcessing instanceof String) && StringUtils.isNullOrWhiteSpace((String) tApplyPostParameterProcessing)) {
            return null;
        }
        return tApplyPostParameterProcessing;
    }

    protected T getDerivedValue(ParameterData parameterData) {
        return null;
    }

    protected T applyPostParameterProcessing(T value, ParameterData parameterData) {
        return value;
    }

    static class ParameterData {
        private AdRequest adRequest;
        private AdTargetingOptions adTargetingOptions;
        private Map<String, String> advancedOptions;
        private AdRequest.LOISlot loiSlot;
        private Map<String, String> temporaryOptions = new HashMap();

        ParameterData setAdRequest(AdRequest adRequest) {
            this.adRequest = adRequest;
            return this;
        }

        ParameterData setAdvancedOptions(Map<String, String> advancedOptions) {
            this.advancedOptions = advancedOptions;
            return this;
        }

        ParameterData setLOISlot(AdRequest.LOISlot loiSlot) {
            this.loiSlot = loiSlot;
            return this;
        }

        AdRequest getAdRequest() {
            return this.adRequest;
        }

        ParameterData setAdTargetingOptions(AdTargetingOptions adTargetingOptions) {
            this.adTargetingOptions = adTargetingOptions;
            return this;
        }
    }

    static class StringParameter extends AAXParameter<String> {
        StringParameter(String name, String debugProperty) {
            super(name, debugProperty);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public String parseFromString(String value) {
            return value;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public String getFromDebugProperties() {
            return DebugProperties.getInstance().getDebugPropertyAsString(getDebugName(), null);
        }
    }

    static class BooleanParameter extends AAXParameter<Boolean> {
        BooleanParameter(String name, String debugProperty) {
            super(name, debugProperty);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        public Boolean parseFromString(String value) {
            return Boolean.valueOf(Boolean.parseBoolean(value));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        public Boolean getFromDebugProperties() {
            return DebugProperties.getInstance().getDebugPropertyAsBoolean(getDebugName(), null);
        }
    }

    static class IntegerParameter extends AAXParameter<Integer> {
        IntegerParameter(String name, String debugProperty) {
            super(name, debugProperty);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        public Integer parseFromString(String value) {
            return Integer.valueOf(Integer.parseInt(value));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        public Integer getFromDebugProperties() {
            return DebugProperties.getInstance().getDebugPropertyAsInteger(getDebugName(), null);
        }
    }

    static class LongParameter extends AAXParameter<Long> {
        LongParameter(String name, String debugProperty) {
            super(name, debugProperty);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        public Long parseFromString(String value) {
            return Long.valueOf(Long.parseLong(value));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        public Long getFromDebugProperties() {
            return DebugProperties.getInstance().getDebugPropertyAsLong(getDebugName(), null);
        }
    }

    static class JSONArrayParameter extends AAXParameter<JSONArray> {
        private final MobileAdsLogger logger;

        JSONArrayParameter(String name, String debugProperty) {
            super(name, debugProperty);
            this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(AAXParameter.LOGTAG);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public JSONArray parseFromString(String value) {
            try {
                return JSONArrayInstrumentation.init(value);
            } catch (JSONException e) {
                this.logger.e("Unable to parse the following value into a JSONArray: %s", getName());
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public JSONArray getFromDebugProperties() {
            String debugProperty = DebugProperties.getInstance().getDebugPropertyAsString(getDebugName(), null);
            return parseFromString(debugProperty);
        }
    }

    static class JSONObjectParameter extends AAXParameter<JSONObject> {
        private final MobileAdsLogger logger;

        JSONObjectParameter(String name, String debugProperty) {
            super(name, debugProperty);
            this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(AAXParameter.LOGTAG);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public JSONObject parseFromString(String value) {
            try {
                return JSONObjectInstrumentation.init(value);
            } catch (JSONException e) {
                this.logger.e("Unable to parse the following value into a JSONObject: %s", getName());
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public JSONObject getFromDebugProperties() {
            String debugProperty = DebugProperties.getInstance().getDebugPropertyAsString(getDebugName(), null);
            return parseFromString(debugProperty);
        }
    }

    static class AppKeyParameter extends StringParameter {
        AppKeyParameter() {
            super("appId", DebugProperties.DEBUG_APPID);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public String getDerivedValue(ParameterData parameterData) {
            return MobileAdsInfoStore.getInstance().getRegistrationInfo().getAppKey();
        }
    }

    static class PublisherKeywordsParameter extends JSONArrayParameter {
        PublisherKeywordsParameter() {
            super(PkInitilaizer.PRODUCT_PK, DebugProperties.DEBUG_PK);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public JSONArray applyPostParameterProcessing(JSONArray value, ParameterData parameterData) {
            if (value == null) {
                value = new JSONArray();
            }
            HashSet<String> pks = parameterData.adTargetingOptions.getInternalPublisherKeywords();
            for (String pk : pks) {
                value.put(pk);
            }
            return value;
        }
    }

    static class UserAgentParameter extends StringParameter {
        UserAgentParameter() {
            super("ua", DebugProperties.DEBUG_UA);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public String getDerivedValue(ParameterData parameterData) {
            return MobileAdsInfoStore.getInstance().getDeviceInfo().getUserAgentString();
        }
    }

    static class SDKVersionParameter extends StringParameter {
        SDKVersionParameter() {
            super("adsdk", DebugProperties.DEBUG_VER);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public String getDerivedValue(ParameterData parameterData) {
            return Version.getSDKVersion();
        }
    }

    static class GeoLocationParameter extends StringParameter {
        private final Configuration configuration;
        private final Context context;

        GeoLocationParameter() {
            this(Configuration.getInstance(), MobileAdsInfoStore.getInstance().getApplicationContext());
        }

        GeoLocationParameter(Configuration configuration, Context context) {
            super("geoloc", DebugProperties.DEBUG_GEOLOC);
            this.configuration = configuration;
            this.context = context;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public String getDerivedValue(ParameterData parameterData) {
            boolean configSendGeo = this.configuration.getBoolean(Configuration.ConfigOption.SEND_GEO);
            if (!configSendGeo || !parameterData.getAdRequest().getAdTargetingOptions().isGeoLocationEnabled()) {
                return null;
            }
            AdLocation adLocation = new AdLocation(this.context);
            Location location = adLocation.getLocation();
            if (location == null) {
                return null;
            }
            return location.getLatitude() + com.amazon.identity.auth.device.dataobject.AppInfo.DELIM + location.getLongitude();
        }
    }

    static class DeviceInfoParameter extends JSONObjectParameter {
        DeviceInfoParameter() {
            super("dinfo", DebugProperties.DEBUG_DINFO);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public JSONObject getDerivedValue(ParameterData parameterData) {
            return MobileAdsInfoStore.getInstance().getDeviceInfo().toJsonObject(parameterData.adRequest.getOrientation());
        }
    }

    static class PackageInfoParameter extends JSONObjectParameter {
        PackageInfoParameter() {
            super("pkg", DebugProperties.DEBUG_PKG);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public JSONObject getDerivedValue(ParameterData parameterData) {
            return MobileAdsInfoStore.getInstance().getAppInfo().getPackageInfoJSON();
        }
    }

    static class TestParameter extends BooleanParameter {
        TestParameter() {
            super("isTest", DebugProperties.DEBUG_TEST);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        public Boolean getDerivedValue(ParameterData parameterData) {
            return Settings.getInstance().getBoolean("testingEnabled", (Boolean) null);
        }
    }

    static class SISDeviceIdentifierParameter extends StringParameter {
        SISDeviceIdentifierParameter() {
            super("ad-id", DebugProperties.DEBUG_ADID);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public String getDerivedValue(ParameterData parameterData) {
            return parameterData.adRequest.getAdvertisingIdentifierInfo().getSISDeviceIdentifier();
        }
    }

    static class SHA1UDIDParameter extends StringParameter {
        SHA1UDIDParameter() {
            super("sha1_udid", DebugProperties.DEBUG_SHA1UDID);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public String getDerivedValue(ParameterData parameterData) {
            if (parameterData.adRequest.getAdvertisingIdentifierInfo().hasAdvertisingIdentifier()) {
                return null;
            }
            return MobileAdsInfoStore.getInstance().getDeviceInfo().getUdidSha1();
        }
    }

    static class MD5UDIDParameter extends StringParameter {
        MD5UDIDParameter() {
            super("md5_udid", DebugProperties.DEBUG_MD5UDID);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public String getDerivedValue(ParameterData parameterData) {
            if (parameterData.adRequest.getAdvertisingIdentifierInfo().hasAdvertisingIdentifier()) {
                return null;
            }
            return MobileAdsInfoStore.getInstance().getDeviceInfo().getUdidMd5();
        }
    }

    static class AdvertisingIdentifierParameter extends StringParameter {
        AdvertisingIdentifierParameter() {
            super("idfa", DebugProperties.DEBUG_IDFA);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public String getDerivedValue(ParameterData parameterData) {
            if (parameterData.adRequest.getAdvertisingIdentifierInfo().hasAdvertisingIdentifier()) {
                return parameterData.adRequest.getAdvertisingIdentifierInfo().getAdvertisingIdentifier();
            }
            return null;
        }
    }

    static class OptOutParameter extends BooleanParameter {
        OptOutParameter() {
            super("oo", DebugProperties.DEBUG_OPT_OUT);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        public Boolean getDerivedValue(ParameterData parameterData) {
            if (parameterData.adRequest.getAdvertisingIdentifierInfo().hasAdvertisingIdentifier()) {
                return Boolean.valueOf(parameterData.adRequest.getAdvertisingIdentifierInfo().isLimitAdTrackingEnabled());
            }
            return null;
        }
    }

    static class SizeParameter extends StringParameter {
        SizeParameter() {
            super("sz", DebugProperties.DEBUG_SIZE);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public String getDerivedValue(ParameterData parameterData) {
            return parameterData.loiSlot.getAdSlot().getRequestedAdSize().toString();
        }
    }

    static class SlotParameter extends StringParameter {
        SlotParameter() {
            super("slot", DebugProperties.DEBUG_SLOT);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public String getDerivedValue(ParameterData parameterData) {
            return parameterData.adRequest.getOrientation();
        }
    }

    static class MaxSizeParameter extends StringParameter {
        MaxSizeParameter() {
            super("mxsz", DebugProperties.DEBUG_MXSZ);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public String getDerivedValue(ParameterData parameterData) {
            return parameterData.loiSlot.getAdSlot().getMaxSize();
        }
    }

    static class SlotIdParameter extends IntegerParameter {
        SlotIdParameter() {
            super("slotId", DebugProperties.DEBUG_SLOT_ID);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        public Integer getDerivedValue(ParameterData parameterData) {
            return Integer.valueOf(parameterData.loiSlot.getAdSlot().getSlotNumber());
        }
    }

    static class FloorPriceParameter extends LongParameter {
        FloorPriceParameter() {
            super("ec", DebugProperties.DEBUG_ECPM);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        public Long getDerivedValue(ParameterData parameterData) {
            if (parameterData.loiSlot.getAdTargetingOptions().hasFloorPrice()) {
                return Long.valueOf(parameterData.loiSlot.getAdTargetingOptions().getFloorPrice());
            }
            return null;
        }
    }

    static class SupportedMediaTypesParameter extends JSONArrayParameter {
        public SupportedMediaTypesParameter() {
            super("supportedMediaTypes", DebugProperties.DEBUG_SUPPORTED_MEDIA_TYPES);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public JSONArray getDerivedValue(ParameterData parameterData) {
            JSONArray value = new JSONArray();
            addDisplay(parameterData, value);
            addVideo(parameterData, value);
            return value;
        }

        private void addDisplay(ParameterData parameterData, JSONArray json) {
            boolean displayAdsEnabled = parameterData.loiSlot.getAdTargetingOptions().isDisplayAdsEnabled();
            if (parameterData.advancedOptions.containsKey("enableDisplayAds")) {
                displayAdsEnabled = Boolean.parseBoolean((String) parameterData.advancedOptions.remove("enableDisplayAds"));
            }
            if (displayAdsEnabled) {
                json.put("DISPLAY");
            }
        }

        private void addVideo(ParameterData parameterData, JSONArray json) {
            boolean videoAdsEnabled = new VideoAdsEnabledChecker(parameterData).isVideoAdsEnabled();
            if (videoAdsEnabled) {
                json.put("VIDEO");
            }
        }
    }

    static class VideoOptionsParameter extends JSONObjectParameter {
        private static final int MAXIMUM_DURATION_DEFAULT = 30000;
        private static final int MINIMUM_DURATION_DEFAULT = 0;

        public VideoOptionsParameter() {
            super(MimeTypes.BASE_TYPE_VIDEO, DebugProperties.DEBUG_VIDEO_OPTIONS);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public JSONObject getDerivedValue(ParameterData parameterData) {
            JSONObject value = null;
            boolean videoAdsEnabled = new VideoAdsEnabledChecker(parameterData).isVideoAdsEnabled();
            if (videoAdsEnabled) {
                value = new JSONObject();
                int minVideoAdDuration = 0;
                if (parameterData.advancedOptions.containsKey("minVideoAdDuration")) {
                    Parsers.IntegerParser parseInt = new Parsers.IntegerParser().setDefaultValue(0).setParseErrorLogTag(AAXParameter.LOGTAG).setParseErrorLogMessage("The minVideoAdDuration advanced option could not be parsed properly.");
                    minVideoAdDuration = parseInt.parse((String) parameterData.advancedOptions.remove("minVideoAdDuration"));
                }
                JSONUtils.put(value, "minAdDuration", minVideoAdDuration);
                int maxVideoAdDuration = 30000;
                if (parameterData.advancedOptions.containsKey("maxVideoAdDuration")) {
                    Parsers.IntegerParser parseInt2 = new Parsers.IntegerParser().setDefaultValue(30000).setParseErrorLogTag(AAXParameter.LOGTAG).setParseErrorLogMessage("The maxVideoAdDuration advanced option could not be parsed properly.");
                    maxVideoAdDuration = parseInt2.parse((String) parameterData.advancedOptions.remove("maxVideoAdDuration"));
                }
                JSONUtils.put(value, "maxAdDuration", maxVideoAdDuration);
            }
            return value;
        }
    }

    private static class VideoAdsEnabledChecker {
        private final ParameterData parameterData;

        public VideoAdsEnabledChecker(ParameterData parameterData) {
            this.parameterData = parameterData;
        }

        public boolean isVideoAdsEnabled() {
            if (this.parameterData.loiSlot.getAdTargetingOptions().isVideoEnabledSettable()) {
                if (!this.parameterData.advancedOptions.containsKey("enableVideoAds")) {
                    return this.parameterData.temporaryOptions.containsKey("enableVideoAds") ? Boolean.parseBoolean((String) this.parameterData.temporaryOptions.get("enableVideoAds")) : this.parameterData.loiSlot.getAdTargetingOptions().isVideoAdsEnabled();
                }
                String advancedOption = (String) this.parameterData.advancedOptions.remove("enableVideoAds");
                this.parameterData.temporaryOptions.put("enableVideoAds", advancedOption);
                return Boolean.parseBoolean(advancedOption);
            }
            return false;
        }
    }
}
