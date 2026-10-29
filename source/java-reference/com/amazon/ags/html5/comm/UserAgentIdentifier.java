package com.amazon.ags.html5.comm;

import com.amazon.ags.VersionInfo;
import com.amazon.ags.html5.content.ContentVersion;

/* JADX INFO: loaded from: classes2.dex */
public class UserAgentIdentifier {
    private static final String GAMECIRCLE_ANDROID_PRODUCT_TOKEN = "gamecircle-android";
    private static final String GAMECIRCLE_JS_PRODUCT_TOKEN = "gamecircle-js";
    private static final String RFC2616_PRODUCT_TOKEN_AND_VERSION_SEPARATOR = "/";
    private static final String RFC2616_PRODUCT_TOKEN_SEPARATOR = " ";
    private final ContentVersion contentVersion;
    private final VersionInfo versionInfo;

    public UserAgentIdentifier(VersionInfo versionInfo, ContentVersion contentVersion) {
        this.versionInfo = versionInfo;
        this.contentVersion = contentVersion;
    }

    public String getUserAgent() {
        StringBuilder sb = new StringBuilder();
        sb.append(GAMECIRCLE_ANDROID_PRODUCT_TOKEN);
        sb.append(RFC2616_PRODUCT_TOKEN_AND_VERSION_SEPARATOR);
        sb.append(this.versionInfo.getVersion());
        if (this.contentVersion != null) {
            sb.append(RFC2616_PRODUCT_TOKEN_SEPARATOR);
            sb.append(GAMECIRCLE_JS_PRODUCT_TOKEN);
            sb.append(RFC2616_PRODUCT_TOKEN_AND_VERSION_SEPARATOR);
            sb.append(this.contentVersion.getVersion());
        }
        return sb.toString();
    }

    public String toString() {
        return getUserAgent();
    }
}
