package com.mopub.nativeads;

import android.os.Handler;
import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
class ClientPositioningSource implements PositioningSource {

    @NonNull
    private final Handler mHandler = new Handler();

    @NonNull
    private final MoPubNativeAdPositioning.MoPubClientPositioning mPositioning;

    ClientPositioningSource(@NonNull MoPubNativeAdPositioning.MoPubClientPositioning positioning) {
        this.mPositioning = MoPubNativeAdPositioning.clone(positioning);
    }

    @Override // com.mopub.nativeads.PositioningSource
    public void loadPositions(@NonNull String adUnitId, @NonNull final PositioningSource.PositioningListener listener) {
        this.mHandler.post(new Runnable() { // from class: com.mopub.nativeads.ClientPositioningSource.1
            @Override // java.lang.Runnable
            public void run() {
                listener.onLoad(ClientPositioningSource.this.mPositioning);
            }
        });
    }
}
