package com.mopub.nativeads;

import android.content.Context;
import android.support.annotation.NonNull;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.factories.CustomEventNativeFactory;
import com.mopub.network.AdResponse;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class CustomEventNativeAdapter {
    private CustomEventNativeAdapter() {
    }

    public static void loadNativeAd(@NonNull Context context, @NonNull Map<String, Object> localExtras, @NonNull AdResponse adResponse, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener) {
        String customEventNativeClassName = adResponse.getCustomEventClassName();
        try {
            CustomEventNative customEventNative = CustomEventNativeFactory.create(customEventNativeClassName);
            if (adResponse.hasJson()) {
                localExtras.put(DataKeys.JSON_BODY_KEY, adResponse.getJsonBody());
            }
            try {
                customEventNative.loadNativeAd(context, customEventNativeListener, localExtras, adResponse.getServerExtras());
            } catch (Exception e) {
                MoPubLog.w("Loading custom event native threw an error.", e);
                customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
            }
        } catch (Exception e2) {
            MoPubLog.w("Failed to load Custom Event Native class: " + customEventNativeClassName);
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
        }
    }
}
