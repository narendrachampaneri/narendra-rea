package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class NativeAdSource {
    private static final int CACHE_LIMIT = 3;
    private static final int DEFAULT_RETRY_TIME_MILLISECONDS = 1000;
    private static final int EXPIRATION_TIME_MILLISECONDS = 900000;
    private static final double EXPONENTIAL_BACKOFF_FACTOR = 2.0d;
    private static final int MAXIMUM_RETRY_TIME_MILLISECONDS = 300000;

    @Nullable
    private AdSourceListener mAdSourceListener;

    @Nullable
    private MoPubNative mMoPubNative;

    @NonNull
    private final MoPubNative.MoPubNativeNetworkListener mMoPubNativeNetworkListener;

    @NonNull
    private final List<TimestampWrapper<NativeResponse>> mNativeAdCache;

    @NonNull
    private final Handler mReplenishCacheHandler;

    @NonNull
    private final Runnable mReplenishCacheRunnable;

    @VisibleForTesting
    boolean mRequestInFlight;

    @Nullable
    private RequestParameters mRequestParameters;

    @VisibleForTesting
    boolean mRetryInFlight;

    @VisibleForTesting
    int mRetryTimeMilliseconds;

    @VisibleForTesting
    int mSequenceNumber;

    interface AdSourceListener {
        void onAdsAvailable();
    }

    NativeAdSource() {
        this(new ArrayList(3), new Handler());
    }

    @VisibleForTesting
    NativeAdSource(@NonNull List<TimestampWrapper<NativeResponse>> nativeAdCache, @NonNull Handler replenishCacheHandler) {
        this.mNativeAdCache = nativeAdCache;
        this.mReplenishCacheHandler = replenishCacheHandler;
        this.mReplenishCacheRunnable = new Runnable() { // from class: com.mopub.nativeads.NativeAdSource.1
            @Override // java.lang.Runnable
            public void run() {
                NativeAdSource.this.mRetryInFlight = false;
                NativeAdSource.this.replenishCache();
            }
        };
        this.mMoPubNativeNetworkListener = new MoPubNative.MoPubNativeNetworkListener() { // from class: com.mopub.nativeads.NativeAdSource.2
            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public void onNativeLoad(@NonNull NativeResponse nativeResponse) {
                if (NativeAdSource.this.mMoPubNative != null) {
                    NativeAdSource.this.mRequestInFlight = false;
                    NativeAdSource.this.mSequenceNumber++;
                    NativeAdSource.this.resetRetryTime();
                    NativeAdSource.this.mNativeAdCache.add(new TimestampWrapper(nativeResponse));
                    if (NativeAdSource.this.mNativeAdCache.size() == 1 && NativeAdSource.this.mAdSourceListener != null) {
                        NativeAdSource.this.mAdSourceListener.onAdsAvailable();
                    }
                    NativeAdSource.this.replenishCache();
                }
            }

            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public void onNativeFail(NativeErrorCode errorCode) {
                NativeAdSource.this.mRequestInFlight = false;
                if (NativeAdSource.this.mRetryTimeMilliseconds >= NativeAdSource.MAXIMUM_RETRY_TIME_MILLISECONDS) {
                    NativeAdSource.this.resetRetryTime();
                    return;
                }
                NativeAdSource.this.updateRetryTime();
                NativeAdSource.this.mRetryInFlight = true;
                NativeAdSource.this.mReplenishCacheHandler.postDelayed(NativeAdSource.this.mReplenishCacheRunnable, NativeAdSource.this.mRetryTimeMilliseconds);
            }
        };
        this.mSequenceNumber = 0;
        this.mRetryTimeMilliseconds = 1000;
    }

    void setAdSourceListener(@Nullable AdSourceListener adSourceListener) {
        this.mAdSourceListener = adSourceListener;
    }

    void loadAds(@NonNull Context context, @NonNull String adUnitId, RequestParameters requestParameters) {
        loadAds(requestParameters, new MoPubNative(context, adUnitId, this.mMoPubNativeNetworkListener));
    }

    @VisibleForTesting
    void loadAds(RequestParameters requestParameters, MoPubNative moPubNative) {
        clear();
        this.mRequestParameters = requestParameters;
        this.mMoPubNative = moPubNative;
        replenishCache();
    }

    void clear() {
        if (this.mMoPubNative != null) {
            this.mMoPubNative.destroy();
            this.mMoPubNative = null;
        }
        this.mRequestParameters = null;
        for (TimestampWrapper<NativeResponse> timestampWrapper : this.mNativeAdCache) {
            timestampWrapper.mInstance.destroy();
        }
        this.mNativeAdCache.clear();
        this.mReplenishCacheHandler.removeMessages(0);
        this.mRequestInFlight = false;
        this.mSequenceNumber = 0;
        resetRetryTime();
    }

    @Nullable
    NativeResponse dequeueAd() {
        long now = SystemClock.uptimeMillis();
        if (!this.mRequestInFlight && !this.mRetryInFlight) {
            this.mReplenishCacheHandler.post(this.mReplenishCacheRunnable);
        }
        while (!this.mNativeAdCache.isEmpty()) {
            TimestampWrapper<NativeResponse> responseWrapper = this.mNativeAdCache.remove(0);
            if (now - responseWrapper.mCreatedTimestamp < 900000) {
                return responseWrapper.mInstance;
            }
        }
        return null;
    }

    @VisibleForTesting
    void updateRetryTime() {
        this.mRetryTimeMilliseconds = (int) (((double) this.mRetryTimeMilliseconds) * EXPONENTIAL_BACKOFF_FACTOR);
        if (this.mRetryTimeMilliseconds > MAXIMUM_RETRY_TIME_MILLISECONDS) {
            this.mRetryTimeMilliseconds = MAXIMUM_RETRY_TIME_MILLISECONDS;
        }
    }

    @VisibleForTesting
    void resetRetryTime() {
        this.mRetryTimeMilliseconds = 1000;
    }

    @VisibleForTesting
    void replenishCache() {
        if (!this.mRequestInFlight && this.mMoPubNative != null && this.mNativeAdCache.size() < 3) {
            this.mRequestInFlight = true;
            this.mMoPubNative.makeRequest(this.mRequestParameters, Integer.valueOf(this.mSequenceNumber));
        }
    }

    @VisibleForTesting
    @Deprecated
    void setMoPubNative(MoPubNative moPubNative) {
        this.mMoPubNative = moPubNative;
    }

    @NonNull
    @VisibleForTesting
    @Deprecated
    MoPubNative.MoPubNativeNetworkListener getMoPubNativeNetworkListener() {
        return this.mMoPubNativeNetworkListener;
    }
}
