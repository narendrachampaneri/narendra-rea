package com.amazon.device.iap.internal.c;

import android.content.Context;
import android.content.SharedPreferences;
import com.newrelic.agent.android.analytics.AnalyticAttribute;

/* JADX INFO: compiled from: EntitlementTracker.java */
/* JADX INFO: loaded from: classes.dex */
public class c {
    private static c a = new c();
    private static final String b = c.class.getSimpleName();
    private static final String c = c.class.getName() + "_PREFS_";

    public static c a() {
        return a;
    }

    public void a(String str, String str2, String str3) {
        com.amazon.device.iap.internal.util.e.a(b, "enter saveEntitlementRecord for v1 Entitlement [" + str2 + "/" + str3 + "], user [" + str + "]");
        try {
            com.amazon.device.iap.internal.util.d.a(str, AnalyticAttribute.USER_ID_ATTRIBUTE);
            com.amazon.device.iap.internal.util.d.a(str2, "receiptId");
            com.amazon.device.iap.internal.util.d.a(str3, "sku");
            Context contextB = com.amazon.device.iap.internal.d.d().b();
            com.amazon.device.iap.internal.util.d.a(contextB, "context");
            SharedPreferences.Editor editorEdit = contextB.getSharedPreferences(c + str, 0).edit();
            editorEdit.putString(str3, str2);
            editorEdit.commit();
        } catch (Throwable th) {
            com.amazon.device.iap.internal.util.e.a(b, "error in saving v1 Entitlement:" + str2 + "/" + str3 + ":" + th.getMessage());
        }
        com.amazon.device.iap.internal.util.e.a(b, "leaving saveEntitlementRecord for v1 Entitlement [" + str2 + "/" + str3 + "], user [" + str + "]");
    }

    public String a(String str, String str2) {
        String string = null;
        com.amazon.device.iap.internal.util.e.a(b, "enter getReceiptIdFromSku for sku [" + str2 + "], user [" + str + "]");
        try {
            com.amazon.device.iap.internal.util.d.a(str, AnalyticAttribute.USER_ID_ATTRIBUTE);
            com.amazon.device.iap.internal.util.d.a(str2, "sku");
            Context contextB = com.amazon.device.iap.internal.d.d().b();
            com.amazon.device.iap.internal.util.d.a(contextB, "context");
            string = contextB.getSharedPreferences(c + str, 0).getString(str2, null);
        } catch (Throwable th) {
            com.amazon.device.iap.internal.util.e.a(b, "error in saving v1 Entitlement:" + str2 + ":" + th.getMessage());
        }
        com.amazon.device.iap.internal.util.e.a(b, "leaving saveEntitlementRecord for sku [" + str2 + "], user [" + str + "]");
        return string;
    }
}
