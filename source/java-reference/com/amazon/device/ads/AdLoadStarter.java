package com.amazon.device.ads;

import android.annotation.SuppressLint;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class AdLoadStarter {
    private static final String LOGTAG = AdLoadStarter.class.getSimpleName();
    private final AdLoader.AdLoaderFactory adLoaderFactory;
    private final AdRequest.AdRequestBuilder adRequestBuilder;
    private final AdvertisingIdentifier advertisingIdentifier;
    private final Configuration configuration;
    private final MobileAdsInfoStore infoStore;
    private final MobileAdsLogger logger;
    private final Settings settings;
    private final SystemTime systemTime;
    private final ThreadUtils.ThreadRunner threadRunner;

    public AdLoadStarter() {
        this(new AdLoader.AdLoaderFactory(), new AdvertisingIdentifier(), ThreadUtils.getThreadRunner(), MobileAdsInfoStore.getInstance(), Settings.getInstance(), Configuration.getInstance(), new MobileAdsLoggerFactory(), new SystemTime(), new AdRequest.AdRequestBuilder());
    }

    AdLoadStarter(AdLoader.AdLoaderFactory adLoaderFactory, AdvertisingIdentifier advertisingIdentifier, ThreadUtils.ThreadRunner threadRunner, MobileAdsInfoStore infoStore, Settings settings, Configuration configuration, MobileAdsLoggerFactory loggerFactory, SystemTime systemTime, AdRequest.AdRequestBuilder adRequestBuilder) {
        this.adLoaderFactory = adLoaderFactory;
        this.logger = loggerFactory.createMobileAdsLogger(LOGTAG);
        this.advertisingIdentifier = advertisingIdentifier;
        this.infoStore = infoStore;
        this.settings = settings;
        this.configuration = configuration;
        this.threadRunner = threadRunner;
        this.systemTime = systemTime;
        this.adRequestBuilder = adRequestBuilder;
    }

    public void loadAds(final int timeout, final AdTargetingOptions requestOptions, AdSlot... adSlots) {
        if (!isNoRetry(adSlots)) {
            long loadAdStartTime = this.systemTime.nanoTime();
            final ArrayList<AdSlot> requestAdSlots = new ArrayList<>();
            for (AdSlot adSlot : adSlots) {
                if (adSlot.prepareForAdLoad(loadAdStartTime)) {
                    requestAdSlots.add(adSlot);
                }
            }
            StartUpWaiter waiter = new StartUpWaiter(this.settings, this.configuration) { // from class: com.amazon.device.ads.AdLoadStarter.1
                @Override // com.amazon.device.ads.StartUpWaiter
                protected void startUpReady() {
                    AdLoadStarter.this.infoStore.register();
                    AdLoadStarter.this.beginFetchAds(timeout, requestOptions, requestAdSlots);
                }

                @Override // com.amazon.device.ads.StartUpWaiter
                protected void startUpFailed() {
                    AdLoadStarter.this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.AdLoadStarter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AdError adError = new AdError(AdError.ErrorCode.NETWORK_ERROR, "The configuration was unable to be loaded");
                            AdLoadStarter.this.failAds(adError, requestAdSlots);
                        }
                    }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.MAIN_THREAD);
                }
            };
            waiter.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"UseSparseArrays"})
    public void beginFetchAds(int timeout, AdTargetingOptions requestOptions, List<AdSlot> adSlots) {
        AdvertisingIdentifier.Info advertisingIdentifierInfo = this.advertisingIdentifier.getAdvertisingIdentifierInfo();
        if (!advertisingIdentifierInfo.canDo()) {
            failAds(new AdError(AdError.ErrorCode.INTERNAL_ERROR, "An internal request was not made on a background thread."), adSlots);
            return;
        }
        if (requestOptions == null) {
            requestOptions = new AdTargetingOptions();
        }
        AdRequest request = this.adRequestBuilder.withAdTargetingOptions(requestOptions).withAdvertisingIdentifierInfo(advertisingIdentifierInfo).build();
        HashMap<Integer, AdSlot> goodAdSlots = new HashMap<>();
        int slotNumber = 1;
        for (AdSlot slot : adSlots) {
            if (slot.isValid()) {
                slot.setSlotNumber(slotNumber);
                goodAdSlots.put(Integer.valueOf(slotNumber), slot);
                request.putSlot(slot);
                slotNumber++;
            }
        }
        if (goodAdSlots.size() > 0) {
            AdLoader adLoader = this.adLoaderFactory.createAdLoader(request, goodAdSlots);
            adLoader.setTimeout(timeout);
            adLoader.beginFetchAd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failAds(AdError adError, List<AdSlot> adSlots) {
        int adFailCount = 0;
        for (AdSlot slot : adSlots) {
            if (slot.getSlotNumber() != -1) {
                slot.adFailed(adError);
                adFailCount++;
            }
        }
        if (adFailCount > 0) {
            this.logger.e("%s; code: %s", adError.getMessage(), adError.getCode());
        }
    }

    private boolean isNoRetry(AdSlot[] adSlots) {
        String errorMessage;
        AdError.ErrorCode errorCode;
        int noRetryTtlRemainingMillis = this.infoStore.getNoRetryTtlRemainingMillis();
        if (noRetryTtlRemainingMillis > 0) {
            int noRetryTtlRemainingSecs = noRetryTtlRemainingMillis / 1000;
            if (this.infoStore.getIsAppDisabled()) {
                errorMessage = "SDK Message: " + AdLoader.DISABLED_APP_SERVER_MESSAGE;
                errorCode = AdError.ErrorCode.INTERNAL_ERROR;
            } else {
                errorMessage = "SDK Message: no results. Try again in " + noRetryTtlRemainingSecs + " seconds.";
                errorCode = AdError.ErrorCode.NO_FILL;
            }
            AdError adError = new AdError(errorCode, errorMessage);
            failAds(adError, new ArrayList(Arrays.asList(adSlots)));
            return true;
        }
        return false;
    }
}
