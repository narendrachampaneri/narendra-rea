package com.vungle.publisher.env;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.vungle.log.Logger;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.bw;
import com.vungle.publisher.event.EventBus;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AdvertisingDeviceIdStrategy extends AndroidDevice.DeviceIdStrategy {

    @Inject
    protected Context c;

    @Inject
    protected EventBus d;

    @Inject
    protected ScheduledPriorityExecutor e;

    @Override // com.vungle.publisher.env.AndroidDevice.DeviceIdStrategy
    protected final void c(final AndroidDevice androidDevice) {
        this.e.a(new Runnable() { // from class: com.vungle.publisher.env.AdvertisingDeviceIdStrategy.1
            @Override // java.lang.Runnable
            public final void run() {
                AdvertisingDeviceIdStrategy.this.d(androidDevice);
            }
        }, ScheduledPriorityExecutor.b.deviceId);
    }

    protected final void d(AndroidDevice androidDevice) {
        boolean z = !a(androidDevice);
        if (b(androidDevice) && z) {
            this.d.a(new bw());
        }
    }

    protected boolean a(AndroidDevice androidDevice) {
        return androidDevice.b();
    }

    protected boolean b(AndroidDevice androidDevice) {
        try {
            if (androidDevice.b(Logger.DEVICE_TAG)) {
                Logger.d(Logger.DEVICE_TAG, "fetching advertising ID and ad tracking preference");
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.c);
                String id = advertisingIdInfo.getId();
                boolean z = !advertisingIdInfo.isLimitAdTrackingEnabled();
                Logger.d(Logger.DEVICE_TAG, "advertising ID " + id + "; ad tracking enabled " + z);
                androidDevice.d = id;
                if (androidDevice.b() && (AndroidDevice.a(androidDevice.e) || androidDevice.l())) {
                    androidDevice.d();
                    androidDevice.k();
                }
                androidDevice.e();
                androidDevice.c = z;
            }
        } catch (Exception e) {
            Logger.w(Logger.DEVICE_TAG, "error fetching advertising ID and ad tracking preference", e);
        }
        try {
            return androidDevice.b();
        } catch (Exception e2) {
            Logger.w(Logger.DEVICE_TAG, "error verifying advertising ID", e2);
            return false;
        }
    }
}
