package com.vungle.publisher.env;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.provider.Settings;
import com.vungle.log.Logger;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AdaptiveDeviceIdStrategy extends AdvertisingDeviceIdStrategy {

    @Inject
    Context a;

    @Inject
    WifiManager b;

    @Override // com.vungle.publisher.env.AdvertisingDeviceIdStrategy
    protected final boolean a(AndroidDevice androidDevice) {
        return androidDevice.f();
    }

    @Override // com.vungle.publisher.env.AdvertisingDeviceIdStrategy
    protected final boolean b(AndroidDevice androidDevice) {
        try {
            boolean zB = super.b(androidDevice);
            if (zB) {
                Logger.v(Logger.DEVICE_TAG, "have advertising ID - not fetching fallback device IDs");
                return zB;
            }
            Logger.d(Logger.DEVICE_TAG, "ensuring fallback device IDs");
            if (AndroidDevice.a(androidDevice.e)) {
                Logger.v(Logger.DEVICE_TAG, "existing android ID " + androidDevice.c());
            } else {
                String string = Settings.Secure.getString(this.a.getContentResolver(), "android_id");
                Logger.d(Logger.DEVICE_TAG, "fetched android ID " + string);
                if (androidDevice.b()) {
                    Logger.w(Logger.DEVICE_TAG, "have advertising id - not setting androidId");
                } else {
                    Logger.d(Logger.DEVICE_TAG, "setting android ID " + string);
                    androidDevice.e = string;
                    androidDevice.e();
                }
            }
            try {
                String strJ = androidDevice.j();
                if (strJ == null) {
                    WifiInfo connectionInfo = this.b.getConnectionInfo();
                    if (connectionInfo == null) {
                        Logger.d(Logger.DEVICE_TAG, "unable to get MAC address - not connected");
                    } else {
                        String macAddress = connectionInfo.getMacAddress();
                        Logger.d(Logger.DEVICE_TAG, "fetched MAC address " + macAddress);
                        if (androidDevice.b()) {
                            Logger.w(Logger.DEVICE_TAG, "have advertising id - not setting mac address");
                        } else {
                            Logger.d(Logger.DEVICE_TAG, "setting MAC address " + macAddress);
                            androidDevice.f = macAddress;
                        }
                    }
                } else {
                    Logger.v(Logger.DEVICE_TAG, "existing MAC address " + strJ);
                }
            } catch (SecurityException e) {
                Logger.d(Logger.DEVICE_TAG, "unable to get MAC address - no ACCESS_WIFI_STATE permission");
            }
            return true;
        } catch (Exception e2) {
            Logger.w(Logger.DEVICE_TAG, e2);
            return androidDevice.f();
        }
    }
}
