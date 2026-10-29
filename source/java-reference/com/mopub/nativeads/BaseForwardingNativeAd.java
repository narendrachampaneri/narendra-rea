package com.mopub.nativeads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseForwardingNativeAd implements NativeAdInterface {
    private static final int IMPRESSION_MIN_PERCENTAGE_VIEWED = 50;
    static final double MAX_STAR_RATING = 5.0d;
    static final double MIN_STAR_RATING = 0.0d;

    @Nullable
    private String mCallToAction;

    @Nullable
    private String mClickDestinationUrl;

    @Nullable
    private String mIconImageUrl;
    private boolean mIsOverridingClickTracker;
    private boolean mIsOverridingImpressionTracker;

    @Nullable
    private String mMainImageUrl;

    @Nullable
    private NativeEventListener mNativeEventListener;

    @Nullable
    private Double mStarRating;

    @Nullable
    private String mText;

    @Nullable
    private String mTitle;
    private int mImpressionMinTimeViewed = 1000;

    @NonNull
    private final Set<String> mImpressionTrackers = new HashSet();

    @NonNull
    private final Map<String, Object> mExtras = new HashMap();

    interface NativeEventListener {
        void onAdClicked();

        void onAdImpressed();
    }

    BaseForwardingNativeAd() {
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    @Nullable
    public final String getMainImageUrl() {
        return this.mMainImageUrl;
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    @Nullable
    public final String getIconImageUrl() {
        return this.mIconImageUrl;
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    @NonNull
    public final Set<String> getImpressionTrackers() {
        return new HashSet(this.mImpressionTrackers);
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    @Nullable
    public final String getClickDestinationUrl() {
        return this.mClickDestinationUrl;
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    @Nullable
    public final String getCallToAction() {
        return this.mCallToAction;
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    @Nullable
    public final String getTitle() {
        return this.mTitle;
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    @Nullable
    public final String getText() {
        return this.mText;
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    @Nullable
    public final Double getStarRating() {
        return this.mStarRating;
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    @Nullable
    public String getDaaIconClickthroughUrl() {
        return null;
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    public final int getImpressionMinPercentageViewed() {
        return 50;
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    public final int getImpressionMinTimeViewed() {
        return this.mImpressionMinTimeViewed;
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    @Nullable
    public final Object getExtra(@NonNull String key) {
        if (Preconditions.NoThrow.checkNotNull(key, "getExtra key is not allowed to be null")) {
            return this.mExtras.get(key);
        }
        return null;
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    @NonNull
    public final Map<String, Object> getExtras() {
        return new HashMap(this.mExtras);
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    public final boolean isOverridingImpressionTracker() {
        return this.mIsOverridingImpressionTracker;
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    public final boolean isOverridingClickTracker() {
        return this.mIsOverridingClickTracker;
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    public final void setNativeEventListener(@Nullable NativeEventListener nativeEventListener) {
        this.mNativeEventListener = nativeEventListener;
    }

    final void setMainImageUrl(@Nullable String mainImageUrl) {
        this.mMainImageUrl = mainImageUrl;
    }

    final void setIconImageUrl(@Nullable String iconImageUrl) {
        this.mIconImageUrl = iconImageUrl;
    }

    final void setClickDestinationUrl(@Nullable String clickDestinationUrl) {
        this.mClickDestinationUrl = clickDestinationUrl;
    }

    final void setCallToAction(@Nullable String callToAction) {
        this.mCallToAction = callToAction;
    }

    final void setTitle(@Nullable String title) {
        this.mTitle = title;
    }

    final void setText(@Nullable String text) {
        this.mText = text;
    }

    final void setStarRating(@Nullable Double starRating) {
        if (starRating == null) {
            this.mStarRating = null;
        } else if (starRating.doubleValue() >= 0.0d && starRating.doubleValue() <= MAX_STAR_RATING) {
            this.mStarRating = starRating;
        } else {
            MoPubLog.d("Ignoring attempt to set invalid star rating (" + starRating + "). Must be between 0.0 and " + MAX_STAR_RATING + ".");
        }
    }

    final void addExtra(@NonNull String key, @Nullable Object value) {
        if (Preconditions.NoThrow.checkNotNull(key, "addExtra key is not allowed to be null")) {
            this.mExtras.put(key, value);
        }
    }

    final void addImpressionTracker(@NonNull String url) {
        if (Preconditions.NoThrow.checkNotNull(url, "impressionTracker url is not allowed to be null")) {
            this.mImpressionTrackers.add(url);
        }
    }

    final void setImpressionMinTimeViewed(int impressionMinTimeViewed) {
        if (impressionMinTimeViewed >= 0) {
            this.mImpressionMinTimeViewed = impressionMinTimeViewed;
        }
    }

    final void setOverridingImpressionTracker(boolean isOverridingImpressionTracker) {
        this.mIsOverridingImpressionTracker = isOverridingImpressionTracker;
    }

    final void setOverridingClickTracker(boolean isOverridingClickTracker) {
        this.mIsOverridingClickTracker = isOverridingClickTracker;
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    public void prepare(@Nullable View view) {
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    public void recordImpression() {
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    public void handleClick(@Nullable View view) {
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    public void clear(@Nullable View view) {
    }

    @Override // com.mopub.nativeads.NativeAdInterface
    public void destroy() {
    }

    protected final void notifyAdImpressed() {
        if (this.mNativeEventListener != null) {
            this.mNativeEventListener.onAdImpressed();
        }
    }

    protected final void notifyAdClicked() {
        if (this.mNativeEventListener != null) {
            this.mNativeEventListener.onAdClicked();
        }
    }

    static void preCacheImages(@NonNull Context context, @NonNull List<String> imageUrls, @NonNull final CustomEventNative.ImageListener imageListener) {
        ImageLoader imageLoader = Networking.getImageLoader(context);
        final AtomicInteger imageCounter = new AtomicInteger(imageUrls.size());
        final AtomicBoolean anyFailures = new AtomicBoolean(false);
        ImageLoader.ImageListener volleyImageListener = new ImageLoader.ImageListener() { // from class: com.mopub.nativeads.BaseForwardingNativeAd.1
            @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean isImmediate) {
                if (imageContainer.getBitmap() != null) {
                    int count = imageCounter.decrementAndGet();
                    if (count == 0 && !anyFailures.get()) {
                        imageListener.onImagesCached();
                    }
                }
            }

            @Override // com.mopub.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                MoPubLog.d("Failed to download a native ads image:", volleyError);
                boolean anyPreviousErrors = anyFailures.getAndSet(true);
                imageCounter.decrementAndGet();
                if (!anyPreviousErrors) {
                    imageListener.onImagesFailedToCache(NativeErrorCode.IMAGE_DOWNLOAD_FAILURE);
                }
            }
        };
        for (String url : imageUrls) {
            if (TextUtils.isEmpty(url)) {
                anyFailures.set(true);
                imageListener.onImagesFailedToCache(NativeErrorCode.IMAGE_DOWNLOAD_FAILURE);
                return;
            }
            imageLoader.get(url, volleyImageListener);
        }
    }
}
