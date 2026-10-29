package com.amazon.device.iap.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.newrelic.agent.android.analytics.AnalyticAttribute;

/* JADX INFO: compiled from: CursorUtil.java */
/* JADX INFO: loaded from: classes.dex */
public class b {
    private static final String a = b.class.getName() + "_PREFS";

    public static String a(String str) {
        d.a((Object) str, AnalyticAttribute.USER_ID_ATTRIBUTE);
        Context contextB = com.amazon.device.iap.internal.d.d().b();
        d.a(contextB, "context");
        return contextB.getSharedPreferences(a, 0).getString(str, null);
    }

    public static void a(String str, String str2) {
        d.a((Object) str, AnalyticAttribute.USER_ID_ATTRIBUTE);
        Context contextB = com.amazon.device.iap.internal.d.d().b();
        d.a(contextB, "context");
        SharedPreferences.Editor editorEdit = contextB.getSharedPreferences(a, 0).edit();
        editorEdit.putString(str, str2);
        editorEdit.commit();
    }
}
