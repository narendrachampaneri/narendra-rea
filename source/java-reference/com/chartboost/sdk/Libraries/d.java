package com.chartboost.sdk.Libraries;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    private d() {
    }

    protected static String a() {
        AdvertisingIdClient.Info advertisingIdInfo;
        try {
            advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(com.chartboost.sdk.b.y());
        } catch (GooglePlayServicesNotAvailableException e) {
            advertisingIdInfo = null;
        } catch (GooglePlayServicesRepairableException e2) {
            advertisingIdInfo = null;
        } catch (IOException e3) {
            advertisingIdInfo = null;
        } catch (SecurityException e4) {
            CBLogging.a("CBIdentityAdv", "Security Exception when retrieving AD id", e4);
            advertisingIdInfo = null;
        } catch (Exception e5) {
            CBLogging.a("CBIdentityAdv", "General Exception when retrieving AD id", e5);
            advertisingIdInfo = null;
        }
        if (advertisingIdInfo == null) {
            c.a(c.a.UNKNOWN);
            return null;
        }
        if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
            c.a(c.a.TRACKING_DISABLED);
        } else {
            c.a(c.a.TRACKING_ENABLED);
        }
        try {
            UUID uuidFromString = UUID.fromString(advertisingIdInfo.getId());
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[16]);
            byteBufferWrap.putLong(uuidFromString.getMostSignificantBits());
            byteBufferWrap.putLong(uuidFromString.getLeastSignificantBits());
            return b.b(byteBufferWrap.array());
        } catch (IllegalArgumentException e6) {
            CBLogging.b("CBIdentityAdv", "Exception raised retrieveAdvertisingID", e6);
            return advertisingIdInfo.getId();
        }
    }
}
