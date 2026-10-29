package com.amazon.device.ads;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
class SISRegistration {
    protected static final long SIS_CHECKIN_INTERVAL = 86400000;
    private static final String SIS_LAST_CHECKIN_PREF_NAME = "amzn-ad-sis-last-checkin";
    private final AdvertisingIdentifier advertisingIdentifier;
    private final AppEventRegistrationHandler appEventRegistrationHandler;
    private final Configuration configuration;
    private final DebugProperties debugProperties;
    private final ThreadUtils.RunnableExecutor executor;
    private final MobileAdsInfoStore infoStore;
    private final MobileAdsLogger logger;
    private final Settings settings;
    private final SISRegisterEventRequest.SISRequestFactory sisRequestFactory;
    private final SISRequestor.SISRequestorFactory sisRequestorFactory;
    private final SystemTime systemTime;
    private final ThreadUtils.ThreadVerify threadVerify;
    private static final String LOGTAG = SISRegistration.class.getSimpleName();
    private static final ThreadUtils.SingleThreadScheduler singleThreadScheduler = new ThreadUtils.SingleThreadScheduler();

    public SISRegistration() {
        this(new SISRegisterEventRequest.SISRequestFactory(), new SISRequestor.SISRequestorFactory(), new AdvertisingIdentifier(), MobileAdsInfoStore.getInstance(), Configuration.getInstance(), Settings.getInstance(), AppEventRegistrationHandler.getInstance(), new SystemTime(), singleThreadScheduler, new ThreadUtils.ThreadVerify(), new MobileAdsLoggerFactory(), DebugProperties.getInstance());
    }

    SISRegistration(SISRegisterEventRequest.SISRequestFactory sisRequestFactory, SISRequestor.SISRequestorFactory sisRequestorFactory, AdvertisingIdentifier advertisingIdentifier, MobileAdsInfoStore infoStore, Configuration configuration, Settings settings, AppEventRegistrationHandler appEventRegistrationHandler, SystemTime systemTime, ThreadUtils.RunnableExecutor runnableExecutor, ThreadUtils.ThreadVerify threadVerify, MobileAdsLoggerFactory loggerFactory, DebugProperties debugProperties) {
        this.sisRequestFactory = sisRequestFactory;
        this.sisRequestorFactory = sisRequestorFactory;
        this.advertisingIdentifier = advertisingIdentifier;
        this.infoStore = infoStore;
        this.configuration = configuration;
        this.settings = settings;
        this.appEventRegistrationHandler = appEventRegistrationHandler;
        this.systemTime = systemTime;
        this.executor = runnableExecutor;
        this.threadVerify = threadVerify;
        this.logger = loggerFactory.createMobileAdsLogger(LOGTAG);
        this.debugProperties = debugProperties;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MobileAdsLogger getLogger() {
        return this.logger;
    }

    protected boolean canRegister(long currentTime) {
        RegistrationInfo registrationInfo = this.infoStore.getRegistrationInfo();
        return exceededCheckinInterval(currentTime) || registrationInfo.shouldGetNewSISDeviceIdentifer() || registrationInfo.shouldGetNewSISRegistration() || this.debugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_SHOULD_REGISTER_SIS, false).booleanValue();
    }

    protected boolean shouldUpdateDeviceInfo() {
        return this.infoStore.getRegistrationInfo().isRegisteredWithSIS();
    }

    public void registerApp() {
        Runnable proc = new Runnable() { // from class: com.amazon.device.ads.SISRegistration.1
            @Override // java.lang.Runnable
            public void run() {
                SISRegistration.this.waitForConfigurationThenBeginRegistration();
            }
        };
        this.executor.execute(proc);
    }

