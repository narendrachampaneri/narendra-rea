package com.amazon.device.ads;

/* JADX INFO: loaded from: classes.dex */
class MobileAdsLoggerFactory {
    private static MobileAdsLoggerFactory loggerFactory;

    MobileAdsLoggerFactory() {
    }

    static void setLoggerFactory(MobileAdsLoggerFactory loggerFactory2) {
        loggerFactory = loggerFactory2;
    }

    public MobileAdsLogger createMobileAdsLogger(String logTag) {
        return loggerFactory != null ? loggerFactory.createMobileAdsLogger(logTag) : createMobileAdsLogger(logTag, new LogcatLogger());
    }

    MobileAdsLogger createMobileAdsLogger(String logTag, Logger logger) {
        return new MobileAdsLogger(logger).withLogTag(logTag);
    }
}
