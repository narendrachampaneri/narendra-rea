package com.inmobi.re.controller.util;

import android.net.http.Headers;
import com.google.android.gms.appinvite.PreviewActivity;

/* JADX INFO: loaded from: classes.dex */
public enum NavigationStringEnum {
    NONE("none"),
    CLOSE(PreviewActivity.ON_CLICK_LISTENER_CLOSE),
    BACK("back"),
    FORWARD("forward"),
    REFRESH(Headers.REFRESH);

    private String a;

    NavigationStringEnum(String str) {
        this.a = str;
    }

    public String getText() {
        return this.a;
    }

    public static NavigationStringEnum fromString(String str) {
        if (str != null) {
            for (NavigationStringEnum navigationStringEnum : values()) {
                if (str.equalsIgnoreCase(navigationStringEnum.a)) {
                    return navigationStringEnum;
                }
            }
        }
        return null;
    }
}
