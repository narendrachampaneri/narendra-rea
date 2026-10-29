package com.mopub.mobileads;

import android.app.Activity;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.jirbo.adcolony.AdColony;
import com.jirbo.adcolony.AdColonyAd;
import com.jirbo.adcolony.AdColonyAdListener;
import com.jirbo.adcolony.AdColonyV4VCAd;
import com.jirbo.adcolony.AdColonyV4VCListener;
import com.jirbo.adcolony.AdColonyV4VCReward;
import com.mopub.common.BaseLifecycleListener;
import com.mopub.common.DataKeys;
import com.mopub.common.LifecycleListener;
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPubReward;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class AdColonyRewardedVideo extends CustomEventRewardedVideo {
    public static final String ALL_ZONE_IDS_KEY = "allZoneIds";
    public static final String APP_ID_KEY = "appId";
    public static final String CLIENT_OPTIONS_KEY = "clientOptions";
    private static final String DEFAULT_APP_ID = "app2ee04b82f705434aa6";
    private static final String DEFAULT_CLIENT_OPTIONS = "version=2.2.5,store:google";
    public static final String ZONE_ID_KEY = "zoneId";
    private AdColonyV4VCAd mAd;

    @Nullable
    private String mAdUnitId;
    private ScheduledFuture<?> mFuture;
    private String mZoneId;
    private static final String DEFAULT_ZONE_ID = "vza08f3dd12e7e48aaa6";
    private static final String[] DEFAULT_ALL_ZONE_IDS = {DEFAULT_ZONE_ID};
    private static boolean sInitialized = false;
    private static LifecycleListener sLifecycleListener = new BaseLifecycleListener() { // from class: com.mopub.mobileads.AdColonyRewardedVideo.1
        @Override // com.mopub.common.BaseLifecycleListener, com.mopub.common.LifecycleListener
        public void onPause(@NonNull Activity activity) {
            super.onPause(activity);
            AdColony.pause();
        }

        @Override // com.mopub.common.BaseLifecycleListener, com.mopub.common.LifecycleListener
        public void onResume(@NonNull Activity activity) {
            super.onResume(activity);
            AdColony.resume(activity);
        }
    };
    private static AdColonyListener sAdColonyListener = new AdColonyListener();
    private static WeakHashMap<AdColonyAd, String> sAdToZoneIdMap = new WeakHashMap<>();
    private boolean mIsLoading = false;
    private final ScheduledThreadPoolExecutor mScheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
    private final Handler mHandler = new Handler();

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    @Nullable
    public CustomEventRewardedVideo.CustomEventRewardedVideoListener getVideoListenerForSdk() {
        return sAdColonyListener;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    @Nullable
    public LifecycleListener getLifecycleListener() {
        return sLifecycleListener;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    @NonNull
    public String getAdNetworkId() {
        return this.mZoneId;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    protected void onInvalidate() {
        this.mScheduledThreadPoolExecutor.shutdownNow();
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    public boolean checkAndInitializeSdk(@NonNull Activity launcherActivity, @NonNull Map<String, Object> localExtras, @NonNull Map<String, String> serverExtras) throws Exception {
        boolean z = true;
        synchronized (AdColonyRewardedVideo.class) {
            if (sInitialized) {
                z = false;
            } else {
                String adColonyClientOptions = DEFAULT_CLIENT_OPTIONS;
                String adColonyAppId = DEFAULT_APP_ID;
                String[] adColonyAllZoneIds = DEFAULT_ALL_ZONE_IDS;
                if (extrasAreValid(serverExtras)) {
                    String adColonyClientOptions2 = serverExtras.get("clientOptions");
                    adColonyClientOptions = adColonyClientOptions2;
                    String adColonyAppId2 = serverExtras.get("appId");
                    adColonyAppId = adColonyAppId2;
                    adColonyAllZoneIds = extractAllZoneIds(serverExtras);
                }
                setUpGlobalSettings();
                AdColony.configure(launcherActivity, adColonyClientOptions, adColonyAppId, adColonyAllZoneIds);
                AdColony.addV4VCListener(sAdColonyListener);
                sInitialized = true;
            }
        }
        return z;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    protected void loadWithSdkInitialized(@NonNull Activity activity, @NonNull Map<String, Object> localExtras, @NonNull Map<String, String> serverExtras) throws Exception {
        this.mZoneId = DEFAULT_ZONE_ID;
        if (extrasAreValid(serverExtras)) {
            this.mZoneId = serverExtras.get("zoneId");
        }
        Object adUnitObject = localExtras.get(DataKeys.AD_UNIT_ID_KEY);
        if (adUnitObject != null && (adUnitObject instanceof String)) {
            this.mAdUnitId = (String) adUnitObject;
        }
        this.mAd = new AdColonyV4VCAd(this.mZoneId).withListener(sAdColonyListener);
        sAdToZoneIdMap.put(this.mAd, this.mZoneId);
        scheduleOnVideoReady();
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    public boolean hasVideoAvailable() {
        return (this.mAd == null || !this.mAd.isReady() || this.mAd.getAvailableViews() == 0) ? false : true;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    public void showVideo() {
        if (hasVideoAvailable()) {
            boolean withConfirmationDialog = getConfirmationDialogFromSettings();
            boolean withResultsDialog = getResultsDialogFromSettings();
            this.mAd.withConfirmationDialog(withConfirmationDialog).withResultsDialog(withResultsDialog).show();
            return;
        }
        MoPubRewardedVideoManager.onRewardedVideoPlaybackError(AdColonyRewardedVideo.class, this.mZoneId, MoPubErrorCode.VIDEO_PLAYBACK_ERROR);
    }

    private boolean extrasAreValid(Map<String, String> extras) {
        return extras.containsKey("clientOptions") && extras.containsKey("appId") && extras.containsKey("allZoneIds") && extras.containsKey("zoneId");
    }

    private String[] extractAllZoneIds(Map<String, String> serverExtras) {
        String[] result = Json.jsonArrayToStringArray(serverExtras.get("allZoneIds"));
        if (result.length == 0) {
            return new String[]{""};
        }
        return result;
    }

    private void setUpGlobalSettings() {
        AdColonyGlobalMediationSettings globalMediationSettings = (AdColonyGlobalMediationSettings) MoPubRewardedVideoManager.getGlobalMediationSettings(AdColonyGlobalMediationSettings.class);
        if (globalMediationSettings != null) {
            if (globalMediationSettings.getCustomId() != null) {
                AdColony.setCustomID(globalMediationSettings.getCustomId());
            }
            if (globalMediationSettings.getDeviceId() != null) {
                AdColony.setDeviceID(globalMediationSettings.getDeviceId());
            }
        }
    }

    private boolean getConfirmationDialogFromSettings() {
        AdColonyInstanceMediationSettings settings = (AdColonyInstanceMediationSettings) MoPubRewardedVideoManager.getInstanceMediationSettings(AdColonyInstanceMediationSettings.class, this.mAdUnitId);
        return settings != null && settings.withConfirmationDialog();
    }

    private boolean getResultsDialogFromSettings() {
        AdColonyInstanceMediationSettings settings = (AdColonyInstanceMediationSettings) MoPubRewardedVideoManager.getInstanceMediationSettings(AdColonyInstanceMediationSettings.class, this.mAdUnitId);
        return settings != null && settings.withResultsDialog();
    }

    private void scheduleOnVideoReady() {
        Runnable runnable = new Runnable() { // from class: com.mopub.mobileads.AdColonyRewardedVideo.2
            @Override // java.lang.Runnable
            public void run() {
                if (AdColonyRewardedVideo.this.mAd.isReady()) {
                    AdColonyRewardedVideo.this.mIsLoading = false;
                    AdColonyRewardedVideo.this.mScheduledThreadPoolExecutor.shutdownNow();
                    AdColonyRewardedVideo.this.mHandler.post(new Runnable() { // from class: com.mopub.mobileads.AdColonyRewardedVideo.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (AdColonyRewardedVideo.this.mAd.getAvailableViews() > 0) {
                                MoPubRewardedVideoManager.onRewardedVideoLoadSuccess(AdColonyRewardedVideo.class, AdColonyRewardedVideo.this.mZoneId);
                            } else {
                                MoPubRewardedVideoManager.onRewardedVideoLoadFailure(AdColonyRewardedVideo.class, AdColonyRewardedVideo.this.mZoneId, MoPubErrorCode.NETWORK_NO_FILL);
                            }
                        }
                    });
                }
            }
        };
        if (!this.mIsLoading) {
            this.mScheduledThreadPoolExecutor.scheduleAtFixedRate(runnable, 1L, 1L, TimeUnit.SECONDS);
            this.mIsLoading = true;
        }
    }

    private static class AdColonyListener implements AdColonyAdListener, AdColonyV4VCListener, CustomEventRewardedVideo.CustomEventRewardedVideoListener {
        private AdColonyListener() {
        }

        @Override // com.jirbo.adcolony.AdColonyAdListener
        public void onAdColonyAdAttemptFinished(AdColonyAd adColonyAd) {
            String zoneId = (String) AdColonyRewardedVideo.sAdToZoneIdMap.get(adColonyAd);
            MoPubRewardedVideoManager.onRewardedVideoClosed(AdColonyRewardedVideo.class, zoneId);
            if (adColonyAd.notShown()) {
                if (adColonyAd.canceled() || adColonyAd.skipped()) {
                    MoPubLog.d("User canceled ad playback");
                    return;
                }
                MoPubErrorCode reason = MoPubErrorCode.VIDEO_DOWNLOAD_ERROR;
                if (adColonyAd.noFill()) {
                    reason = MoPubErrorCode.NETWORK_NO_FILL;
                }
                MoPubRewardedVideoManager.onRewardedVideoLoadFailure(AdColonyRewardedVideo.class, zoneId, reason);
            }
        }

        @Override // com.jirbo.adcolony.AdColonyAdListener
        public void onAdColonyAdStarted(AdColonyAd adColonyAd) {
            MoPubRewardedVideoManager.onRewardedVideoStarted(AdColonyRewardedVideo.class, (String) AdColonyRewardedVideo.sAdToZoneIdMap.get(adColonyAd));
        }

        @Override // com.jirbo.adcolony.AdColonyV4VCListener
        public void onAdColonyV4VCReward(AdColonyV4VCReward adColonyV4VCReward) {
            MoPubReward reward;
            if (adColonyV4VCReward.success()) {
                reward = MoPubReward.success(adColonyV4VCReward.name(), adColonyV4VCReward.amount());
            } else {
                reward = MoPubReward.failure();
            }
            MoPubRewardedVideoManager.onRewardedVideoCompleted(AdColonyRewardedVideo.class, null, reward);
        }
    }

    public static final class AdColonyGlobalMediationSettings implements MediationSettings {

        @Nullable
        private final String mCustomId;

        @Nullable
        private final String mDeviceId;

        public AdColonyGlobalMediationSettings(@Nullable String customId, @Nullable String deviceId) {
            this.mCustomId = customId;
            this.mDeviceId = deviceId;
        }

        @Nullable
        public String getCustomId() {
            return this.mCustomId;
        }

        @Nullable
        public String getDeviceId() {
            return this.mDeviceId;
        }
    }

    public static final class AdColonyInstanceMediationSettings implements MediationSettings {
        private final boolean mWithConfirmationDialog;
        private final boolean mWithResultsDialog;

        public AdColonyInstanceMediationSettings(boolean withConfirmationDialog, boolean withResultsDialog) {
            this.mWithConfirmationDialog = withConfirmationDialog;
            this.mWithResultsDialog = withResultsDialog;
        }

        public boolean withConfirmationDialog() {
            return this.mWithConfirmationDialog;
        }

        public boolean withResultsDialog() {
            return this.mWithResultsDialog;
        }
    }
}
