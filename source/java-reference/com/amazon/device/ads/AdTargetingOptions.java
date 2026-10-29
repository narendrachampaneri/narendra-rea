package com.amazon.device.ads;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdTargetingOptions {
    private static final boolean DEFAULT_DISPLAY_ENABLED = true;
    private static final long DEFAULT_FLOOR_PRICE = 0;
    private static final boolean DEFAULT_GEOTARGETING_ENABLED = false;
    private static final String LOGTAG = AdTargetingOptions.class.getSimpleName();
    private final Map<String, String> advanced;
    private boolean displayEnabled;
    private boolean enableGeoTargeting;
    private long floorPrice;
    private final HashSet<String> internalPublisherKeywords;
    private final MobileAdsLogger logger;
    private boolean videoEnabled;
    private final boolean videoEnabledSettable;

    public AdTargetingOptions() {
        this(new AndroidBuildInfo(), new MobileAdsLoggerFactory());
    }

    AdTargetingOptions(AndroidBuildInfo androidBuildInfo, MobileAdsLoggerFactory loggerFactory) {
        this.floorPrice = 0L;
        this.enableGeoTargeting = false;
        this.displayEnabled = true;
        this.logger = loggerFactory.createMobileAdsLogger(LOGTAG);
        this.advanced = new HashMap();
        this.videoEnabledSettable = isVideoEnabledSettable(androidBuildInfo);
        this.videoEnabled = this.videoEnabledSettable;
        this.internalPublisherKeywords = new HashSet<>();
    }

    AdTargetingOptions copy() {
        AdTargetingOptions copy = new AdTargetingOptions().enableGeoLocation(this.enableGeoTargeting).setFloorPrice(this.floorPrice).enableDisplayAds(this.displayEnabled);
        if (this.videoEnabledSettable) {
            copy.enableVideoAds(this.videoEnabled);
        }
        copy.advanced.putAll(this.advanced);
        copy.internalPublisherKeywords.addAll(this.internalPublisherKeywords);
        return copy;
    }

    HashMap<String, String> getCopyOfAdvancedOptions() {
        HashMap<String, String> ret = new HashMap<>(this.advanced);
        return ret;
    }

    private static boolean isVideoEnabledSettable(AndroidBuildInfo androidBuildInfo) {
        return AndroidTargetUtils.isAtLeastAndroidAPI(androidBuildInfo, 14);
    }

    public AdTargetingOptions setFloorPrice(long floorPrice) {
        this.floorPrice = floorPrice;
        return this;
    }

    public long getFloorPrice() {
        return this.floorPrice;
    }

    boolean hasFloorPrice() {
        return this.floorPrice > 0;
    }

    public boolean containsAdvancedOption(String key) {
        return this.advanced.containsKey(key);
    }

    public String getAdvancedOption(String key) {
        return this.advanced.get(key);
    }

    public AdTargetingOptions setAdvancedOption(String key, String value) {
        if (StringUtils.isNullOrWhiteSpace(key)) {
            throw new IllegalArgumentException("Option Key must not be null or empty string");
        }
        if (value != null) {
            this.advanced.put(key, value);
        } else {
            this.advanced.remove(key);
        }
        return this;
    }

    AdTargetingOptions addInternalPublisherKeyword(String publisherKey) {
        if (!StringUtils.isNullOrWhiteSpace(publisherKey)) {
            this.internalPublisherKeywords.add(publisherKey);
        }
        return this;
    }

    HashSet<String> getInternalPublisherKeywords() {
        return this.internalPublisherKeywords;
    }

    public AdTargetingOptions enableGeoLocation(boolean enable) {
        this.enableGeoTargeting = enable;
        return this;
    }

    public boolean isGeoLocationEnabled() {
        return this.enableGeoTargeting;
    }

    AdTargetingOptions enableDisplayAds(boolean enable) {
        this.displayEnabled = enable;
        return this;
    }

    boolean isDisplayAdsEnabled() {
        return this.displayEnabled;
    }

    AdTargetingOptions enableVideoAds(boolean enable) {
        if (!this.videoEnabledSettable) {
            this.logger.w("Video is not allowed to be changed as this device does not support video.");
        } else {
            this.videoEnabled = enable;
        }
        return this;
    }

    boolean isVideoAdsEnabled() {
        return this.videoEnabled;
    }

    boolean isVideoEnabledSettable() {
        return this.videoEnabledSettable;
    }

    public AdTargetingOptions setAge(int age) {
        this.logger.d("setAge API has been deprecated.");
        return this;
    }

    public int getAge() {
        this.logger.d("getAge API has been deprecated.");
        return Integer.MIN_VALUE;
    }
}
