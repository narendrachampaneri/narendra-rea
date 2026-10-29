package com.amazon.device.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class GooglePlayServicesAdapter {
    private static final String LOGTAG = GooglePlayServicesAdapter.class.getSimpleName();
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);

    GooglePlayServicesAdapter() {
    }

    public GooglePlayServices.AdvertisingInfo getAdvertisingIdentifierInfo() {
        Context context = MobileAdsInfoStore.getInstance().getApplicationContext();
        try {
            AdvertisingIdClient.Info info = AdvertisingIdClient.getAdvertisingIdInfo(context);
            this.logger.v("The Google Play Services Advertising Identifier was successfully retrieved.");
            String advertisingId = info.getId();
            boolean limitAdTrackingEnabled = info.isLimitAdTrackingEnabled();
            return new GooglePlayServices.AdvertisingInfo().setAdvertisingIdentifier(advertisingId).setLimitAdTrackingEnabled(limitAdTrackingEnabled);
        } catch (GooglePlayServicesNotAvailableException e) {
            this.logger.v("Retrieving the Google Play Services Advertising Identifier caused a GooglePlayServicesNotAvailableException.");
            return GooglePlayServices.AdvertisingInfo.createNotAvailable();
        } catch (GooglePlayServicesRepairableException e2) {
            this.logger.v("Retrieving the Google Play Services Advertising Identifier caused a GooglePlayServicesRepairableException.");
            return new GooglePlayServices.AdvertisingInfo();
        } catch (IOException e3) {
            this.logger.e("Retrieving the Google Play Services Advertising Identifier caused an IOException.");
            return new GooglePlayServices.AdvertisingInfo();
        } catch (IllegalStateException e4) {
            this.logger.e("The Google Play Services Advertising Id API was called from a non-background thread.");
            return new GooglePlayServices.AdvertisingInfo();
        }
    }
}
