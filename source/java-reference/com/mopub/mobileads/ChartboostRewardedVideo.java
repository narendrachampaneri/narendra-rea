package com.mopub.mobileads;

import android.app.Activity;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.chartboost.sdk.Chartboost;
import com.mopub.common.DataKeys;
import com.mopub.common.LifecycleListener;
import com.mopub.common.MediationSettings;
import com.mopub.common.logging.MoPubLog;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ChartboostRewardedVideo extends CustomEventRewardedVideo {

    @NonNull
    private static final LifecycleListener sLifecycleListener = new ChartboostLifecycleListener();

    @NonNull
    private String mLocation = "Default";

    @NonNull
    private final Handler mHandler = new Handler();

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    @NonNull
    public CustomEventRewardedVideo.CustomEventRewardedVideoListener getVideoListenerForSdk() {
        return ChartboostShared.getDelegate();
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    @NonNull
    public LifecycleListener getLifecycleListener() {
        return sLifecycleListener;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    @NonNull
    public String getAdNetworkId() {
        return this.mLocation;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    public boolean checkAndInitializeSdk(@NonNull Activity launcherActivity, @NonNull Map<String, Object> localExtras, @NonNull Map<String, String> serverExtras) throws Exception {
        ChartboostShared.initializeSdk(launcherActivity, serverExtras);
        return true;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    protected void loadWithSdkInitialized(@NonNull Activity activity, @NonNull Map<String, Object> localExtras, @NonNull Map<String, String> serverExtras) throws Exception {
        if (serverExtras.containsKey("location")) {
            String location = serverExtras.get("location");
            if (TextUtils.isEmpty(location)) {
                location = this.mLocation;
            }
            this.mLocation = location;
        }
        ChartboostShared.getDelegate().registerRewardedVideoLocation(this.mLocation);
        setUpMediationSettingsForRequest((String) localExtras.get(DataKeys.AD_UNIT_ID_KEY));
        this.mHandler.post(new Runnable() { // from class: com.mopub.mobileads.ChartboostRewardedVideo.1
            @Override // java.lang.Runnable
            public void run() {
                if (Chartboost.hasRewardedVideo(ChartboostRewardedVideo.this.mLocation)) {
                    ChartboostShared.getDelegate().didCacheRewardedVideo(ChartboostRewardedVideo.this.mLocation);
                } else {
                    Chartboost.cacheRewardedVideo(ChartboostRewardedVideo.this.mLocation);
                }
            }
        });
    }

    private void setUpMediationSettingsForRequest(String moPubId) {
        ChartboostMediationSettings globalSettings = (ChartboostMediationSettings) MoPubRewardedVideoManager.getGlobalMediationSettings(ChartboostMediationSettings.class);
        ChartboostMediationSettings instanceSettings = (ChartboostMediationSettings) MoPubRewardedVideoManager.getInstanceMediationSettings(ChartboostMediationSettings.class, moPubId);
        if (instanceSettings != null) {
            Chartboost.setCustomId(instanceSettings.getCustomId());
        } else if (globalSettings != null) {
            Chartboost.setCustomId(globalSettings.getCustomId());
        }
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    public boolean hasVideoAvailable() {
        return Chartboost.hasRewardedVideo(this.mLocation);
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    public void showVideo() {
        if (hasVideoAvailable()) {
            Chartboost.showRewardedVideo(this.mLocation);
        } else {
            MoPubLog.d("Attempted to show Chartboost rewarded video before it was available.");
        }
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    protected void onInvalidate() {
        ChartboostShared.getDelegate().unregisterRewardedVideoLocation(this.mLocation);
    }

    private static final class ChartboostLifecycleListener implements LifecycleListener {
        private ChartboostLifecycleListener() {
        }

        @Override // com.mopub.common.LifecycleListener
        public void onCreate(@NonNull Activity activity) {
            Chartboost.onCreate(activity);
        }

        @Override // com.mopub.common.LifecycleListener
        public void onStart(@NonNull Activity activity) {
            Chartboost.onStart(activity);
        }

        @Override // com.mopub.common.LifecycleListener
        public void onPause(@NonNull Activity activity) {
            Chartboost.onPause(activity);
        }

        @Override // com.mopub.common.LifecycleListener
        public void onResume(@NonNull Activity activity) {
            Chartboost.onResume(activity);
        }

        @Override // com.mopub.common.LifecycleListener
        public void onRestart(@NonNull Activity activity) {
        }

        @Override // com.mopub.common.LifecycleListener
        public void onStop(@NonNull Activity activity) {
            Chartboost.onStop(activity);
        }

        @Override // com.mopub.common.LifecycleListener
        public void onDestroy(@NonNull Activity activity) {
            Chartboost.onDestroy(activity);
        }

        @Override // com.mopub.common.LifecycleListener
        public void onBackPressed(@NonNull Activity activity) {
            Chartboost.onBackPressed();
        }
    }

    public static final class ChartboostMediationSettings implements MediationSettings {

        @NonNull
        private final String mCustomId;

        public ChartboostMediationSettings(@NonNull String customId) {
            this.mCustomId = customId;
        }

        @NonNull
        public String getCustomId() {
            return this.mCustomId;
        }
    }
}
