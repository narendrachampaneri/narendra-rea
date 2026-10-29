package com.amazon.device.ads;

import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;

/* JADX INFO: compiled from: SISRequests.java */
/* JADX INFO: loaded from: classes.dex */
abstract class SISDeviceRequest implements SISRequest {
    private AdvertisingIdentifier advertisingIdentifier;
    private AdvertisingIdentifier.Info advertisingIdentifierInfo;
    private Metrics.MetricType callMetricType;
    private String logTag;
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(this.logTag);
    private String path;

    SISDeviceRequest() {
    }

    public SISDeviceRequest setLogTag(String logTag) {
        this.logTag = logTag;
        this.logger.withLogTag(logTag);
        return this;
    }

    public SISDeviceRequest setCallMetricType(Metrics.MetricType callMetricType) {
        this.callMetricType = callMetricType;
        return this;
    }

    public SISDeviceRequest setPath(String path) {
        this.path = path;
        return this;
    }

    public SISDeviceRequest setAdvertisingIdentifier(AdvertisingIdentifier advertisingIdentifier) {
        this.advertisingIdentifier = advertisingIdentifier;
        this.advertisingIdentifierInfo = this.advertisingIdentifier.getAdvertisingIdentifierInfo();
        return this;
    }

    @Override // com.amazon.device.ads.SISRequest
    public String getLogTag() {
        return this.logTag;
    }

    @Override // com.amazon.device.ads.SISRequest
    public Metrics.MetricType getCallMetricType() {
        return this.callMetricType;
    }

    @Override // com.amazon.device.ads.SISRequest
    public String getPath() {
        return this.path;
    }

    @Override // com.amazon.device.ads.SISRequest
    public WebRequest.QueryStringParameters getQueryParameters() {
        WebRequest.QueryStringParameters queryStringParameters = new WebRequest.QueryStringParameters();
        queryStringParameters.putUrlEncoded("dt", MobileAdsInfoStore.getInstance().getDeviceInfo().getDeviceType());
        queryStringParameters.putUrlEncoded(SettingsJsonConstants.APP_KEY, MobileAdsInfoStore.getInstance().getRegistrationInfo().getAppName());
        queryStringParameters.putUrlEncoded("aud", Configuration.getInstance().getString(Configuration.ConfigOption.SIS_DOMAIN));
        queryStringParameters.putUrlEncoded("ua", WebUtils.getURLEncodedString(MobileAdsInfoStore.getInstance().getDeviceInfo().getUserAgentString()));
        queryStringParameters.putUrlEncoded("dinfo", WebUtils.getURLEncodedString(getDInfoProperty()));
        queryStringParameters.putUrlEncoded("pkg", WebUtils.getURLEncodedString(MobileAdsInfoStore.getInstance().getAppInfo().getPackageInfoJSONString()));
        if (this.advertisingIdentifierInfo.hasAdvertisingIdentifier()) {
            queryStringParameters.putUrlEncoded("idfa", this.advertisingIdentifierInfo.getAdvertisingIdentifier());
            queryStringParameters.putUrlEncoded("oo", convertOptOutBooleanToStringInt(this.advertisingIdentifierInfo.isLimitAdTrackingEnabled()));
        } else {
            DeviceInfo deviceInfo = MobileAdsInfoStore.getInstance().getDeviceInfo();
            queryStringParameters.putUrlEncoded("sha1_mac", deviceInfo.getMacSha1());
            queryStringParameters.putUrlEncoded("sha1_serial", deviceInfo.getSerialSha1());
            queryStringParameters.putUrlEncoded("sha1_udid", deviceInfo.getUdidSha1());
            queryStringParameters.putUrlEncodedIfTrue("badMac", "true", deviceInfo.isMacBad());
            queryStringParameters.putUrlEncodedIfTrue("badSerial", "true", deviceInfo.isSerialBad());
            queryStringParameters.putUrlEncodedIfTrue("badUdid", "true", deviceInfo.isUdidBad());
        }
        String adIdTransition = this.advertisingIdentifier.getAndClearTransition();
        queryStringParameters.putUrlEncodedIfTrue("aidts", adIdTransition, adIdTransition != null);
        return queryStringParameters;
    }

    private static String convertOptOutBooleanToStringInt(boolean optOut) {
        return optOut ? "1" : "0";
    }

    protected AdvertisingIdentifier.Info getAdvertisingIdentifierInfo() {
        return this.advertisingIdentifierInfo;
    }

    public static String getDInfoProperty() {
        DeviceInfo deviceInfo = MobileAdsInfoStore.getInstance().getDeviceInfo();
        String deviceInfoProperty = String.format("{\"make\":\"%s\",\"model\":\"%s\",\"os\":\"%s\",\"osVersion\":\"%s\"}", deviceInfo.getMake(), deviceInfo.getModel(), deviceInfo.getOS(), deviceInfo.getOSVersion());
        return deviceInfoProperty;
    }

    @Override // com.amazon.device.ads.SISRequest
    public HashMap<String, String> getPostParameters() {
        return null;
    }

    @Override // com.amazon.device.ads.SISRequest
    public MobileAdsLogger getLogger() {
        return this.logger;
    }
}
