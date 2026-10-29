package com.applovin.sdk;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinSdkSettings {
    private boolean a;
    private long b = -1;
    private String c;
    private String d;

    public String getAutoPreloadSizes() {
        return this.c;
    }

    public String getAutoPreloadTypes() {
        return this.d;
    }

    public long getBannerAdRefreshSeconds() {
        return this.b;
    }

    public boolean isVerboseLoggingEnabled() {
        return this.a;
    }

    public void setAutoPreloadSizes(String str) {
        this.c = str;
    }

    public void setAutoPreloadTypes(String str) {
        this.d = str;
    }

    public void setBannerAdRefreshSeconds(long j) {
        this.b = j;
    }

    public void setVerboseLogging(boolean z) {
        this.a = z;
    }
}
