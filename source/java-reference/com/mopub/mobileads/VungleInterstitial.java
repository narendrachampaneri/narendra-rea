package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.vungle.publisher.EventListener;
import com.vungle.publisher.VunglePub;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class VungleInterstitial extends CustomEventInterstitial implements EventListener {
    public static final String APP_ID_KEY = "appId";
    private static final String DEFAULT_VUNGLE_APP_ID = "com.appsomniacs.da2";
    private CustomEventInterstitial.CustomEventInterstitialListener mCustomEventInterstitialListener;
    private boolean mIsLoading;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final ScheduledThreadPoolExecutor mScheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(10);
    private final VunglePub mVunglePub = VunglePub.getInstance();

    @Override // com.mopub.mobileads.CustomEventInterstitial
    protected void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Map<String, Object> localExtras, Map<String, String> serverExtras) {
        String appId;
        this.mCustomEventInterstitialListener = customEventInterstitialListener;
        if (context == null) {
            this.mCustomEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;
        }
        if (extrasAreValid(serverExtras)) {
            appId = serverExtras.get("appId");
        } else {
            appId = "com.appsomniacs.da2";
        }
        this.mVunglePub.init(context, appId);
        this.mVunglePub.setEventListeners(this);
        scheduleOnInterstitialLoaded();
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    protected void showInterstitial() {
        if (this.mVunglePub.isAdPlayable()) {
            this.mVunglePub.playAd();
        } else {
            Log.d("MoPub", "Tried to show a Vungle interstitial ad before it finished loading. Please try again.");
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    protected void onInvalidate() {
        this.mVunglePub.clearEventListeners();
        this.mScheduledThreadPoolExecutor.shutdownNow();
        this.mIsLoading = false;
    }

    private boolean extrasAreValid(Map<String, String> serverExtras) {
        return serverExtras.containsKey("appId");
    }

    private void scheduleOnInterstitialLoaded() {
        Runnable runnable = new Runnable() { // from class: com.mopub.mobileads.VungleInterstitial.1
            @Override // java.lang.Runnable
            public void run() {
                if (VungleInterstitial.this.mVunglePub.isAdPlayable()) {
                    Log.d("MoPub", "Vungle interstitial ad successfully loaded.");
                    VungleInterstitial.this.mScheduledThreadPoolExecutor.shutdownNow();
                    VungleInterstitial.this.mHandler.post(new Runnable() { // from class: com.mopub.mobileads.VungleInterstitial.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            VungleInterstitial.this.mCustomEventInterstitialListener.onInterstitialLoaded();
                        }
                    });
                    VungleInterstitial.this.mIsLoading = false;
                }
            }
        };
        if (!this.mIsLoading) {
            this.mScheduledThreadPoolExecutor.scheduleAtFixedRate(runnable, 1L, 1L, TimeUnit.SECONDS);
            this.mIsLoading = true;
        }
    }

    @Override // com.vungle.publisher.EventListener
    public void onVideoView(boolean isCompletedView, int watchedMillis, int videoDurationMillis) {
        double watchedPercent = (((double) watchedMillis) / ((double) videoDurationMillis)) * 100.0d;
        Log.d("MoPub", String.format("%.1f%% of Vungle video watched.", Double.valueOf(watchedPercent)));
    }

    @Override // com.vungle.publisher.EventListener
    public void onAdStart() {
        this.mHandler.post(new Runnable() { // from class: com.mopub.mobileads.VungleInterstitial.2
            @Override // java.lang.Runnable
            public void run() {
                Log.d("MoPub", "Showing Vungle interstitial ad.");
                VungleInterstitial.this.mCustomEventInterstitialListener.onInterstitialShown();
            }
        });
    }

    @Override // com.vungle.publisher.EventListener
    public void onAdEnd(final boolean wasCallToActionClicked) {
        this.mHandler.post(new Runnable() { // from class: com.mopub.mobileads.VungleInterstitial.3
            @Override // java.lang.Runnable
            public void run() {
                Log.d("MoPub", "Vungle interstitial ad dismissed.");
                VungleInterstitial.this.mCustomEventInterstitialListener.onInterstitialDismissed();
                if (wasCallToActionClicked) {
                    VungleInterstitial.this.mCustomEventInterstitialListener.onInterstitialClicked();
                }
            }
        });
    }

    @Override // com.vungle.publisher.EventListener
    public void onAdUnavailable(String s) {
        this.mCustomEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.NETWORK_NO_FILL);
    }

    @Override // com.vungle.publisher.EventListener
    public void onAdPlayableChanged(boolean playable) {
    }

    @Deprecated
    ScheduledThreadPoolExecutor getScheduledThreadPoolExecutor() {
        return this.mScheduledThreadPoolExecutor;
    }
}
