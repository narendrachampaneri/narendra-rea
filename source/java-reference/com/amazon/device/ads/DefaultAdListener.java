package com.amazon.device.ads;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public class DefaultAdListener implements ExtendedAdListener {
    final String LOGTAG;
    private final MobileAdsLogger logger;

    public DefaultAdListener() {
        this(DefaultAdListener.class.getSimpleName());
    }

    DefaultAdListener(String logTag) {
        this.LOGTAG = logTag;
        this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(this.LOGTAG);
    }

    MobileAdsLogger getLogger() {
        return this.logger;
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdLoaded(Ad ad, AdProperties adProperties) {
        this.logger.d("Default ad listener called - AdLoaded.");
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdFailedToLoad(Ad ad, AdError error) {
        this.logger.d("Default ad listener called - Ad Failed to Load. Error code: %s, Error Message: %s", error.getCode(), error.getMessage());
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdExpanded(Ad ad) {
        this.logger.d("Default ad listener called - Ad Will Expand.");
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdCollapsed(Ad ad) {
        this.logger.d("Default ad listener called - Ad Collapsed.");
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdDismissed(Ad ad) {
        this.logger.d("Default ad listener called - Ad Dismissed.");
    }

    @Override // com.amazon.device.ads.ExtendedAdListener
    public void onAdResized(Ad ad, Rect positionOnScreen) {
        this.logger.d("Default ad listener called - Ad Resized.");
    }

    @Override // com.amazon.device.ads.ExtendedAdListener
    public void onAdExpired(Ad ad) {
        this.logger.d("Default ad listener called - Ad Expired.");
    }
}
