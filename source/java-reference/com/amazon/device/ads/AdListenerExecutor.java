package com.amazon.device.ads;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
class AdListenerExecutor {
    private static final String LOGTAG = AdListenerExecutor.class.getSimpleName();
    private final AdListener adListener;
    private final MobileAdsLogger logger;
    private final ThreadUtils.ThreadRunner threadRunner;

    public AdListenerExecutor(AdListener adListener, MobileAdsLoggerFactory loggerFactory) {
        this(adListener, ThreadUtils.getThreadRunner(), loggerFactory);
    }

    AdListenerExecutor(AdListener adListener, ThreadUtils.ThreadRunner threadRunner, MobileAdsLoggerFactory loggerFactory) {
        this.adListener = adListener;
        this.threadRunner = threadRunner;
        this.logger = loggerFactory.createMobileAdsLogger(LOGTAG);
    }

    protected AdListener getAdListener() {
        return this.adListener;
    }

    public void onAdLoaded(final Ad ad, final AdProperties adProperties) {
        Runnable runnable = new Runnable() { // from class: com.amazon.device.ads.AdListenerExecutor.1
            @Override // java.lang.Runnable
            public void run() {
                AdListenerExecutor.this.getAdListener().onAdLoaded(ad, adProperties);
            }
        };
        execute(runnable);
    }

    public void onAdFailedToLoad(final Ad ad, final AdError adError) {
        Runnable runnable = new Runnable() { // from class: com.amazon.device.ads.AdListenerExecutor.2
            @Override // java.lang.Runnable
            public void run() {
                AdListenerExecutor.this.getAdListener().onAdFailedToLoad(ad, adError);
            }
        };
        execute(runnable);
    }

    public void onAdExpanded(final Ad ad) {
        Runnable runnable = new Runnable() { // from class: com.amazon.device.ads.AdListenerExecutor.3
            @Override // java.lang.Runnable
            public void run() {
                AdListenerExecutor.this.getAdListener().onAdExpanded(ad);
            }
        };
        execute(runnable);
    }

    public void onAdCollapsed(final Ad ad) {
        Runnable runnable = new Runnable() { // from class: com.amazon.device.ads.AdListenerExecutor.4
            @Override // java.lang.Runnable
            public void run() {
                AdListenerExecutor.this.getAdListener().onAdCollapsed(ad);
            }
        };
        execute(runnable);
    }

    public void onAdDismissed(final Ad ad) {
        Runnable runnable = new Runnable() { // from class: com.amazon.device.ads.AdListenerExecutor.5
            @Override // java.lang.Runnable
            public void run() {
                AdListenerExecutor.this.getAdListener().onAdDismissed(ad);
            }
        };
        execute(runnable);
    }

    public void onAdResized(Ad ad, Rect positionOnScreen) {
        this.logger.d("Ad listener called - Ad Resized.");
    }

    public void onAdExpired(Ad ad) {
        this.logger.d("Ad listener called - Ad Expired.");
    }

    public void onSpecialUrlClicked(Ad ad, String url) {
        this.logger.d("Ad listener called - Special Url Clicked.");
    }

    public ActionCode onAdReceived(Ad ad, AdData adData) {
        this.logger.d("Ad listener called - Ad Received.");
        return null;
    }

    public void onAdEvent(AdEvent adEvent) {
        this.logger.d("Ad listener called - Ad Event: " + adEvent);
    }

    protected void execute(Runnable runnable) {
        this.threadRunner.execute(runnable, ThreadUtils.ExecutionStyle.SCHEDULE, ThreadUtils.ExecutionThread.MAIN_THREAD);
    }
}
