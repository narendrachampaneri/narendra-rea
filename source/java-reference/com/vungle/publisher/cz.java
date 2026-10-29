package com.vungle.publisher;

import com.vungle.log.Logger;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class cz {
    public static String a(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, str);
        } catch (Exception e) {
            Logger.w(Logger.CONFIG_TAG, "error getting Android system property " + str, e);
            return null;
        }
    }
}
