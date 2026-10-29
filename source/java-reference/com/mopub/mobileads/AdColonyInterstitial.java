package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.jirbo.adcolony.AdColony;
import com.jirbo.adcolony.AdColonyAd;
import com.jirbo.adcolony.AdColonyAdListener;
import com.jirbo.adcolony.AdColonyVideoAd;
import com.mopub.common.util.Json;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class AdColonyInterstitial extends CustomEventInterstitial implements AdColonyAdListener {
    public static final String ALL_ZONE_IDS_KEY = "allZoneIds";
    public static final String APP_ID_KEY = "appId";
    public static final String CLIENT_OPTIONS_KEY = "clientOptions";
    private static final String DEFAULT_APP_ID = "app2ee04b82f705434aa6";
    private static final String DEFAULT_CLIENT_OPTIONS = "version=2.2.5,store:google";
    public static final String ZONE_ID_KEY = "zoneId";
    private AdColonyVideoAd mAdColonyVideoAd;
    private CustomEventInterstitial.CustomEventInterstitialListener mCustomEventInterstitialListener;
    private boolean mIsLoading;
    private static final String DEFAULT_ZONE_ID = "vza08f3dd12e7e48aaa6";
    private static final String[] DEFAULT_ALL_ZONE_IDS = {DEFAULT_ZONE_ID};
    private static boolean isAdColonyConfigured = false;
    private final ScheduledThreadPoolExecutor mScheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
    private final Handler mHandler = new Handler();

    @Override // com.mopub.mobileads.CustomEventInterstitial
    protected void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Map<String, Object> localExtras, Map<String, String> serverExtras) {
        if (!(context instanceof Activity)) {
            customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        String clientOptions = DEFAULT_CLIENT_OPTIONS;
        String appId = DEFAULT_APP_ID;
        String[] allZoneIds = DEFAULT_ALL_ZONE_IDS;
        String zoneId = DEFAULT_ZONE_ID;
        this.mCustomEventInterstitialListener = customEventInterstitialListener;
        if (extrasAreValid(serverExtras)) {
            String clientOptions2 = serverExtras.get("clientOptions");
            clientOptions = clientOptions2;
            String appId2 = serverExtras.get("appId");
            appId = appId2;
            allZoneIds = extractAllZoneIds(serverExtras);
            String zoneId2 = serverExtras.get("zoneId");
            zoneId = zoneId2;
        }
        if (!isAdColonyConfigured) {
            AdColony.configure((Activity) context, clientOptions, appId, allZoneIds);
            isAdColonyConfigured = true;
        }
        this.mAdColonyVideoAd = new AdColonyVideoAd(zoneId);
        this.mAdColonyVideoAd.withListener((AdColonyAdListener) this);
        scheduleOnInterstitialLoaded();
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    protected void showInterstitial() {
        if (this.mAdColonyVideoAd.isReady()) {
            this.mAdColonyVideoAd.show();
        } else {
            Log.d("MoPub", "Tried to show a AdColony interstitial ad before it finished loading. Please try again.");
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    protected void onInvalidate() {
        if (this.mAdColonyVideoAd != null) {
            this.mAdColonyVideoAd.withListener((AdColonyAdListener) null);
        }
        this.mScheduledThreadPoolExecutor.shutdownNow();
        this.mIsLoading = false;
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

    private void scheduleOnInterstitialLoaded() {
        Runnable runnable = new Runnable() { // from class: com.mopub.mobileads.AdColonyInterstitial.1
            @Override // java.lang.Runnable
            public void run() {
                if (AdColonyInterstitial.this.mAdColonyVideoAd.isReady()) {
                    Log.d("MoPub", "AdColony interstitial ad successfully loaded.");
                    AdColonyInterstitial.this.mIsLoading = false;
                    AdColonyInterstitial.this.mScheduledThreadPoolExecutor.shutdownNow();
                    AdColonyInterstitial.this.mHandler.post(new Runnable() { // from class: com.mopub.mobileads.AdColonyInterstitial.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AdColonyInterstitial.this.mCustomEventInterstitialListener.onInterstitialLoaded();
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

    @Override // com.jirbo.adcolony.AdColonyAdListener
    public void onAdColonyAdStarted(AdColonyAd adColonyAd) {
        Log.d("MoPub", "AdColony interstitial ad shown.");
        this.mHandler.post(new Runnable() { // from class: com.mopub.mobileads.AdColonyInterstitial.2
            @Override // java.lang.Runnable
            public void run() {
                AdColonyInterstitial.this.mCustomEventInterstitialListener.onInterstitialShown();
            }
        });
    }

    @Override // com.jirbo.adcolony.AdColonyAdListener
    public void onAdColonyAdAttemptFinished(AdColonyAd adColonyAd) {
        Log.d("MoPub", "AdColony interstitial ad dismissed.");
        this.mHandler.post(new Runnable() { // from class: com.mopub.mobileads.AdColonyInterstitial.3
            @Override // java.lang.Runnable
            public void run() {
                AdColonyInterstitial.this.mCustomEventInterstitialListener.onInterstitialDismissed();
            }
        });
    }

    @Deprecated
    ScheduledThreadPoolExecutor getScheduledThreadPoolExecutor() {
        return this.mScheduledThreadPoolExecutor;
    }

    @Deprecated
    void resetAdColonyConfigured() {
        isAdColonyConfigured = false;
    }
}
