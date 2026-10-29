package com.mopub.nativeads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
interface NativeAdInterface {
    void clear(@NonNull View view);

    void destroy();

    @Nullable
    String getCallToAction();

    @Nullable
    String getClickDestinationUrl();

    @Nullable
    String getDaaIconClickthroughUrl();

    @Nullable
    Object getExtra(String str);

    @NonNull
    Map<String, Object> getExtras();

    @Nullable
    String getIconImageUrl();

    int getImpressionMinPercentageViewed();

    int getImpressionMinTimeViewed();

    @NonNull
    Set<String> getImpressionTrackers();

    @Nullable
    String getMainImageUrl();

    @Nullable
    Double getStarRating();

    @Nullable
    String getText();

    @Nullable
    String getTitle();

    void handleClick(@Nullable View view);

    boolean isOverridingClickTracker();

    boolean isOverridingImpressionTracker();

    void prepare(@NonNull View view);

    void recordImpression();

    void setNativeEventListener(@Nullable BaseForwardingNativeAd.NativeEventListener nativeEventListener);
}
