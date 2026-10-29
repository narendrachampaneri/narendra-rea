package com.amazon.device.ads;

/* JADX INFO: loaded from: classes.dex */
class AdListenerExecutorFactory {
    private final MobileAdsLoggerFactory loggerFactory;

    public AdListenerExecutorFactory(MobileAdsLoggerFactory loggerFactory) {
        this.loggerFactory = loggerFactory;
    }

    protected MobileAdsLoggerFactory getLoggerFactory() {
        return this.loggerFactory;
    }

    public AdListenerExecutor createAdListenerExecutor(AdListener adListener) {
        return adListener instanceof ExtendedAdListener ? new ExtendedAdListenerExecutor((ExtendedAdListener) adListener, this.loggerFactory) : new AdListenerExecutor(adListener, this.loggerFactory);
    }
}
