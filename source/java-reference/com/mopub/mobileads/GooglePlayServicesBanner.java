package com.mopub.mobileads;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.mopub.common.util.Views;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class GooglePlayServicesBanner extends CustomEventBanner {
    public static final String AD_HEIGHT_KEY = "adHeight";
    public static final String AD_UNIT_ID_KEY = "adUnitID";
    public static final String AD_WIDTH_KEY = "adWidth";
    public static final String LOCATION_KEY = "location";
    private CustomEventBanner.CustomEventBannerListener mBannerListener;
    private AdView mGoogleAdView;

    GooglePlayServicesBanner() {
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    protected void loadBanner(Context context, CustomEventBanner.CustomEventBannerListener customEventBannerListener, Map<String, Object> localExtras, Map<String, String> serverExtras) {
        this.mBannerListener = customEventBannerListener;
        if (extrasAreValid(serverExtras)) {
            String adUnitId = serverExtras.get("adUnitID");
            int adWidth = Integer.parseInt(serverExtras.get(AD_WIDTH_KEY));
            int adHeight = Integer.parseInt(serverExtras.get(AD_HEIGHT_KEY));
            this.mGoogleAdView = new AdView(context);
            this.mGoogleAdView.setAdListener(new AdViewListener());
            this.mGoogleAdView.setAdUnitId(adUnitId);
            AdSize adSize = calculateAdSize(adWidth, adHeight);
            if (adSize == null) {
                this.mBannerListener.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                return;
            }
            this.mGoogleAdView.setAdSize(adSize);
            AdRequest adRequest = new AdRequest.Builder().setRequestAgent("MoPub").build();
            try {
                this.mGoogleAdView.loadAd(adRequest);
                return;
            } catch (NoClassDefFoundError e) {
                this.mBannerListener.onBannerFailed(MoPubErrorCode.NETWORK_NO_FILL);
                return;
            }
        }
        this.mBannerListener.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    protected void onInvalidate() {
        Views.removeFromParent(this.mGoogleAdView);
        if (this.mGoogleAdView != null) {
            this.mGoogleAdView.setAdListener(null);
            this.mGoogleAdView.destroy();
        }
    }

    private boolean extrasAreValid(Map<String, String> serverExtras) {
        try {
            Integer.parseInt(serverExtras.get(AD_WIDTH_KEY));
            Integer.parseInt(serverExtras.get(AD_HEIGHT_KEY));
            return serverExtras.containsKey("adUnitID");
        } catch (NumberFormatException e) {
            return false;
        }
    }

    private AdSize calculateAdSize(int width, int height) {
        if (width <= AdSize.BANNER.getWidth() && height <= AdSize.BANNER.getHeight()) {
            return AdSize.BANNER;
        }
        if (width <= AdSize.MEDIUM_RECTANGLE.getWidth() && height <= AdSize.MEDIUM_RECTANGLE.getHeight()) {
            return AdSize.MEDIUM_RECTANGLE;
        }
        if (width <= AdSize.FULL_BANNER.getWidth() && height <= AdSize.FULL_BANNER.getHeight()) {
            return AdSize.FULL_BANNER;
        }
        if (width <= AdSize.LEADERBOARD.getWidth() && height <= AdSize.LEADERBOARD.getHeight()) {
            return AdSize.LEADERBOARD;
        }
        return null;
    }

    private class AdViewListener extends AdListener {
        private AdViewListener() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int errorCode) {
            Log.d("MoPub", "Google Play Services banner ad failed to load.");
            if (GooglePlayServicesBanner.this.mBannerListener != null) {
                GooglePlayServicesBanner.this.mBannerListener.onBannerFailed(MoPubErrorCode.NETWORK_NO_FILL);
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            Log.d("MoPub", "Google Play Services banner ad loaded successfully. Showing ad...");
            if (GooglePlayServicesBanner.this.mBannerListener != null) {
                GooglePlayServicesBanner.this.mBannerListener.onBannerLoaded(GooglePlayServicesBanner.this.mGoogleAdView);
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            Log.d("MoPub", "Google Play Services banner ad clicked.");
            if (GooglePlayServicesBanner.this.mBannerListener != null) {
                GooglePlayServicesBanner.this.mBannerListener.onBannerClicked();
            }
        }
    }

    @Deprecated
    AdView getGoogleAdView() {
        return this.mGoogleAdView;
    }
}
