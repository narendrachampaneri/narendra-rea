package com.mopub.nativeads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.DataKeys;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Numbers;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MoPubCustomEventNative extends CustomEventNative {
    @Override // com.mopub.nativeads.CustomEventNative
    protected void loadNativeAd(@NonNull Context context, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener, @NonNull Map<String, Object> localExtras, @NonNull Map<String, String> serverExtras) {
        Object json = localExtras.get(DataKeys.JSON_BODY_KEY);
        if (!(json instanceof JSONObject)) {
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.INVALID_JSON);
            return;
        }
        MoPubForwardingNativeAd moPubForwardingNativeAd = new MoPubForwardingNativeAd(context.getApplicationContext(), (JSONObject) json, customEventNativeListener);
        try {
            moPubForwardingNativeAd.loadAd();
        } catch (IllegalArgumentException e) {
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
        }
    }

    static class MoPubForwardingNativeAd extends BaseForwardingNativeAd {

        @VisibleForTesting
        static final String DAA_CLICKTHROUGH_URL = "https://www.mopub.com/optout";

        @NonNull
        private final Context mContext;

        @NonNull
        private final CustomEventNative.CustomEventNativeListener mCustomEventNativeListener;

        @NonNull
        private final JSONObject mJsonObject;

        MoPubForwardingNativeAd(@NonNull Context context, @NonNull JSONObject jsonBody, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.mJsonObject = jsonBody;
            this.mContext = context;
            this.mCustomEventNativeListener = customEventNativeListener;
        }

        void loadAd() throws IllegalArgumentException {
            if (!containsRequiredKeys(this.mJsonObject)) {
                throw new IllegalArgumentException("JSONObject did not contain required keys.");
            }
            Iterator<String> keys = this.mJsonObject.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                NativeResponse.Parameter parameter = NativeResponse.Parameter.from(key);
                if (parameter != null) {
                    try {
                        addInstanceVariable(parameter, this.mJsonObject.opt(key));
                    } catch (ClassCastException e) {
                        throw new IllegalArgumentException("JSONObject key (" + key + ") contained unexpected value.");
                    }
                } else {
                    addExtra(key, this.mJsonObject.opt(key));
                }
            }
            preCacheImages(this.mContext, getAllImageUrls(), new CustomEventNative.ImageListener() { // from class: com.mopub.nativeads.MoPubCustomEventNative.MoPubForwardingNativeAd.1
                @Override // com.mopub.nativeads.CustomEventNative.ImageListener
                public void onImagesCached() {
                    MoPubForwardingNativeAd.this.mCustomEventNativeListener.onNativeAdLoaded(MoPubForwardingNativeAd.this);
                }

                @Override // com.mopub.nativeads.CustomEventNative.ImageListener
                public void onImagesFailedToCache(NativeErrorCode errorCode) {
                    MoPubForwardingNativeAd.this.mCustomEventNativeListener.onNativeAdFailed(errorCode);
                }
            });
        }

        private boolean containsRequiredKeys(@NonNull JSONObject jsonObject) {
            Set<String> keys = new HashSet<>();
            Iterator<String> jsonKeys = jsonObject.keys();
            while (jsonKeys.hasNext()) {
                keys.add(jsonKeys.next());
            }
            return keys.containsAll(NativeResponse.Parameter.requiredKeys);
        }

        private void addInstanceVariable(@NonNull NativeResponse.Parameter key, @Nullable Object value) throws ClassCastException {
            try {
                switch (key) {
                    case MAIN_IMAGE:
                        setMainImageUrl((String) value);
                        break;
                    case ICON_IMAGE:
                        setIconImageUrl((String) value);
                        break;
                    case IMPRESSION_TRACKER:
                        addImpressionTrackers(value);
                        break;
                    case CLICK_TRACKER:
                        break;
                    case CLICK_DESTINATION:
                        setClickDestinationUrl((String) value);
                        break;
                    case CALL_TO_ACTION:
                        setCallToAction((String) value);
                        break;
                    case TITLE:
                        setTitle((String) value);
                        break;
                    case TEXT:
                        setText((String) value);
                        break;
                    case STAR_RATING:
                        setStarRating(Numbers.parseDouble(value));
                        break;
                    default:
                        MoPubLog.d("Unable to add JSON key to internal mapping: " + key.name);
                        break;
                }
            } catch (ClassCastException e) {
                if (!key.required) {
                    MoPubLog.d("Ignoring class cast exception for optional key: " + key.name);
                    return;
                }
                throw e;
            }
        }

        private void addImpressionTrackers(Object impressionTrackers) throws ClassCastException {
            if (!(impressionTrackers instanceof JSONArray)) {
                throw new ClassCastException("Expected impression trackers of type JSONArray.");
            }
            JSONArray trackers = (JSONArray) impressionTrackers;
            for (int i = 0; i < trackers.length(); i++) {
                try {
                    addImpressionTracker(trackers.getString(i));
                } catch (JSONException e) {
                    MoPubLog.d("Unable to parse impression trackers.");
                }
            }
        }

        private boolean isImageKey(@Nullable String name) {
            return name != null && name.toLowerCase(Locale.US).endsWith("image");
        }

        @NonNull
        List<String> getExtrasImageUrls() {
            List<String> extrasBitmapUrls = new ArrayList<>(getExtras().size());
            for (Map.Entry<String, Object> entry : getExtras().entrySet()) {
                if (isImageKey(entry.getKey()) && (entry.getValue() instanceof String)) {
                    extrasBitmapUrls.add((String) entry.getValue());
                }
            }
            return extrasBitmapUrls;
        }

        @NonNull
        List<String> getAllImageUrls() {
            List<String> imageUrls = new ArrayList<>();
            if (getMainImageUrl() != null) {
                imageUrls.add(getMainImageUrl());
            }
            if (getIconImageUrl() != null) {
                imageUrls.add(getIconImageUrl());
            }
            imageUrls.addAll(getExtrasImageUrls());
            return imageUrls;
        }

        @Override // com.mopub.nativeads.BaseForwardingNativeAd, com.mopub.nativeads.NativeAdInterface
        public String getDaaIconClickthroughUrl() {
            return DAA_CLICKTHROUGH_URL;
        }
    }
}
