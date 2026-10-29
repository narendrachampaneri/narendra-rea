package com.amazon.insights.core.system;

import android.os.Build;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidDeviceDetails implements DeviceDetails {
    @Override // com.amazon.insights.core.system.DeviceDetails
    public String platformVersion() {
        return Build.VERSION.RELEASE;
    }

    @Override // com.amazon.insights.core.system.DeviceDetails
    public String platform() {
        return "ANDROID";
    }

    @Override // com.amazon.insights.core.system.DeviceDetails
    public String manufacturer() {
        return Build.MANUFACTURER;
    }

    @Override // com.amazon.insights.core.system.DeviceDetails
    public String model() {
        return Build.MODEL;
    }

    @Override // com.amazon.insights.core.system.DeviceDetails
    public Locale locale() {
        return Locale.getDefault();
    }
}
