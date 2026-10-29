package com.amazon.device.ads;

/* JADX INFO: loaded from: classes.dex */
class GooglePlayServices {
    private static final String GPS_AVAILABLE_SETTING = "gps-available";
    private static final String LOGTAG = GooglePlayServices.class.getSimpleName();
    private final MobileAdsLogger logger;
    private final ReflectionUtils reflectionUtils;

    public GooglePlayServices() {
        this(new MobileAdsLoggerFactory(), new ReflectionUtils());
    }

    GooglePlayServices(MobileAdsLoggerFactory loggerFactory, ReflectionUtils reflectionUtils) {
        this.logger = loggerFactory.createMobileAdsLogger(LOGTAG);
        this.reflectionUtils = reflectionUtils;
    }

    public AdvertisingInfo getAdvertisingIdentifierInfo() {
        if (!isGPSAvailable()) {
            this.logger.v("The Google Play Services Advertising Identifier feature is not available.");
            return AdvertisingInfo.createNotAvailable();
        }
        if (!isGPSAvailableSet() && !this.reflectionUtils.isClassAvailable("com.google.android.gms.ads.identifier.AdvertisingIdClient")) {
            this.logger.v("The Google Play Services Advertising Identifier feature is not available.");
            setGooglePlayServicesAvailable(false);
            return AdvertisingInfo.createNotAvailable();
        }
        GooglePlayServicesAdapter googlePlayServices = createGooglePlayServicesAdapter();
        AdvertisingInfo advertisingInfo = googlePlayServices.getAdvertisingIdentifierInfo();
        setGooglePlayServicesAvailable(advertisingInfo.isGPSAvailable());
        return advertisingInfo;
    }

    protected GooglePlayServicesAdapter createGooglePlayServicesAdapter() {
        return new GooglePlayServicesAdapter();
    }

    private boolean isGPSAvailable() {
        return Settings.getInstance().getBoolean(GPS_AVAILABLE_SETTING, true);
    }

    private boolean isGPSAvailableSet() {
        return Settings.getInstance().containsKey(GPS_AVAILABLE_SETTING);
    }

    private void setGooglePlayServicesAvailable(boolean available) {
        Settings.getInstance().putTransientBoolean(GPS_AVAILABLE_SETTING, available);
    }

    static class AdvertisingInfo {
        private String advertisingIdentifier;
        private boolean gpsAvailable = true;
        private boolean limitAdTrackingEnabled;

        protected AdvertisingInfo() {
        }

        static AdvertisingInfo createNotAvailable() {
            return new AdvertisingInfo().setGPSAvailable(false);
        }

        boolean isGPSAvailable() {
            return this.gpsAvailable;
        }

        private AdvertisingInfo setGPSAvailable(boolean gpsAvailable) {
            this.gpsAvailable = gpsAvailable;
            return this;
        }

        String getAdvertisingIdentifier() {
            return this.advertisingIdentifier;
        }

        AdvertisingInfo setAdvertisingIdentifier(String advertisingIdentifier) {
            this.advertisingIdentifier = advertisingIdentifier;
            return this;
        }

        boolean hasAdvertisingIdentifier() {
            return getAdvertisingIdentifier() != null;
        }

        boolean isLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }

        AdvertisingInfo setLimitAdTrackingEnabled(boolean limitAdTrackingEnabled) {
            this.limitAdTrackingEnabled = limitAdTrackingEnabled;
            return this;
        }
    }
}
