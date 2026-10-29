package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.AdFormat;
import com.mopub.common.AdType;
import com.mopub.common.util.ResponseHeader;
import com.mopub.network.HeaderUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdTypeTranslator {
    public static final String BANNER_SUFFIX = "_banner";
    public static final String INTERSTITIAL_SUFFIX = "_interstitial";

    public enum CustomEventType {
        GOOGLE_PLAY_SERVICES_BANNER("admob_native_banner", "com.mopub.mobileads.GooglePlayServicesBanner"),
        GOOGLE_PLAY_SERVICES_INTERSTITIAL("admob_full_interstitial", "com.mopub.mobileads.GooglePlayServicesInterstitial"),
        MILLENNIAL_BANNER("millennial_native_banner", "com.mopub.mobileads.MillennialBanner"),
        MILLENNIAL_INTERSTITIAL("millennial_full_interstitial", "com.mopub.mobileads.MillennialInterstitial"),
        MRAID_BANNER("mraid_banner", "com.mopub.mraid.MraidBanner"),
        MRAID_INTERSTITIAL("mraid_interstitial", "com.mopub.mraid.MraidInterstitial"),
        HTML_BANNER("html_banner", "com.mopub.mobileads.HtmlBanner"),
        HTML_INTERSTITIAL("html_interstitial", "com.mopub.mobileads.HtmlInterstitial"),
        VAST_VIDEO_INTERSTITIAL("vast_interstitial", "com.mopub.mobileads.VastVideoInterstitial"),
        MOPUB_NATIVE("mopub_native", "com.mopub.nativeads.MoPubCustomEventNative"),
        UNSPECIFIED("", null);

        private final String mClassName;
        private final String mKey;

        CustomEventType(String key, String className) {
            this.mKey = key;
            this.mClassName = className;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static CustomEventType fromString(String key) {
            for (CustomEventType customEventType : values()) {
                if (customEventType.mKey.equals(key)) {
                    return customEventType;
                }
            }
            return UNSPECIFIED;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.mClassName;
        }
    }

    static String getAdNetworkType(String adType, String fullAdType) {
        String adNetworkType = AdType.INTERSTITIAL.equals(adType) ? fullAdType : adType;
        return adNetworkType != null ? adNetworkType : "unknown";
    }

    public static String getCustomEventName(@NonNull AdFormat adFormat, @NonNull String adType, @Nullable String fullAdType, @NonNull Map<String, String> headers) {
        if (AdType.CUSTOM.equalsIgnoreCase(adType)) {
            return HeaderUtils.extractHeader(headers, ResponseHeader.CUSTOM_EVENT_NAME);
        }
        if (AdType.NATIVE.equalsIgnoreCase(adType)) {
            return CustomEventType.MOPUB_NATIVE.toString();
        }
        if (AdType.HTML.equalsIgnoreCase(adType) || "mraid".equalsIgnoreCase(adType)) {
            return (AdFormat.INTERSTITIAL.equals(adFormat) ? CustomEventType.fromString(adType + INTERSTITIAL_SUFFIX) : CustomEventType.fromString(adType + BANNER_SUFFIX)).toString();
        }
        return AdType.INTERSTITIAL.equalsIgnoreCase(adType) ? CustomEventType.fromString(fullAdType + INTERSTITIAL_SUFFIX).toString() : CustomEventType.fromString(adType + BANNER_SUFFIX).toString();
    }
}
