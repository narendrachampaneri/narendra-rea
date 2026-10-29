package com.mopub.nativeads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import com.mopub.common.AdFormat;
import com.mopub.common.Constants;
import com.mopub.common.GpsHelper;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.ManifestUtils;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.network.AdRequest;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.Networking;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.VolleyError;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class MoPubNative {

    @NonNull
    private final String mAdUnitId;

    @NonNull
    private final WeakReference<Context> mContext;

    @NonNull
    private Map<String, Object> mLocalExtras;

    @NonNull
    private MoPubNativeEventListener mMoPubNativeEventListener;

    @NonNull
    private MoPubNativeNetworkListener mMoPubNativeNetworkListener;

    @Nullable
    private AdRequest mNativeRequest;

    @NonNull
    private final AdRequest.Listener mVolleyListener;
    static final MoPubNativeNetworkListener EMPTY_NETWORK_LISTENER = new MoPubNativeNetworkListener() { // from class: com.mopub.nativeads.MoPubNative.1
        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeLoad(@NonNull NativeResponse nativeResponse) {
            nativeResponse.destroy();
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeFail(NativeErrorCode errorCode) {
        }
    };
    static final MoPubNativeEventListener EMPTY_EVENT_LISTENER = new MoPubNativeEventListener() { // from class: com.mopub.nativeads.MoPubNative.2
        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeEventListener
        public void onNativeImpression(@Nullable View view) {
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeEventListener
        public void onNativeClick(@Nullable View view) {
        }
    };

    public interface MoPubNativeEventListener {
        void onNativeClick(View view);

        void onNativeImpression(View view);
    }

    @Deprecated
    public interface MoPubNativeListener extends MoPubNativeNetworkListener, MoPubNativeEventListener {
    }

    public interface MoPubNativeNetworkListener {
        void onNativeFail(NativeErrorCode nativeErrorCode);

        void onNativeLoad(NativeResponse nativeResponse);
    }

    @Deprecated
    public MoPubNative(@NonNull Context context, @NonNull String adUnitId, @NonNull MoPubNativeListener moPubNativeListener) {
        this(context, adUnitId, (MoPubNativeNetworkListener) moPubNativeListener);
        setNativeEventListener(moPubNativeListener);
    }

    public MoPubNative(@NonNull Context context, @NonNull String adUnitId, @NonNull MoPubNativeNetworkListener moPubNativeNetworkListener) {
        this.mLocalExtras = new TreeMap();
        Preconditions.checkNotNull(context, "Context may not be null.");
        Preconditions.checkNotNull(adUnitId, "AdUnitId may not be null.");
        Preconditions.checkNotNull(moPubNativeNetworkListener, "MoPubNativeNetworkListener may not be null.");
        ManifestUtils.checkNativeActivitiesDeclared(context);
        this.mContext = new WeakReference<>(context);
        this.mAdUnitId = adUnitId;
        this.mMoPubNativeNetworkListener = moPubNativeNetworkListener;
        this.mMoPubNativeEventListener = EMPTY_EVENT_LISTENER;
        this.mVolleyListener = new AdRequest.Listener() { // from class: com.mopub.nativeads.MoPubNative.3
            @Override // com.mopub.network.AdRequest.Listener
            public void onSuccess(@NonNull AdResponse response) {
                MoPubNative.this.onAdLoad(response);
            }

            @Override // com.mopub.volley.Response.ErrorListener
            public void onErrorResponse(@NonNull VolleyError volleyError) {
                MoPubNative.this.onAdError(volleyError);
            }
        };
        GpsHelper.fetchAdvertisingInfoAsync(context, null);
    }

    public void setNativeEventListener(@Nullable MoPubNativeEventListener nativeEventListener) {
        if (nativeEventListener == null) {
            nativeEventListener = EMPTY_EVENT_LISTENER;
        }
        this.mMoPubNativeEventListener = nativeEventListener;
    }

    public void destroy() {
        this.mContext.clear();
        if (this.mNativeRequest != null) {
            this.mNativeRequest.cancel();
            this.mNativeRequest = null;
        }
        this.mMoPubNativeNetworkListener = EMPTY_NETWORK_LISTENER;
        this.mMoPubNativeEventListener = EMPTY_EVENT_LISTENER;
    }

    public void setLocalExtras(@Nullable Map<String, Object> localExtras) {
        if (localExtras == null) {
            this.mLocalExtras = new TreeMap();
        } else {
            this.mLocalExtras = new TreeMap(localExtras);
        }
    }

    public void makeRequest() {
        makeRequest((RequestParameters) null);
    }

    public void makeRequest(@Nullable RequestParameters requestParameters) {
        makeRequest(requestParameters, null);
    }

    public void makeRequest(@Nullable RequestParameters requestParameters, @Nullable Integer sequenceNumber) {
        Context context = getContextOrDestroy();
        if (context != null) {
            if (!DeviceUtils.isNetworkAvailable(context)) {
                this.mMoPubNativeNetworkListener.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
            } else {
                loadNativeAd(requestParameters, sequenceNumber);
            }
        }
    }

    private void loadNativeAd(@Nullable RequestParameters requestParameters, @Nullable Integer sequenceNumber) {
        Context context = getContextOrDestroy();
        if (context != null) {
            NativeUrlGenerator generator = new NativeUrlGenerator(context).withAdUnitId(this.mAdUnitId).withRequest(requestParameters);
            if (sequenceNumber != null) {
                generator.withSequenceNumber(sequenceNumber.intValue());
            }
            String endpointUrl = generator.generateUrlString(Constants.HOST);
            if (endpointUrl != null) {
                MoPubLog.d("Loading ad from: " + endpointUrl);
            }
            requestNativeAd(endpointUrl);
        }
    }

    void requestNativeAd(@Nullable String endpointUrl) {
        Context context = getContextOrDestroy();
        if (context != null) {
            if (endpointUrl == null) {
                this.mMoPubNativeNetworkListener.onNativeFail(NativeErrorCode.INVALID_REQUEST_URL);
                return;
            }
            this.mNativeRequest = new AdRequest(endpointUrl, AdFormat.NATIVE, this.mAdUnitId, context, this.mVolleyListener);
            RequestQueue requestQueue = Networking.getRequestQueue(context);
            requestQueue.add(this.mNativeRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdLoad(@NonNull final AdResponse response) {
        Context context = getContextOrDestroy();
        if (context != null) {
            CustomEventNative.CustomEventNativeListener customEventNativeListener = new CustomEventNative.CustomEventNativeListener() { // from class: com.mopub.nativeads.MoPubNative.4
                @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                public void onNativeAdLoaded(@NonNull NativeAdInterface nativeAd) {
                    Context context2 = MoPubNative.this.getContextOrDestroy();
                    if (context2 != null) {
                        MoPubNative.this.mMoPubNativeNetworkListener.onNativeLoad(new NativeResponse(context2, response.getImpressionTrackingUrl(), response.getClickTrackingUrl(), MoPubNative.this.mAdUnitId, nativeAd, MoPubNative.this.mMoPubNativeEventListener));
                    }
                }

                @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                public void onNativeAdFailed(NativeErrorCode errorCode) {
                    MoPubNative.this.requestNativeAd(response.getFailoverUrl());
                }
            };
            CustomEventNativeAdapter.loadNativeAd(context, this.mLocalExtras, response, customEventNativeListener);
        }
    }

    @VisibleForTesting
    void onAdError(@NonNull VolleyError volleyError) {
        MoPubLog.d("Native ad request failed.", volleyError);
        if (volleyError instanceof MoPubNetworkError) {
            switch (error.getReason()) {
                case BAD_BODY:
                    this.mMoPubNativeNetworkListener.onNativeFail(NativeErrorCode.INVALID_JSON);
                    break;
                case BAD_HEADER_DATA:
                    this.mMoPubNativeNetworkListener.onNativeFail(NativeErrorCode.INVALID_JSON);
                    break;
                case WARMING_UP:
                    MoPubLog.c(MoPubErrorCode.WARMUP.toString());
                    this.mMoPubNativeNetworkListener.onNativeFail(NativeErrorCode.EMPTY_AD_RESPONSE);
                    break;
                case NO_FILL:
                    this.mMoPubNativeNetworkListener.onNativeFail(NativeErrorCode.EMPTY_AD_RESPONSE);
                    break;
                default:
                    this.mMoPubNativeNetworkListener.onNativeFail(NativeErrorCode.UNSPECIFIED);
                    break;
            }
            return;
        }
        NetworkResponse response = volleyError.networkResponse;
        if (response != null && response.statusCode >= 500 && response.statusCode < 600) {
            this.mMoPubNativeNetworkListener.onNativeFail(NativeErrorCode.SERVER_ERROR_RESPONSE_CODE);
        } else if (response == null && !DeviceUtils.isNetworkAvailable(this.mContext.get())) {
            MoPubLog.c(String.valueOf(MoPubErrorCode.NO_CONNECTION.toString()));
            this.mMoPubNativeNetworkListener.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
        } else {
            this.mMoPubNativeNetworkListener.onNativeFail(NativeErrorCode.UNSPECIFIED);
        }
    }

    Context getContextOrDestroy() {
        Context context = this.mContext.get();
        if (context == null) {
            destroy();
            MoPubLog.d("Weak reference to Activity Context in MoPubNative became null. This instance of MoPubNative is destroyed and No more requests will be processed.");
        }
        return context;
    }

    @NonNull
    @VisibleForTesting
    @Deprecated
    MoPubNativeNetworkListener getMoPubNativeNetworkListener() {
        return this.mMoPubNativeNetworkListener;
    }

    @NonNull
    @VisibleForTesting
    @Deprecated
    MoPubNativeEventListener getMoPubNativeEventListener() {
        return this.mMoPubNativeEventListener;
    }
}
