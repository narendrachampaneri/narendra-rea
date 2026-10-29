package com.mopub.nativeads;

import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
interface PositioningSource {

    public interface PositioningListener {
        void onFailed();

        void onLoad(@NonNull MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning);
    }

    void loadPositions(@NonNull String str, @NonNull PositioningListener positioningListener);
}
