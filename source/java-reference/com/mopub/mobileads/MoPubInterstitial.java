package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.LocationService;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.factories.CustomEventInterstitialAdapterFactory;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MoPubInterstitial implements CustomEventInterstitialAdapter.CustomEventInterstitialAdapterListener {
    private Activity mActivity;
    private String mAdUnitId;
    private InterstitialState mCurrentInterstitialState;
    private CustomEventInterstitialAdapter mCustomEventInterstitialAdapter;
    private InterstitialAdListener mInterstitialAdListener;
    private MoPubInterstitialView mInterstitialView;
    private boolean mIsDestroyed;
    private MoPubInterstitialListener mListener;

    public interface InterstitialAdListener {
        void onInterstitialClicked(MoPubInterstitial moPubInterstitial);

        void onInterstitialDismissed(MoPubInterstitial moPubInterstitial);

        void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode);

        void onInterstitialLoaded(MoPubInterstitial moPubInterstitial);

        void onInterstitialShown(MoPubInterstitial moPubInterstitial);
    }

    @Deprecated
    public interface MoPubInterstitialListener {
        void OnInterstitialFailed();

        void OnInterstitialLoaded();
    }

    private enum InterstitialState {
        CUSTOM_EVENT_AD_READY,
        NOT_READY;

        boolean isReady() {
            return this != NOT_READY;
        }
    }

    public String getAdUnitId() {
        return this.mAdUnitId;
    }

    public MoPubInterstitial(Activity activity, String id) {
        this.mActivity = activity;
        this.mAdUnitId = id;
        this.mInterstitialView = new MoPubInterstitialView(this.mActivity);
        this.mInterstitialView.setAdUnitId(this.mAdUnitId);
        this.mCurrentInterstitialState = InterstitialState.NOT_READY;
    }

    public void load() {
        resetCurrentInterstitial();
        this.mInterstitialView.loadAd();
    }

    public void forceRefresh() {
        resetCurrentInterstitial();
        this.mInterstitialView.forceRefresh();
    }

    private void resetCurrentInterstitial() {
        this.mCurrentInterstitialState = InterstitialState.NOT_READY;
        if (this.mCustomEventInterstitialAdapter != null) {
            this.mCustomEventInterstitialAdapter.invalidate();
            this.mCustomEventInterstitialAdapter = null;
        }
        this.mIsDestroyed = false;
    }

    public boolean isReady() {
        return this.mCurrentInterstitialState.isReady();
    }

    boolean isDestroyed() {
        return this.mIsDestroyed;
    }

    public boolean show() {
        switch (this.mCurrentInterstitialState) {
            case CUSTOM_EVENT_AD_READY:
                showCustomEventInterstitial();
                return true;
            default:
                return false;
        }
    }

    private void showCustomEventInterstitial() {
        if (this.mCustomEventInterstitialAdapter != null) {
            this.mCustomEventInterstitialAdapter.showInterstitial();
        }
    }

    Integer getAdTimeoutDelay() {
        return this.mInterstitialView.getAdTimeoutDelay();
    }

    MoPubInterstitialView getMoPubInterstitialView() {
        return this.mInterstitialView;
    }

    public void setKeywords(String keywords) {
        this.mInterstitialView.setKeywords(keywords);
    }

    public String getKeywords() {
        return this.mInterstitialView.getKeywords();
    }

    public Activity getActivity() {
        return this.mActivity;
    }

    public Location getLocation() {
        return this.mInterstitialView.getLocation();
    }

    public void destroy() {
        this.mIsDestroyed = true;
        if (this.mCustomEventInterstitialAdapter != null) {
            this.mCustomEventInterstitialAdapter.invalidate();
            this.mCustomEventInterstitialAdapter = null;
        }
        this.mInterstitialView.setBannerAdListener(null);
        this.mInterstitialView.destroy();
    }

    public void setInterstitialAdListener(InterstitialAdListener listener) {
        this.mInterstitialAdListener = listener;
    }

    public InterstitialAdListener getInterstitialAdListener() {
        return this.mInterstitialAdListener;
    }

    public void setTesting(boolean testing) {
        this.mInterstitialView.setTesting(testing);
    }

    public boolean getTesting() {
        return this.mInterstitialView.getTesting();
    }

    public void setLocalExtras(Map<String, Object> extras) {
        this.mInterstitialView.setLocalExtras(extras);
    }

    public Map<String, Object> getLocalExtras() {
        return this.mInterstitialView.getLocalExtras();
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.CustomEventInterstitialAdapterListener
    public void onCustomEventInterstitialLoaded() {
        if (!this.mIsDestroyed) {
            this.mCurrentInterstitialState = InterstitialState.CUSTOM_EVENT_AD_READY;
            if (this.mInterstitialAdListener != null) {
                this.mInterstitialAdListener.onInterstitialLoaded(this);
            } else if (this.mListener != null) {
                this.mListener.OnInterstitialLoaded();
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.CustomEventInterstitialAdapterListener
    public void onCustomEventInterstitialFailed(MoPubErrorCode errorCode) {
        if (!isDestroyed()) {
            this.mCurrentInterstitialState = InterstitialState.NOT_READY;
            this.mInterstitialView.loadFailUrl(errorCode);
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.CustomEventInterstitialAdapterListener
    public void onCustomEventInterstitialShown() {
        if (!isDestroyed()) {
            this.mInterstitialView.trackImpression();
            if (this.mInterstitialAdListener != null) {
                this.mInterstitialAdListener.onInterstitialShown(this);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.CustomEventInterstitialAdapterListener
    public void onCustomEventInterstitialClicked() {
        if (!isDestroyed()) {
            this.mInterstitialView.registerClick();
            if (this.mInterstitialAdListener != null) {
                this.mInterstitialAdListener.onInterstitialClicked(this);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.CustomEventInterstitialAdapterListener
    public void onCustomEventInterstitialDismissed() {
        if (!isDestroyed()) {
            this.mCurrentInterstitialState = InterstitialState.NOT_READY;
            if (this.mInterstitialAdListener != null) {
                this.mInterstitialAdListener.onInterstitialDismissed(this);
            }
        }
    }

    @Deprecated
    public void setLocationAwareness(LocationService.LocationAwareness locationAwareness) {
        MoPub.setLocationAwareness(locationAwareness.getNewLocationAwareness());
    }

    @Deprecated
    public LocationService.LocationAwareness getLocationAwareness() {
        return LocationService.LocationAwareness.fromMoPubLocationAwareness(MoPub.getLocationAwareness());
    }

    @Deprecated
    public void setLocationPrecision(int precision) {
        MoPub.setLocationPrecision(precision);
    }

    @Deprecated
    public int getLocationPrecision() {
        return MoPub.getLocationPrecision();
    }

    public class MoPubInterstitialView extends MoPubView {
        public MoPubInterstitialView(Context context) {
            super(context);
            setAutorefreshEnabled(false);
        }

        @Override // com.mopub.mobileads.MoPubView
        public AdFormat getAdFormat() {
            return AdFormat.INTERSTITIAL;
        }

        @Override // com.mopub.mobileads.MoPubView
        protected void loadCustomEvent(String customEventClassName, Map<String, String> serverExtras) {
            if (this.mAdViewController != null) {
                if (!TextUtils.isEmpty(customEventClassName)) {
                    if (MoPubInterstitial.this.mCustomEventInterstitialAdapter != null) {
                        MoPubInterstitial.this.mCustomEventInterstitialAdapter.invalidate();
                    }
                    MoPubLog.d("Loading custom event interstitial adapter.");
                    MoPubInterstitial.this.mCustomEventInterstitialAdapter = CustomEventInterstitialAdapterFactory.create(MoPubInterstitial.this, customEventClassName, serverExtras, this.mAdViewController.getBroadcastIdentifier(), this.mAdViewController.getAdReport());
                    MoPubInterstitial.this.mCustomEventInterstitialAdapter.setAdapterListener(MoPubInterstitial.this);
                    MoPubInterstitial.this.mCustomEventInterstitialAdapter.loadInterstitial();
                    return;
                }
                MoPubLog.d("Couldn't invoke custom event because the server did not specify one.");
                loadFailUrl(MoPubErrorCode.ADAPTER_NOT_FOUND);
            }
        }

        protected void trackImpression() {
            MoPubLog.d("Tracking impression for interstitial.");
            if (this.mAdViewController != null) {
                this.mAdViewController.trackImpression();
            }
        }

        @Override // com.mopub.mobileads.MoPubView
        protected void adFailed(MoPubErrorCode errorCode) {
            if (MoPubInterstitial.this.mInterstitialAdListener != null) {
                MoPubInterstitial.this.mInterstitialAdListener.onInterstitialFailed(MoPubInterstitial.this, errorCode);
            }
        }
    }

    @Deprecated
    void setInterstitialView(MoPubInterstitialView interstitialView) {
        this.mInterstitialView = interstitialView;
    }

    @Deprecated
    public void setListener(MoPubInterstitialListener listener) {
        this.mListener = listener;
    }

    @Deprecated
    public MoPubInterstitialListener getListener() {
        return this.mListener;
    }

    @Deprecated
    public void customEventDidLoadAd() {
        if (this.mInterstitialView != null) {
            this.mInterstitialView.trackImpression();
        }
    }

    @Deprecated
    public void customEventDidFailToLoadAd() {
        if (this.mInterstitialView != null) {
            this.mInterstitialView.loadFailUrl(MoPubErrorCode.UNSPECIFIED);
        }
    }

    @Deprecated
    public void customEventActionWillBegin() {
        if (this.mInterstitialView != null) {
            this.mInterstitialView.registerClick();
        }
    }

    @Deprecated
    public void setFacebookSupported(boolean enabled) {
    }

    @Deprecated
    public boolean isFacebookSupported() {
        return false;
    }
}
