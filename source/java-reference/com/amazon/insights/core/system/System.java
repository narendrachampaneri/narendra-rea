package com.amazon.insights.core.system;

/* JADX INFO: loaded from: classes2.dex */
public interface System {
    AppDetails getAppDetails();

    Connectivity getConnectivity();

    DeviceDetails getDeviceDetails();

    FileManager getFileManager();

    Preferences getPreferences();
}
