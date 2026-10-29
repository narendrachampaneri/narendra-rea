package com.amazon.insights.core.system;

import android.content.Context;
import com.amazon.insights.InsightsCredentials;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidSystem implements System {
    private final AppDetails appDetails;
    private final Connectivity connectivity;
    private final DeviceDetails deviceDetails = new AndroidDeviceDetails();
    private final FileManager fileManager;
    private final Preferences preferences;

    public AndroidSystem(Context context, InsightsCredentials credentials) {
        this.preferences = new AndroidPreferences(context, credentials);
        this.fileManager = new DefaultFileManager(context.getDir(credentials.getApplicationKey(), 0));
        this.connectivity = new AndroidConnectivity(context);
        this.appDetails = new AndroidAppDetails(context);
    }

    @Override // com.amazon.insights.core.system.System
    public FileManager getFileManager() {
        return this.fileManager;
    }

    @Override // com.amazon.insights.core.system.System
    public Preferences getPreferences() {
        return this.preferences;
    }

    @Override // com.amazon.insights.core.system.System
    public Connectivity getConnectivity() {
        return this.connectivity;
    }

    @Override // com.amazon.insights.core.system.System
    public AppDetails getAppDetails() {
        return this.appDetails;
    }

    @Override // com.amazon.insights.core.system.System
    public DeviceDetails getDeviceDetails() {
        return this.deviceDetails;
    }
}
