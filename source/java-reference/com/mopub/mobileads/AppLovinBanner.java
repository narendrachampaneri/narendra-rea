package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.applovin.adview.AppLovinAdView;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinBanner extends CustomEventBanner implements AppLovinAdLoadListener, AppLovinAdClickListener {
    private AppLovinAdView adView;
    private CustomEventBanner.CustomEventBannerListener mBannerListener;

    @Override // com.mopub.mobileads.CustomEventBanner
    public void loadBanner(Context context, CustomEventBanner.CustomEventBannerListener bannerListener, Map localExtras, Map serverExtras) {
        this.mBannerListener = bannerListener;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            Log.d("AppLovinAdapter", "Request received for new BANNER.");
            this.adView = new AppLovinAdView(AppLovinSdk.getInstance(context), AppLovinAdSize.BANNER, activity);
            this.adView.setAutoDestroy(false);
            this.adView.setAdLoadListener(this);
            this.adView.setAdClickListener(this);
            this.adView.loadNextAd();
            return;
        }
        this.mBannerListener.onBannerFailed(MoPubErrorCode.INTERNAL_ERROR);
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    public void onInvalidate() {
        this.adView.destroy();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd ad) {
        this.mBannerListener.onBannerLoaded(this.adView);
        Log.d("AppLovinAdapter", "AdView was passed to MoPub.");
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int errorCode) {
        if (errorCode == 204) {
            this.mBannerListener.onBannerFailed(MoPubErrorCode.NO_FILL);
            return;
        }
        if (errorCode >= 500) {
            this.mBannerListener.onBannerFailed(MoPubErrorCode.SERVER_ERROR);
        } else if (errorCode < 0) {
            this.mBannerListener.onBannerFailed(MoPubErrorCode.INTERNAL_ERROR);
        } else {
            this.mBannerListener.onBannerFailed(MoPubErrorCode.UNSPECIFIED);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        this.mBannerListener.onLeaveApplication();
    }
}
