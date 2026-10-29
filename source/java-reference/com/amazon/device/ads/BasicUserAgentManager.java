package com.amazon.device.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
class BasicUserAgentManager implements UserAgentManager {
    private String userAgentStringWithSDKVersion;
    private String userAgentStringWithoutSDKVersion;

    BasicUserAgentManager() {
    }

    @Override // com.amazon.device.ads.UserAgentManager
    public String getUserAgentString() {
        return this.userAgentStringWithSDKVersion;
    }

    @Override // com.amazon.device.ads.UserAgentManager
    public void setUserAgentString(String newUserAgent) {
        if (newUserAgent != null && !newUserAgent.equals(this.userAgentStringWithoutSDKVersion)) {
            this.userAgentStringWithoutSDKVersion = newUserAgent;
            this.userAgentStringWithSDKVersion = newUserAgent + " " + Version.getUserAgentSDKVersion();
        }
    }

    @Override // com.amazon.device.ads.UserAgentManager
    public void populateUserAgentString(Context context) {
        if (this.userAgentStringWithSDKVersion == null) {
            if (AndroidTargetUtils.isAtLeastAndroidAPI(7)) {
                setUserAgentString(System.getProperty("http.agent"));
            } else {
                buildAndSetUserAgentString(context);
            }
        }
    }

    void buildAndSetUserAgentString(Context context) {
        setUserAgentString("");
    }
}
