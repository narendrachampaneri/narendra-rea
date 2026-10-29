package com.mopub.mobileads;

import android.content.Context;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.mopub.common.AdReport;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.mopub.network.AdRequest;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.Networking;
import com.mopub.network.TrackingRequest;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.VolleyError;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class AdViewController {
    static final double BACKOFF_FACTOR = 1.5d;
    static final int DEFAULT_REFRESH_TIME_MILLISECONDS = 60000;
    static final int MAX_REFRESH_TIME_MILLISECONDS = 600000;
    private static final FrameLayout.LayoutParams WRAP_AND_CENTER_LAYOUT_PARAMS = new FrameLayout.LayoutParams(-2, -2, 17);
    private static final WeakHashMap<View, Boolean> sViewShouldHonorServerDimensions = new WeakHashMap<>();

    @Nullable
    private AdRequest mActiveRequest;

    @Nullable
    private AdResponse mAdResponse;

    @Nullable
    private String mAdUnitId;
    private boolean mAdWasLoaded;

    @Nullable
    private Context mContext;
    private boolean mIsDestroyed;
    private boolean mIsLoading;
    private boolean mIsTesting;
    private String mKeywords;
    private Location mLocation;

    @Nullable
    private MoPubView mMoPubView;
    private String mUrl;

    @Nullable
    private WebViewAdUrlGenerator mUrlGenerator;

    @VisibleForTesting
    int mBackoffPower = 1;
    private Map<String, Object> mLocalExtras = new HashMap();
    private boolean mAutoRefreshEnabled = true;
    private boolean mPreviousAutoRefreshSetting = true;
    private int mTimeoutMilliseconds = -1;
    private final long mBroadcastIdentifier = Utils.generateUniqueId();

    @NonNull
    private final AdRequest.Listener mAdListener = new AdRequest.Listener() { // from class: com.mopub.mobileads.AdViewController.1
        @Override // com.mopub.network.AdRequest.Listener
        public void onSuccess(AdResponse response) {
            AdViewController.this.onAdLoadSuccess(response);
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            AdViewController.this.onAdLoadError(volleyError);
        }
    };
    private final Runnable mRefreshRunnable = new Runnable() { // from class: com.mopub.mobileads.AdViewController.2
        @Override // java.lang.Runnable
        public void run() {
            AdViewController.this.internalLoadAd();
        }
    };

    @Nullable
    private Integer mRefreshTimeMillis = 60000;
    private Handler mHandler = new Handler();

    public static void setShouldHonorServerDimensions(View view) {
        sViewShouldHonorServerDimensions.put(view, true);
    }

    private static boolean getShouldHonorServerDimensions(View view) {
        return sViewShouldHonorServerDimensions.get(view) != null;
    }

    public AdViewController(@NonNull Context context, @NonNull MoPubView view) {
        this.mContext = context;
        this.mMoPubView = view;
        this.mUrlGenerator = new WebViewAdUrlGenerator(this.mContext.getApplicationContext(), MraidNativeCommandHandler.isStorePictureSupported(this.mContext));
    }

    @VisibleForTesting
    void onAdLoadSuccess(@NonNull AdResponse adResponse) {
        this.mBackoffPower = 1;
        this.mAdResponse = adResponse;
        this.mTimeoutMilliseconds = this.mAdResponse.getAdTimeoutMillis() == null ? this.mTimeoutMilliseconds : this.mAdResponse.getAdTimeoutMillis().intValue();
        this.mRefreshTimeMillis = this.mAdResponse.getRefreshTimeMillis();
        setNotLoading();
        AdLoader adLoader = AdLoader.fromAdResponse(this.mAdResponse, this);
        if (adLoader != null) {
            adLoader.load();
        }
        scheduleRefreshTimerIfEnabled();
    }

    @VisibleForTesting
    void onAdLoadError(VolleyError error) {
        if (error instanceof MoPubNetworkError) {
            MoPubNetworkError moPubNetworkError = (MoPubNetworkError) error;
            if (moPubNetworkError.getRefreshTimeMillis() != null) {
                this.mRefreshTimeMillis = moPubNetworkError.getRefreshTimeMillis();
            }
        }
        MoPubErrorCode errorCode = getErrorCodeFromVolleyError(error, this.mContext);
        if (errorCode == MoPubErrorCode.SERVER_ERROR) {
            this.mBackoffPower++;
        }
        setNotLoading();
        adDidFail(errorCode);
    }

    @NonNull
    @VisibleForTesting
    static MoPubErrorCode getErrorCodeFromVolleyError(@NonNull VolleyError error, @Nullable Context context) {
        NetworkResponse networkResponse = error.networkResponse;
        if (error instanceof MoPubNetworkError) {
            switch (((MoPubNetworkError) error).getReason()) {
                case WARMING_UP:
                    return MoPubErrorCode.WARMUP;
                case NO_FILL:
                    return MoPubErrorCode.NO_FILL;
                default:
                    return MoPubErrorCode.UNSPECIFIED;
            }
        }
        if (networkResponse == null) {
            if (!DeviceUtils.isNetworkAvailable(context)) {
                return MoPubErrorCode.NO_CONNECTION;
            }
            return MoPubErrorCode.UNSPECIFIED;
        }
        if (error.networkResponse.statusCode >= 400) {
            return MoPubErrorCode.SERVER_ERROR;
        }
        return MoPubErrorCode.UNSPECIFIED;
    }

    @Nullable
    public MoPubView getMoPubView() {
        return this.mMoPubView;
    }

    public void loadAd() {
        this.mBackoffPower = 1;
        internalLoadAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalLoadAd() {
        this.mAdWasLoaded = true;
        if (TextUtils.isEmpty(this.mAdUnitId)) {
            MoPubLog.d("Can't load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?");
        } else if (!isNetworkAvailable()) {
            MoPubLog.d("Can't load an ad because there is no network connectivity.");
            scheduleRefreshTimerIfEnabled();
        } else {
            String adUrl = generateAdUrl();
            loadNonJavascript(adUrl);
        }
    }

    void loadNonJavascript(String url) {
        if (url != null) {
            MoPubLog.d("Loading url: " + url);
            if (this.mIsLoading) {
                if (!TextUtils.isEmpty(this.mAdUnitId)) {
                    MoPubLog.i("Already loading an ad for " + this.mAdUnitId + ", wait to finish.");
                }
            } else {
                this.mUrl = url;
                this.mIsLoading = true;
                fetchAd(this.mUrl);
            }
        }
    }

    public void reload() {
        MoPubLog.d("Reload ad: " + this.mUrl);
        loadNonJavascript(this.mUrl);
    }

    void loadFailUrl(MoPubErrorCode errorCode) {
        this.mIsLoading = false;
        Log.v("MoPub", "MoPubErrorCode: " + (errorCode == null ? "" : errorCode.toString()));
        String failUrl = this.mAdResponse == null ? "" : this.mAdResponse.getFailoverUrl();
        if (!TextUtils.isEmpty(failUrl)) {
            MoPubLog.d("Loading failover url: " + failUrl);
            loadNonJavascript(failUrl);
        } else {
            adDidFail(MoPubErrorCode.NO_FILL);
        }
    }

    @Deprecated
    void setFailUrl(String failUrl) {
    }

    void setNotLoading() {
        this.mIsLoading = false;
        if (this.mActiveRequest != null) {
            if (!this.mActiveRequest.isCanceled()) {
                this.mActiveRequest.cancel();
            }
            this.mActiveRequest = null;
        }
    }

    public String getKeywords() {
        return this.mKeywords;
    }

    public void setKeywords(String keywords) {
        this.mKeywords = keywords;
    }

    public Location getLocation() {
        return this.mLocation;
    }

    public void setLocation(Location location) {
        this.mLocation = location;
    }

    public String getAdUnitId() {
        return this.mAdUnitId;
    }

    public void setAdUnitId(@NonNull String adUnitId) {
        this.mAdUnitId = adUnitId;
    }

    public long getBroadcastIdentifier() {
        return this.mBroadcastIdentifier;
    }

    public void setTimeout(int milliseconds) {
        this.mTimeoutMilliseconds = milliseconds;
    }

    public int getAdWidth() {
        if (this.mAdResponse == null || this.mAdResponse.getWidth() == null) {
            return 0;
        }
        return this.mAdResponse.getWidth().intValue();
    }

    public int getAdHeight() {
        if (this.mAdResponse == null || this.mAdResponse.getHeight() == null) {
            return 0;
        }
        return this.mAdResponse.getHeight().intValue();
    }

    @Deprecated
    public String getClickTrackingUrl() {
        if (this.mAdResponse == null) {
            return null;
        }
        return this.mAdResponse.getClickTrackingUrl();
    }

    @Deprecated
    public String getRedirectUrl() {
        if (this.mAdResponse == null) {
            return null;
        }
        return this.mAdResponse.getRedirectUrl();
    }

    @Deprecated
    public String getResponseString() {
        if (this.mAdResponse == null) {
            return null;
        }
        return this.mAdResponse.getStringBody();
    }

    public boolean getAutorefreshEnabled() {
        return this.mAutoRefreshEnabled;
    }

    void pauseRefresh() {
        this.mPreviousAutoRefreshSetting = this.mAutoRefreshEnabled;
        setAutorefreshEnabled(false);
    }

    void unpauseRefresh() {
        setAutorefreshEnabled(this.mPreviousAutoRefreshSetting);
    }

    void forceSetAutorefreshEnabled(boolean enabled) {
        this.mPreviousAutoRefreshSetting = enabled;
        setAutorefreshEnabled(enabled);
    }

    private void setAutorefreshEnabled(boolean enabled) {
        boolean autorefreshChanged = this.mAdWasLoaded && this.mAutoRefreshEnabled != enabled;
        if (autorefreshChanged) {
            String enabledString = enabled ? "enabled" : "disabled";
            MoPubLog.d("Refresh " + enabledString + " for ad unit (" + this.mAdUnitId + ").");
        }
        this.mAutoRefreshEnabled = enabled;
        if (this.mAdWasLoaded && this.mAutoRefreshEnabled) {
            scheduleRefreshTimerIfEnabled();
        } else if (!this.mAutoRefreshEnabled) {
            cancelRefreshTimer();
        }
    }

    @Nullable
    public AdReport getAdReport() {
        if (this.mAdUnitId == null || this.mAdResponse == null) {
            return null;
        }
        return new AdReport(this.mAdUnitId, ClientMetadata.getInstance(this.mContext), this.mAdResponse);
    }

    public boolean getTesting() {
        return this.mIsTesting;
    }

    public void setTesting(boolean enabled) {
        this.mIsTesting = enabled;
    }

    @Deprecated
    Object getAdConfiguration() {
        return null;
    }

    boolean isDestroyed() {
        return this.mIsDestroyed;
    }

    void cleanup() {
        if (!this.mIsDestroyed) {
            if (this.mActiveRequest != null) {
                this.mActiveRequest.cancel();
                this.mActiveRequest = null;
            }
            setAutorefreshEnabled(false);
            cancelRefreshTimer();
            this.mMoPubView = null;
            this.mContext = null;
            this.mUrlGenerator = null;
            this.mIsDestroyed = true;
        }
    }

    Integer getAdTimeoutDelay() {
        if (this.mAdResponse == null) {
            return null;
        }
        return this.mAdResponse.getAdTimeoutMillis();
    }

    void trackImpression() {
        if (this.mAdResponse != null) {
            TrackingRequest.makeTrackingHttpRequest(this.mAdResponse.getImpressionTrackingUrl(), this.mContext, BaseEvent.Name.IMPRESSION_REQUEST);
        }
    }

    void registerClick() {
        if (this.mAdResponse != null) {
            TrackingRequest.makeTrackingHttpRequest(this.mAdResponse.getClickTrackingUrl(), this.mContext, BaseEvent.Name.CLICK_REQUEST);
        }
    }

    void fetchAd(String url) {
        MoPubView moPubView = getMoPubView();
        if (moPubView == null || this.mContext == null) {
            MoPubLog.d("Can't load an ad in this ad view because it was destroyed.");
            setNotLoading();
        } else {
            AdRequest adRequest = new AdRequest(url, moPubView.getAdFormat(), this.mAdUnitId, this.mContext, this.mAdListener);
            RequestQueue requestQueue = Networking.getRequestQueue(this.mContext);
            requestQueue.add(adRequest);
            this.mActiveRequest = adRequest;
        }
    }

    void forceRefresh() {
        setNotLoading();
        loadAd();
    }

    @Nullable
    String generateAdUrl() {
        if (this.mUrlGenerator == null) {
            return null;
        }
        return this.mUrlGenerator.withAdUnitId(this.mAdUnitId).withKeywords(this.mKeywords).withLocation(this.mLocation).generateUrlString(Constants.HOST);
    }

    void adDidFail(MoPubErrorCode errorCode) {
        MoPubLog.i("Ad failed to load.");
        setNotLoading();
        MoPubView moPubView = getMoPubView();
        if (moPubView != null) {
            scheduleRefreshTimerIfEnabled();
            moPubView.adFailed(errorCode);
        }
    }

    void scheduleRefreshTimerIfEnabled() {
        cancelRefreshTimer();
        if (this.mAutoRefreshEnabled && this.mRefreshTimeMillis != null && this.mRefreshTimeMillis.intValue() > 0) {
            this.mHandler.postDelayed(this.mRefreshRunnable, Math.min(600000L, ((long) this.mRefreshTimeMillis.intValue()) * ((long) Math.pow(BACKOFF_FACTOR, this.mBackoffPower))));
        }
    }

    void setLocalExtras(Map<String, Object> localExtras) {
        this.mLocalExtras = localExtras != null ? new TreeMap(localExtras) : new TreeMap();
    }

    Map<String, Object> getLocalExtras() {
        return this.mLocalExtras != null ? new TreeMap(this.mLocalExtras) : new TreeMap();
    }

    private void cancelRefreshTimer() {
        this.mHandler.removeCallbacks(this.mRefreshRunnable);
    }

    private boolean isNetworkAvailable() {
        if (this.mContext == null) {
            return false;
        }
        int result = this.mContext.checkCallingPermission("android.permission.ACCESS_NETWORK_STATE");
        if (result == -1) {
            return true;
        }
        ConnectivityManager cm = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        NetworkInfo networkInfo = cm.getActiveNetworkInfo();
        return networkInfo != null && networkInfo.isConnected();
    }

    void setAdContentView(final View view) {
        this.mHandler.post(new Runnable() { // from class: com.mopub.mobileads.AdViewController.3
            @Override // java.lang.Runnable
            public void run() {
                MoPubView moPubView = AdViewController.this.getMoPubView();
                if (moPubView != null) {
                    moPubView.removeAllViews();
                    moPubView.addView(view, AdViewController.this.getAdLayoutParams(view));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FrameLayout.LayoutParams getAdLayoutParams(View view) {
        Integer width = null;
        Integer height = null;
        if (this.mAdResponse != null) {
            width = this.mAdResponse.getWidth();
            height = this.mAdResponse.getHeight();
        }
        if (width == null || height == null || !getShouldHonorServerDimensions(view) || width.intValue() <= 0 || height.intValue() <= 0) {
            return WRAP_AND_CENTER_LAYOUT_PARAMS;
        }
        int scaledWidth = Dips.asIntPixels(width.intValue(), this.mContext);
        int scaledHeight = Dips.asIntPixels(height.intValue(), this.mContext);
        return new FrameLayout.LayoutParams(scaledWidth, scaledHeight, 17);
    }

    @VisibleForTesting
    @Deprecated
    Integer getRefreshTimeMillis() {
        return this.mRefreshTimeMillis;
    }

    @VisibleForTesting
    @Deprecated
    void setRefreshTimeMillis(@Nullable Integer refreshTimeMillis) {
        this.mRefreshTimeMillis = refreshTimeMillis;
    }

    @Deprecated
    public void customEventDidLoadAd() {
        setNotLoading();
        trackImpression();
        scheduleRefreshTimerIfEnabled();
    }

    @Deprecated
    public void customEventDidFailToLoadAd() {
        loadFailUrl(MoPubErrorCode.UNSPECIFIED);
    }

    @Deprecated
    public void customEventActionWillBegin() {
        registerClick();
    }

    @Deprecated
    public void setClickthroughUrl(String clickthroughUrl) {
    }

    @Deprecated
    public boolean isFacebookSupported() {
        return false;
    }

    @Deprecated
    public void setFacebookSupported(boolean enabled) {
    }
}
