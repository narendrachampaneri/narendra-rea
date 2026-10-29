package com.amazon.device.ads;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
class ExtendedAdListenerExecutor extends AdListenerExecutor {
    private final ExtendedAdListener extendedAdListener;

    public ExtendedAdListenerExecutor(ExtendedAdListener adListener, MobileAdsLoggerFactory loggerFactory) {
        super(adListener, loggerFactory);
        this.extendedAdListener = adListener;
    }

    ExtendedAdListenerExecutor(ExtendedAdListener adListener, ThreadUtils.ThreadRunner threadRunner, MobileAdsLoggerFactory loggerFactory) {
        super(adListener, threadRunner, loggerFactory);
        this.extendedAdListener = adListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.AdListenerExecutor
    public ExtendedAdListener getAdListener() {
        return this.extendedAdListener;
    }

    @Override // com.amazon.device.ads.AdListenerExecutor
    public void onAdResized(final Ad ad, final Rect positionOnScreen) {
        Runnable runnable = new Runnable() { // from class: com.amazon.device.ads.ExtendedAdListenerExecutor.1
            @Override // java.lang.Runnable
            public void run() {
                ExtendedAdListenerExecutor.this.getAdListener().onAdResized(ad, positionOnScreen);
            }
        };
        execute(runnable);
    }

    @Override // com.amazon.device.ads.AdListenerExecutor
    public void onAdExpired(final Ad ad) {
        Runnable runnable = new Runnable() { // from class: com.amazon.device.ads.ExtendedAdListenerExecutor.2
            @Override // java.lang.Runnable
            public void run() {
                ExtendedAdListenerExecutor.this.getAdListener().onAdExpired(ad);
            }
        };
        execute(runnable);
    }
}
