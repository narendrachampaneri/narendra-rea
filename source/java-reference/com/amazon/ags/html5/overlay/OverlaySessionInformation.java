package com.amazon.ags.html5.overlay;

import com.amazon.ags.html5.util.DeviceInfo;
import com.amazon.ags.html5.util.LocalizationUtil;

/* JADX INFO: loaded from: classes2.dex */
public class OverlaySessionInformation {
    final String applicationName;
    final String clientVersion;
    final String contentVersion;
    final DeviceInfo deviceInfo;
    final String gameCircleVersion;
    final LocalizationUtil localizationUtil;

    public OverlaySessionInformation(String gameCircleVersion, String clientVersion, String contentVersion, String applicationName, LocalizationUtil localizationUtil, DeviceInfo deviceInfo) {
        this.gameCircleVersion = gameCircleVersion;
        this.clientVersion = clientVersion;
        this.contentVersion = contentVersion;
        this.applicationName = applicationName;
        this.localizationUtil = localizationUtil;
        this.deviceInfo = deviceInfo;
    }

    public String getGameCircleVersion() {
        return this.gameCircleVersion;
    }

    public String getClientVersion() {
        return this.clientVersion;
    }

    public String getContentVersion() {
        return this.contentVersion;
    }

    public String getApplicationName() {
        return this.applicationName;
    }

    public LocalizationUtil getLocalizationUtil() {
        return this.localizationUtil;
    }

    public DeviceInfo getDeviceInfo() {
        return this.deviceInfo;
    }
}
