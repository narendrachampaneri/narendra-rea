package com.mopub.mobileads;

import com.mopub.common.CacheService;
import com.mopub.common.DataKeys;
import com.mopub.mobileads.factories.VastManagerFactory;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class VastVideoInterstitial extends ResponseBodyInterstitial implements VastManager.VastManagerListener {
    private CustomEventInterstitial.CustomEventInterstitialListener mCustomEventInterstitialListener;
    private VastManager mVastManager;
    private String mVastResponse;
    private VastVideoConfig mVastVideoConfig;

    VastVideoInterstitial() {
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void extractExtras(Map<String, String> serverExtras) {
        this.mVastResponse = serverExtras.get(DataKeys.HTML_RESPONSE_BODY_KEY);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void preRenderHtml(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        this.mCustomEventInterstitialListener = customEventInterstitialListener;
        if (!CacheService.initializeDiskCache(this.mContext)) {
            this.mCustomEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.VIDEO_CACHE_ERROR);
        } else {
            this.mVastManager = VastManagerFactory.create(this.mContext);
            this.mVastManager.prepareVastVideoConfiguration(this.mVastResponse, this, this.mContext);
        }
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MraidVideoPlayerActivity.startVast(this.mContext, this.mVastVideoConfig, this.mBroadcastIdentifier);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        if (this.mVastManager != null) {
            this.mVastManager.cancel();
        }
        super.onInvalidate();
    }

    @Override // com.mopub.mobileads.VastManager.VastManagerListener
    public void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig) {
        if (vastVideoConfig == null) {
            this.mCustomEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.VIDEO_DOWNLOAD_ERROR);
        } else {
            this.mVastVideoConfig = vastVideoConfig;
            this.mCustomEventInterstitialListener.onInterstitialLoaded();
        }
    }

    @Deprecated
    String getVastResponse() {
        return this.mVastResponse;
    }

    @Deprecated
    void setVastManager(VastManager vastManager) {
        this.mVastManager = vastManager;
    }
}
