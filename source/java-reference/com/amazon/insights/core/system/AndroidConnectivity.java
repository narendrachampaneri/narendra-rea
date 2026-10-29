package com.amazon.insights.core.system;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import com.amazon.insights.core.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidConnectivity implements Connectivity {
    private static final Logger logger = Logger.getLogger(Connectivity.class);
    private Context context;
    protected boolean hasMobile;
    protected boolean hasWifi;
    protected boolean hasWired;
    protected boolean inAirplaneMode;

    public AndroidConnectivity(Context context) {
        this.context = context;
    }

    @Override // com.amazon.insights.core.system.Connectivity
    public boolean isConnected() {
        determineAvailability();
        return hasWifi() || hasWAN() || hasWired();
    }

    @Override // com.amazon.insights.core.system.Connectivity
    public boolean hasWifi() {
        return this.hasWifi;
    }

    @Override // com.amazon.insights.core.system.Connectivity
    public boolean hasWAN() {
        return this.hasMobile && !this.inAirplaneMode;
    }

    @Override // com.amazon.insights.core.system.Connectivity
    public boolean hasWired() {
        return this.hasWired;
    }

    private void determineAvailability() {
        String str;
        ConnectivityManager cm = (ConnectivityManager) this.context.getSystemService("connectivity");
        this.inAirplaneMode = Settings.System.getInt(this.context.getContentResolver(), "airplane_mode_on", 0) != 0;
        logger.v("Airplane mode: " + this.inAirplaneMode);
        NetworkInfo networkInfo = cm != null ? cm.getActiveNetworkInfo() : null;
        this.hasWifi = false;
        this.hasWired = false;
        this.hasMobile = cm != null;
        if (networkInfo != null) {
            if (networkInfo.isConnectedOrConnecting()) {
                int networkType = networkInfo.getType();
                if (Build.VERSION.SDK_INT >= 13) {
                    this.hasWired = networkType == 9;
                }
                this.hasWifi = networkType == 1 || networkType == 6;
                this.hasMobile = networkType == 0 || networkType == 4 || networkType == 5 || networkType == 2 || networkType == 3;
            } else {
                this.hasMobile = false;
            }
        }
        Logger logger2 = logger;
        Object[] objArr = new Object[1];
        if (this.hasWifi) {
            str = "On Wifi";
        } else {
            str = this.hasMobile ? "On Mobile" : "No network connectivity";
        }
        objArr[0] = str;
        logger2.v(String.format("Device Connectivity (%s)", objArr));
    }
}