    void waitForConfigurationThenBeginRegistration() {
        final CountDownLatch latch = new CountDownLatch(1);
        final AtomicBoolean canRegister = new AtomicBoolean(false);
        this.configuration.queueConfigurationListener(new Configuration.ConfigurationListener() { // from class: com.amazon.device.ads.SISRegistration.2
            @Override // com.amazon.device.ads.Configuration.ConfigurationListener
            public void onConfigurationReady() {
                canRegister.set(true);
                latch.countDown();
            }

            @Override // com.amazon.device.ads.Configuration.ConfigurationListener
            public void onConfigurationFailure() {
                SISRegistration.this.getLogger().w("Configuration fetching failed so device registration will not proceed.");
                latch.countDown();
            }
        });
        try {
            latch.await();
        } catch (InterruptedException e) {
        }
        if (canRegister.get()) {
            registerAppWorker();
        }
    }

    void registerAppWorker() {
        long currentTime = this.systemTime.currentTimeMillis();
        AdvertisingIdentifier.Info advertisingIdentifierInfo = this.advertisingIdentifier.getAdvertisingIdentifierInfo();
        if (advertisingIdentifierInfo.canDo() && canRegister(currentTime)) {
            putLastSISCheckin(currentTime);
            if (shouldUpdateDeviceInfo()) {
                updateDeviceInfo(this.advertisingIdentifier);
            } else {
                register(this.advertisingIdentifier);
            }
        }
    }

    protected boolean exceededCheckinInterval(long now) {
        return now - getLastSISCheckin() > SIS_CHECKIN_INTERVAL;
    }

    protected void register(AdvertisingIdentifier advertisingIdentifier) {
        SISRequest generateDIDRequest = this.sisRequestFactory.createDeviceRequest(SISRegisterEventRequest.SISRequestType.GENERATE_DID).setAdvertisingIdentifier(advertisingIdentifier);
        SISRequestorCallback sisRequestorCallback = new RegisterEventsSISRequestorCallback(this);
        SISRequestor sisRequestor = this.sisRequestorFactory.createSISRequestor(sisRequestorCallback, generateDIDRequest);
        sisRequestor.startCallSIS();
    }

    protected void updateDeviceInfo(AdvertisingIdentifier advertisingIdentifier) {
        SISRequest updateDeviceInfoRequest = this.sisRequestFactory.createDeviceRequest(SISRegisterEventRequest.SISRequestType.UPDATE_DEVICE_INFO).setAdvertisingIdentifier(advertisingIdentifier);
        SISRequestorCallback sisRequestorCallback = new RegisterEventsSISRequestorCallback(this);
        SISRequestor sisRequestor = this.sisRequestorFactory.createSISRequestor(sisRequestorCallback, updateDeviceInfoRequest);
        sisRequestor.startCallSIS();
    }

    protected long getLastSISCheckin() {
        return this.settings.getLong(SIS_LAST_CHECKIN_PREF_NAME, 0L);
    }

    private void putLastSISCheckin(long currentTime) {
        this.settings.putLong(SIS_LAST_CHECKIN_PREF_NAME, currentTime);
    }

    protected void registerEvents() {
        JSONArray appEvents;
        if (this.threadVerify.isOnMainThread()) {
            getLogger().e("Registering events must be done on a background thread.");
            return;
        }
        AdvertisingIdentifier.Info advertisingIdentifierInfo = this.advertisingIdentifier.getAdvertisingIdentifierInfo();
        if (advertisingIdentifierInfo.hasSISDeviceIdentifier() && (appEvents = this.appEventRegistrationHandler.getAppEventsJSONArray()) != null) {
            SISRegisterEventRequest registerEventRequest = this.sisRequestFactory.createRegisterEventRequest(advertisingIdentifierInfo, appEvents);
            SISRequestor sisRequestor = this.sisRequestorFactory.createSISRequestor(registerEventRequest);
            sisRequestor.startCallSIS();
        }
    }

    protected static class RegisterEventsSISRequestorCallback implements SISRequestorCallback {
        private final SISRegistration sisRegistration;

        public RegisterEventsSISRequestorCallback(SISRegistration sisRegistration) {
            this.sisRegistration = sisRegistration;
        }

        @Override // com.amazon.device.ads.SISRequestorCallback
        public void onSISCallComplete() {
            this.sisRegistration.registerEvents();
        }
    }
}
