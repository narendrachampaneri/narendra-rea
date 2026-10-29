package com.amazon.device.ads;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"NewApi"})
class InterstitialAdActivityAdapter implements AdActivity.IAdActivityAdapter {
    private static final String LOGTAG = InterstitialAdActivityAdapter.class.getSimpleName();
    private AdController adController;
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
    private Activity activity = null;

    InterstitialAdActivityAdapter() {
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public void preOnCreate() {
        this.activity.requestWindowFeature(1);
        this.activity.getWindow().setFlags(1024, 1024);
        AndroidTargetUtils.hideActionAndStatusBars(this.activity);
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public void onCreate() {
        AndroidTargetUtils.enableHardwareAcceleration(this.activity.getWindow());
        this.adController = getAdController();
        if (this.adController == null) {
            this.logger.e("Failed to show interstitial ad due to an error in the Activity.");
            InterstitialAd.resetIsAdShowing();
            this.activity.finish();
            return;
        }
        this.adController.setAdActivity(this.activity);
        this.adController.addSDKEventListener(new InterstitialAdSDKEventListener());
        ViewGroup parent = (ViewGroup) this.adController.getView().getParent();
        if (parent != null) {
            parent.removeView(this.adController.getView());
        }
        this.activity.setContentView(this.adController.getView());
        this.adController.adShown();
    }

    AdController getAdController() {
        return AdControllerFactory.getCachedAdController();
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public void onPause() {
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public void onResume() {
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public void onStop() {
        if (this.activity.isFinishing() && this.adController != null) {
            this.adController.closeAd();
        }
    }

    Activity getActivity() {
        return this.activity;
    }

    class InterstitialAdSDKEventListener implements SDKEventListener {
        InterstitialAdSDKEventListener() {
        }

        @Override // com.amazon.device.ads.SDKEventListener
        public void onSDKEvent(SDKEvent sdkEvent, AdControlAccessor controller) {
            if (sdkEvent.getEventType().equals(SDKEvent.SDKEventType.CLOSED) && !InterstitialAdActivityAdapter.this.activity.isFinishing()) {
                InterstitialAdActivityAdapter.this.adController = null;
                InterstitialAdActivityAdapter.this.activity.finish();
            }
        }
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public boolean onBackPressed() {
        if (this.adController != null) {
            return this.adController.onBackButtonPress();
        }
        return false;
    }
}
