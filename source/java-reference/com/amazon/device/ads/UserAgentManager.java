package com.amazon.device.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
interface UserAgentManager {
    String getUserAgentString();

    void populateUserAgentString(Context context);

    void setUserAgentString(String str);
}
