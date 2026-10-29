package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.applovin.adview.AppLovinAdView;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinInterstitial extends CustomEventInterstitial implements AppLovinAdLoadListener {
    private AppLovinAdService adService;
    private AppLovinAd lastReceived;
    private CustomEventInterstitial.CustomEventInterstitialListener mInterstitialListener;
    private Activity parentActivity;

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener interstitialListener, Map<String, Object> localExtras, Map<String, String> serverExtras) {
        this.mInterstitialListener = interstitialListener;
        if (context instanceof Activity) {
            this.parentActivity = (Activity) context;
            Log.d("AppLovinAdapter", "Request received for new interstitial.");
            this.adService = AppLovinSdk.getInstance(context).getAdService();
            this.adService.loadNextAd(AppLovinAdSize.INTERSTITIAL, this);
            return;
        }
        this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        final AppLovinAd adToRender = this.lastReceived;
        if (adToRender != null) {
            Log.d("MoPub", "Showing AppLovin interstitial ad...");
            this.parentActivity.runOnUiThread(new Runnable() { // from class: com.mopub.mobileads.AppLovinInterstitial.1
                @Override // java.lang.Runnable
                public void run() {
                    AppLovinAdView adView = new AppLovinAdView(AppLovinAdSize.BANNER, AppLovinInterstitial.this.parentActivity);
                    adView.setAdClickListener(new AppLovinAdClickListener() { // from class: com.mopub.mobileads.AppLovinInterstitial.1.1
                        @Override // com.applovin.sdk.AppLovinAdClickListener
                        public void adClicked(AppLovinAd appLovinAd) {
                            AppLovinInterstitial.this.mInterstitialListener.onLeaveApplication();
                        }
                    });
                    adView.setAdDisplayListener(new AppLovinAdDisplayListener() { // from class: com.mopub.mobileads.AppLovinInterstitial.1.2
                        @Override // com.applovin.sdk.AppLovinAdDisplayListener
                        public void adDisplayed(AppLovinAd appLovinAd) {
                            AppLovinInterstitial.this.mInterstitialListener.onInterstitialShown();
                        }

                        @Override // com.applovin.sdk.AppLovinAdDisplayListener
                        public void adHidden(AppLovinAd appLovinAd) {
                            AppLovinInterstitial.this.mInterstitialListener.onInterstitialDismissed();
                        }
                    });
                    adView.renderAd(adToRender);
                }
            });
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd ad) {
        Log.d("MoPub", "AppLovin interstitial loaded successfully.");
        this.lastReceived = ad;
        this.parentActivity.runOnUiThread(new Runnable() { // from class: com.mopub.mobileads.AppLovinInterstitial.2
            @Override // java.lang.Runnable
            public void run() {
                AppLovinInterstitial.this.mInterstitialListener.onInterstitialLoaded();
            }
        });
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(final int errorCode) {
        this.parentActivity.runOnUiThread(new Runnable() { // from class: com.mopub.mobileads.AppLovinInterstitial.3
            @Override // java.lang.Runnable
            public void run() {
                if (errorCode == 204) {
                    AppLovinInterstitial.this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.NO_FILL);
                    return;
                }
                if (errorCode >= 500) {
                    AppLovinInterstitial.this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.SERVER_ERROR);
                } else if (errorCode < 0) {
                    AppLovinInterstitial.this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
                } else {
                    AppLovinInterstitial.this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
                }
            }
        });
    }
}
