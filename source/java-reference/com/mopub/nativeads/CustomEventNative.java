package com.mopub.nativeads;

import android.content.Context;
import android.support.annotation.NonNull;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class CustomEventNative {

    public interface CustomEventNativeListener {
        void onNativeAdFailed(NativeErrorCode nativeErrorCode);

        void onNativeAdLoaded(NativeAdInterface nativeAdInterface);
    }

    public interface ImageListener {
        void onImagesCached();

        void onImagesFailedToCache(NativeErrorCode nativeErrorCode);
    }

    protected abstract void loadNativeAd(@NonNull Context context, @NonNull CustomEventNativeListener customEventNativeListener, @NonNull Map<String, Object> map, @NonNull Map<String, String> map2);
}
