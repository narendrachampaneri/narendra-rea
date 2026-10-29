package com.mopub.mobileads;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.ChartboostDelegate;
import com.chartboost.sdk.Model.CBError;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public class ChartboostShared {
    public static final String APP_ID_KEY = "appId";
    public static final String APP_SIGNATURE_KEY = "appSignature";
    public static final String LOCATION_DEFAULT = "Default";
    public static final String LOCATION_KEY = "location";

    @Nullable
    private static String mAppId;

    @Nullable
    private static String mAppSignature;
    private static volatile ChartboostSingletonDelegate sDelegate = new ChartboostSingletonDelegate();

    public static synchronized boolean initializeSdk(@NonNull Activity launcherActivity, @NonNull Map<String, String> serverExtras) {
        boolean z = false;
        synchronized (ChartboostShared.class) {
            Preconditions.checkNotNull(launcherActivity);
            Preconditions.checkNotNull(serverExtras);
            if (!serverExtras.containsKey("appId")) {
                throw new IllegalStateException("Chartboost rewarded video initialization failed due to missing application ID.");
            }
            if (!serverExtras.containsKey(APP_SIGNATURE_KEY)) {
                throw new IllegalStateException("Chartboost rewarded video initialization failed due to missing application signature.");
            }
            String appId = serverExtras.get("appId");
            String appSignature = serverExtras.get(APP_SIGNATURE_KEY);
            if (!appId.equals(mAppId) || !appSignature.equals(mAppSignature)) {
                mAppId = appId;
                mAppSignature = appSignature;
                Chartboost.startWithAppId(launcherActivity, mAppId, mAppSignature);
                Chartboost.setImpressionsUseActivities(false);
                Chartboost.setFramework(Chartboost.CBFramework.CBFrameworkMoPub);
                Chartboost.setDelegate(sDelegate);
                Chartboost.setShouldRequestInterstitialsInFirstSession(false);
                Chartboost.setAutoCacheAds(false);
                Chartboost.setShouldDisplayLoadingViewForMoreApps(false);
                z = true;
            }
        }
        return z;
    }

    @NonNull
    public static ChartboostSingletonDelegate getDelegate() {
        return sDelegate;
    }

    public static class ChartboostSingletonDelegate extends ChartboostDelegate implements CustomEventRewardedVideo.CustomEventRewardedVideoListener {
        private static final CustomEventInterstitial.CustomEventInterstitialListener NULL_LISTENER = new CustomEventInterstitial.CustomEventInterstitialListener() { // from class: com.mopub.mobileads.ChartboostShared.ChartboostSingletonDelegate.1
            @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
            public void onInterstitialLoaded() {
            }

            @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
            public void onInterstitialFailed(MoPubErrorCode errorCode) {
            }

            @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
            public void onInterstitialShown() {
            }

            @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
            public void onInterstitialClicked() {
            }

            @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
            public void onLeaveApplication() {
            }

            @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
            public void onInterstitialDismissed() {
            }
        };
        private Map<String, CustomEventInterstitial.CustomEventInterstitialListener> mInterstitialListenersForLocation = Collections.synchronizedMap(new TreeMap());
        private Set<String> mRewardedVideoLocationsToLoad = Collections.synchronizedSet(new TreeSet());

        public void registerInterstitialListener(@NonNull String location, @NonNull CustomEventInterstitial.CustomEventInterstitialListener interstitialListener) {
            Preconditions.checkNotNull(location);
            Preconditions.checkNotNull(interstitialListener);
            this.mInterstitialListenersForLocation.put(location, interstitialListener);
        }

        public void unregisterInterstitialListener(@NonNull String location) {
            Preconditions.checkNotNull(location);
            this.mInterstitialListenersForLocation.remove(location);
        }

        public void registerRewardedVideoLocation(@NonNull String location) {
            Preconditions.checkNotNull(location);
            this.mRewardedVideoLocationsToLoad.add(location);
        }

        public void unregisterRewardedVideoLocation(@NonNull String location) {
            Preconditions.checkNotNull(location);
            this.mRewardedVideoLocationsToLoad.remove(location);
        }

        @NonNull
        public CustomEventInterstitial.CustomEventInterstitialListener getInterstitialListener(@NonNull String location) {
            CustomEventInterstitial.CustomEventInterstitialListener listener = this.mInterstitialListenersForLocation.get(location);
            return listener != null ? listener : NULL_LISTENER;
        }

        public boolean hasInterstitialLocation(@NonNull String location) {
            return this.mInterstitialListenersForLocation.containsKey(location);
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didCacheInterstitial(String location) {
            MoPubLog.d("Chartboost interstitial loaded successfully.");
            getInterstitialListener(location).onInterstitialLoaded();
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didFailToLoadInterstitial(String location, CBError.CBImpressionError error) {
            String suffix = error != null ? "Error: " + error.name() : "";
            Log.d("MoPub", "Chartboost interstitial ad failed to load." + suffix);
            getInterstitialListener(location).onInterstitialFailed(MoPubErrorCode.NETWORK_NO_FILL);
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didDismissInterstitial(String location) {
            MoPubLog.d("Chartboost interstitial ad dismissed.");
            getInterstitialListener(location).onInterstitialDismissed();
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didCloseInterstitial(String location) {
            MoPubLog.d("Chartboost interstitial ad closed.");
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didClickInterstitial(String location) {
            MoPubLog.d("Chartboost interstitial ad clicked.");
            getInterstitialListener(location).onInterstitialClicked();
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didDisplayInterstitial(String location) {
            MoPubLog.d("Chartboost interstitial ad shown.");
            getInterstitialListener(location).onInterstitialShown();
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didCacheRewardedVideo(String location) {
            super.didCacheRewardedVideo(location);
            if (this.mRewardedVideoLocationsToLoad.contains(location)) {
                MoPubLog.d("Chartboost rewarded video cached for location " + location + ".");
                MoPubRewardedVideoManager.onRewardedVideoLoadSuccess(ChartboostRewardedVideo.class, location);
                this.mRewardedVideoLocationsToLoad.remove(location);
            }
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didFailToLoadRewardedVideo(String location, CBError.CBImpressionError error) {
            super.didFailToLoadRewardedVideo(location, error);
            String suffix = error != null ? " with error: " + error.name() : "";
            if (this.mRewardedVideoLocationsToLoad.contains(location)) {
                MoPubErrorCode errorCode = MoPubErrorCode.VIDEO_DOWNLOAD_ERROR;
                MoPubLog.d("Chartboost rewarded video cache failed for location " + location + suffix);
                if (CBError.CBImpressionError.INVALID_LOCATION.equals(error)) {
                    errorCode = MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR;
                }
                MoPubRewardedVideoManager.onRewardedVideoLoadFailure(ChartboostRewardedVideo.class, location, errorCode);
                this.mRewardedVideoLocationsToLoad.remove(location);
            }
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didDismissRewardedVideo(String location) {
            super.didDismissRewardedVideo(location);
            MoPubRewardedVideoManager.onRewardedVideoClosed(ChartboostRewardedVideo.class, location);
            MoPubLog.d("Chartboost rewarded video dismissed for location " + location + ".");
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didCloseRewardedVideo(String location) {
            super.didCloseRewardedVideo(location);
            MoPubLog.d("Chartboost rewarded video closed for location " + location + ".");
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didClickRewardedVideo(String location) {
            super.didClickRewardedVideo(location);
            MoPubRewardedVideoManager.onRewardedVideoClicked(ChartboostRewardedVideo.class, location);
            MoPubLog.d("Chartboost rewarded video clicked for location " + location + ".");
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didCompleteRewardedVideo(String location, int reward) {
            super.didCompleteRewardedVideo(location, reward);
            MoPubLog.d("Chartboost rewarded video completed for location " + location + " with reward amount " + reward);
            MoPubRewardedVideoManager.onRewardedVideoCompleted(ChartboostRewardedVideo.class, location, MoPubReward.success("", reward));
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didDisplayRewardedVideo(String location) {
            super.didDisplayRewardedVideo(location);
            MoPubLog.d("Chartboost rewarded video displayed for location " + location + ".");
            MoPubRewardedVideoManager.onRewardedVideoStarted(ChartboostRewardedVideo.class, location);
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public boolean shouldRequestMoreApps(String location) {
            return false;
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public boolean shouldDisplayMoreApps(String location) {
            return false;
        }
    }

    @VisibleForTesting
    @Deprecated
    static void reset() {
        sDelegate = new ChartboostSingletonDelegate();
        mAppId = null;
        mAppSignature = null;
    }
}
