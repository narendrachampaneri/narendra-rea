package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Constants;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.Networking;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;

/* JADX INFO: loaded from: classes.dex */
class ServerPositioningSource implements PositioningSource {
    private static final double DEFAULT_RETRY_TIME_MILLISECONDS = 1000.0d;
    private static final double EXPONENTIAL_BACKOFF_FACTOR = 2.0d;
    private static final int MAXIMUM_RETRY_TIME_MILLISECONDS = 300000;

    @NonNull
    private final Context mContext;

    @Nullable
    private PositioningSource.PositioningListener mListener;

    @Nullable
    private PositioningRequest mRequest;
    private int mRetryCount;

    @Nullable
    private String mRetryUrl;
    private int mMaximumRetryTimeMillis = MAXIMUM_RETRY_TIME_MILLISECONDS;

    @NonNull
    private final Handler mRetryHandler = new Handler();

    @NonNull
    private final Runnable mRetryRunnable = new Runnable() { // from class: com.mopub.nativeads.ServerPositioningSource.1
        @Override // java.lang.Runnable
        public void run() {
            ServerPositioningSource.this.requestPositioningInternal();
        }
    };
    private final Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning> mPositioningListener = new Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning>() { // from class: com.mopub.nativeads.ServerPositioningSource.2
        @Override // com.mopub.volley.Response.Listener
        public void onResponse(MoPubNativeAdPositioning.MoPubClientPositioning clientPositioning) {
            ServerPositioningSource.this.handleSuccess(clientPositioning);
        }
    };
    private final Response.ErrorListener mErrorListener = new Response.ErrorListener() { // from class: com.mopub.nativeads.ServerPositioningSource.3
        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError error) {
            if (!(error instanceof MoPubNetworkError) || ((MoPubNetworkError) error).getReason().equals(MoPubNetworkError.Reason.WARMING_UP)) {
                MoPubLog.e("Failed to load positioning data", error);
                if (error.networkResponse == null && !DeviceUtils.isNetworkAvailable(ServerPositioningSource.this.mContext)) {
                    MoPubLog.c(String.valueOf(MoPubErrorCode.NO_CONNECTION.toString()));
                }
            }
            ServerPositioningSource.this.handleFailure();
        }
    };

    ServerPositioningSource(@NonNull Context context) {
        this.mContext = context.getApplicationContext();
    }

    @Override // com.mopub.nativeads.PositioningSource
    public void loadPositions(@NonNull String adUnitId, @NonNull PositioningSource.PositioningListener listener) {
        if (this.mRequest != null) {
            this.mRequest.cancel();
            this.mRequest = null;
        }
        if (this.mRetryCount > 0) {
            this.mRetryHandler.removeCallbacks(this.mRetryRunnable);
            this.mRetryCount = 0;
        }
        this.mListener = listener;
        this.mRetryUrl = new PositioningUrlGenerator(this.mContext).withAdUnitId(adUnitId).generateUrlString(Constants.HOST);
        requestPositioningInternal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestPositioningInternal() {
        MoPubLog.d("Loading positioning from: " + this.mRetryUrl);
        this.mRequest = new PositioningRequest(this.mRetryUrl, this.mPositioningListener, this.mErrorListener);
        RequestQueue requestQueue = Networking.getRequestQueue(this.mContext);
        requestQueue.add(this.mRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSuccess(@NonNull MoPubNativeAdPositioning.MoPubClientPositioning positioning) {
        if (this.mListener != null) {
            this.mListener.onLoad(positioning);
        }
        this.mListener = null;
        this.mRetryCount = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFailure() {
        double multiplier = Math.pow(EXPONENTIAL_BACKOFF_FACTOR, this.mRetryCount + 1);
        int delay = (int) (DEFAULT_RETRY_TIME_MILLISECONDS * multiplier);
        if (delay >= this.mMaximumRetryTimeMillis) {
            MoPubLog.d("Error downloading positioning information");
            if (this.mListener != null) {
                this.mListener.onFailed();
            }
            this.mListener = null;
            return;
        }
        this.mRetryCount++;
        this.mRetryHandler.postDelayed(this.mRetryRunnable, delay);
    }

    @VisibleForTesting
    @Deprecated
    void setMaximumRetryTimeMilliseconds(int millis) {
        this.mMaximumRetryTimeMillis = millis;
    }
}
