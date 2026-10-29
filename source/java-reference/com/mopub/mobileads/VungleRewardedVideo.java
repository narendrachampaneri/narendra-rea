package com.mopub.mobileads;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.BaseLifecycleListener;
import com.mopub.common.DataKeys;
import com.mopub.common.LifecycleListener;
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPubReward;
import com.mopub.common.logging.MoPubLog;
import com.vungle.publisher.AdConfig;
import com.vungle.publisher.EventListener;
import com.vungle.publisher.VunglePub;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class VungleRewardedVideo extends CustomEventRewardedVideo {
    public static final String APP_ID_KEY = "appId";
    private static final String DEFAULT_VUNGLE_APP_ID = "com.appsomniacs.da2";
    public static final String VUNGLE_AD_NETWORK_CONSTANT = "vngl_id";
    private static boolean sInitialized;
    private static VunglePub sVunglePub;
    private String mAdUnitId;
    private static VungleRewardedVideoListener sVungleListener = new VungleRewardedVideoListener();
    private static final LifecycleListener sLifecycleListener = new BaseLifecycleListener() { // from class: com.mopub.mobileads.VungleRewardedVideo.1
        @Override // com.mopub.common.BaseLifecycleListener, com.mopub.common.LifecycleListener
        public void onPause(@NonNull Activity activity) {
            super.onPause(activity);
            VungleRewardedVideo.sVunglePub.onPause();
        }

        @Override // com.mopub.common.BaseLifecycleListener, com.mopub.common.LifecycleListener
        public void onResume(@NonNull Activity activity) {
            super.onResume(activity);
            VungleRewardedVideo.sVunglePub.onResume();
        }
    };
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final ScheduledThreadPoolExecutor mScheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
    private boolean mIsLoading = false;

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    @Nullable
    public CustomEventRewardedVideo.CustomEventRewardedVideoListener getVideoListenerForSdk() {
        return sVungleListener;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    @Nullable
    public LifecycleListener getLifecycleListener() {
        return sLifecycleListener;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    @NonNull
    protected String getAdNetworkId() {
        return VUNGLE_AD_NETWORK_CONSTANT;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    protected boolean checkAndInitializeSdk(@NonNull Activity launcherActivity, @NonNull Map<String, Object> localExtras, @NonNull Map<String, String> serverExtras) throws Exception {
        boolean z = true;
        synchronized (VungleRewardedVideo.class) {
            if (sInitialized) {
                z = false;
            } else {
                sVunglePub = VunglePub.getInstance();
                sInitialized = true;
            }
        }
        return z;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    protected void loadWithSdkInitialized(@NonNull Activity activity, @NonNull Map<String, Object> localExtras, @NonNull Map<String, String> serverExtras) throws Exception {
        String appId = serverExtras.containsKey("appId") ? serverExtras.get("appId") : "com.appsomniacs.da2";
        sVunglePub.init(activity, appId);
        sVunglePub.setEventListeners(sVungleListener);
        Object adUnitObject = localExtras.get(DataKeys.AD_UNIT_ID_KEY);
        if (adUnitObject instanceof String) {
            this.mAdUnitId = (String) adUnitObject;
        }
        scheduleOnVideoLoaded();
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    protected boolean hasVideoAvailable() {
        return sVunglePub.isAdPlayable();
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    protected void showVideo() {
        AdConfig adConfig = new AdConfig();
        adConfig.setIncentivized(true);
        setUpMediationSettingsForRequest(adConfig);
        sVunglePub.playAd(adConfig);
    }

    private void setUpMediationSettingsForRequest(AdConfig adConfig) {
        VungleMediationSettings globalMediationSettings = (VungleMediationSettings) MoPubRewardedVideoManager.getGlobalMediationSettings(VungleMediationSettings.class);
        VungleMediationSettings instanceMediationSettings = (VungleMediationSettings) MoPubRewardedVideoManager.getInstanceMediationSettings(VungleMediationSettings.class, this.mAdUnitId);
        if (instanceMediationSettings != null) {
            modifyAdConfig(adConfig, instanceMediationSettings);
        } else if (globalMediationSettings != null) {
            modifyAdConfig(adConfig, globalMediationSettings);
        }
    }

    private void modifyAdConfig(AdConfig adConfig, VungleMediationSettings mediationSettings) {
        if (!TextUtils.isEmpty(mediationSettings.body)) {
            adConfig.setIncentivizedCancelDialogBodyText(mediationSettings.body);
        }
        if (!TextUtils.isEmpty(mediationSettings.closeButtonText)) {
            adConfig.setIncentivizedCancelDialogCloseButtonText(mediationSettings.closeButtonText);
        }
        if (!TextUtils.isEmpty(mediationSettings.keepWatchingButtonText)) {
            adConfig.setIncentivizedCancelDialogKeepWatchingButtonText(mediationSettings.keepWatchingButtonText);
        }
        if (!TextUtils.isEmpty(mediationSettings.title)) {
            adConfig.setIncentivizedCancelDialogTitle(mediationSettings.title);
        }
        if (TextUtils.isEmpty(mediationSettings.userId)) {
            return;
        }
        adConfig.setIncentivizedUserId(mediationSettings.userId);
    }

    private void scheduleOnVideoLoaded() {
        Runnable runnable = new Runnable() { // from class: com.mopub.mobileads.VungleRewardedVideo.2
            @Override // java.lang.Runnable
            public void run() {
                if (VungleRewardedVideo.sVunglePub.isAdPlayable()) {
                    MoPubLog.d("Vungle interstitial ad successfully loaded.");
                    VungleRewardedVideo.this.mScheduledThreadPoolExecutor.shutdownNow();
                    VungleRewardedVideo.this.mHandler.post(new Runnable() { // from class: com.mopub.mobileads.VungleRewardedVideo.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MoPubRewardedVideoManager.onRewardedVideoLoadSuccess(VungleRewardedVideo.class, VungleRewardedVideo.VUNGLE_AD_NETWORK_CONSTANT);
                        }
                    });
                    VungleRewardedVideo.this.mIsLoading = false;
                }
            }
        };
        if (!this.mIsLoading) {
            this.mScheduledThreadPoolExecutor.scheduleAtFixedRate(runnable, 1L, 1L, TimeUnit.SECONDS);
            this.mIsLoading = true;
        }
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    protected void onInvalidate() {
        this.mScheduledThreadPoolExecutor.shutdownNow();
    }

    private static class VungleRewardedVideoListener implements EventListener, CustomEventRewardedVideo.CustomEventRewardedVideoListener {
        private VungleRewardedVideoListener() {
        }

        @Override // com.vungle.publisher.EventListener
        public void onAdEnd(boolean wasCallToActionClicked) {
            if (wasCallToActionClicked) {
                MoPubRewardedVideoManager.onRewardedVideoClicked(VungleRewardedVideo.class, VungleRewardedVideo.VUNGLE_AD_NETWORK_CONSTANT);
            }
            MoPubRewardedVideoManager.onRewardedVideoClosed(VungleRewardedVideo.class, VungleRewardedVideo.VUNGLE_AD_NETWORK_CONSTANT);
        }

        @Override // com.vungle.publisher.EventListener
        public void onAdStart() {
            MoPubRewardedVideoManager.onRewardedVideoStarted(VungleRewardedVideo.class, VungleRewardedVideo.VUNGLE_AD_NETWORK_CONSTANT);
        }

        @Override // com.vungle.publisher.EventListener
        public void onAdUnavailable(String s) {
            MoPubRewardedVideoManager.onRewardedVideoLoadFailure(VungleRewardedVideo.class, VungleRewardedVideo.VUNGLE_AD_NETWORK_CONSTANT, MoPubErrorCode.NETWORK_NO_FILL);
        }

        @Override // com.vungle.publisher.EventListener
        public void onAdPlayableChanged(boolean playable) {
        }

        @Override // com.vungle.publisher.EventListener
        public void onVideoView(boolean isCompletedView, int watchedMillis, int videoMillis) {
            MoPubLog.d(String.format(Locale.US, "%.1f%% of Vungle video watched.", Double.valueOf((((double) watchedMillis) / ((double) videoMillis)) * 100.0d)));
            if (isCompletedView) {
                MoPubRewardedVideoManager.onRewardedVideoCompleted(VungleRewardedVideo.class, VungleRewardedVideo.VUNGLE_AD_NETWORK_CONSTANT, MoPubReward.success("", MoPubReward.NO_REWARD_AMOUNT));
            }
        }
    }

    public static class VungleMediationSettings implements MediationSettings {

        @Nullable
        private final String body;

        @Nullable
        private final String closeButtonText;

        @Nullable
        private final String keepWatchingButtonText;

        @Nullable
        private final String title;

        @Nullable
        private final String userId;

        public static class Builder {

            @Nullable
            private String body;

            @Nullable
            private String closeButtonText;

            @Nullable
            private String keepWatchingButtonText;

            @Nullable
            private String title;

            @Nullable
            private String userId;

            public Builder withUserId(@NonNull String userId) {
                this.userId = userId;
                return this;
            }

            public Builder withCancelDialogTitle(@NonNull String title) {
                this.title = title;
                return this;
            }

            public Builder withCancelDialogBody(@NonNull String body) {
                this.body = body;
                return this;
            }

            public Builder withCancelDialogCloseButton(@NonNull String buttonText) {
                this.closeButtonText = buttonText;
                return this;
            }

            public Builder withCancelDialogKeepWatchingButton(@NonNull String buttonText) {
                this.keepWatchingButtonText = buttonText;
                return this;
            }

            public VungleMediationSettings build() {
                return new VungleMediationSettings(this);
            }
        }

        private VungleMediationSettings(@NonNull Builder builder) {
            this.userId = builder.userId;
            this.title = builder.title;
            this.body = builder.body;
            this.closeButtonText = builder.closeButtonText;
            this.keepWatchingButtonText = builder.keepWatchingButtonText;
        }
    }
}
