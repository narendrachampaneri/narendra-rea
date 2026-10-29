package com.amazon.device.iap.internal.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import com.amazon.device.iap.model.Receipt;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;

/* JADX INFO: compiled from: PendingReceiptsManager.java */
/* JADX INFO: loaded from: classes.dex */
public class a {
    private static final String a = a.class.getSimpleName();
    private static final String b = a.class.getName() + "_PREFS";
    private static final String c = a.class.getName() + "_CLEANER_PREFS";
    private static int d = 604800000;
    private static final a e = new a();

    public void a(String str, String str2, String str3, String str4) {
        com.amazon.device.iap.internal.util.e.a(a, "enter saveReceipt for receipt [" + str4 + "]");
        try {
            com.amazon.device.iap.internal.util.d.a(str2, AnalyticAttribute.USER_ID_ATTRIBUTE);
            com.amazon.device.iap.internal.util.d.a(str3, "receiptId");
            com.amazon.device.iap.internal.util.d.a(str4, "receiptString");
            Context contextB = com.amazon.device.iap.internal.d.d().b();
            com.amazon.device.iap.internal.util.d.a(contextB, "context");
            d dVar = new d(str2, str4, str, System.currentTimeMillis());
            SharedPreferences.Editor editorEdit = contextB.getSharedPreferences(b, 0).edit();
            editorEdit.putString(str3, dVar.d());
            editorEdit.commit();
        } catch (Throwable th) {
            com.amazon.device.iap.internal.util.e.a(a, "error in saving pending receipt:" + str + "/" + str4 + ":" + th.getMessage());
        }
        com.amazon.device.iap.internal.util.e.a(a, "leaving saveReceipt for receipt id [" + str3 + "]");
    }

    private void e() {
        com.amazon.device.iap.internal.util.e.a(a, "enter old receipts cleanup! ");
        final Context contextB = com.amazon.device.iap.internal.d.d().b();
        com.amazon.device.iap.internal.util.d.a(contextB, "context");
        a(System.currentTimeMillis());
        new Handler().post(new Runnable() { // from class: com.amazon.device.iap.internal.c.a.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    com.amazon.device.iap.internal.util.e.a(a.a, "perform house keeping! ");
                    SharedPreferences sharedPreferences = contextB.getSharedPreferences(a.b, 0);
                    for (String str : sharedPreferences.getAll().keySet()) {
                        try {
                            if (System.currentTimeMillis() - d.a(sharedPreferences.getString(str, null)).c() > a.d) {
                                com.amazon.device.iap.internal.util.e.a(a.a, "house keeping - try remove Receipt:" + str + " since it's too old");
                                a.this.a(str);
                            }
                        } catch (e e2) {
                            com.amazon.device.iap.internal.util.e.a(a.a, "house keeping - try remove Receipt:" + str + " since it's invalid ");
                            a.this.a(str);
                        }
                    }
                } catch (Throwable th) {
                    com.amazon.device.iap.internal.util.e.a(a.a, "Error in running cleaning job:" + th);
                }
            }
        });
    }

    public void a(String str) {
        com.amazon.device.iap.internal.util.e.a(a, "enter removeReceipt for receipt[" + str + "]");
        Context contextB = com.amazon.device.iap.internal.d.d().b();
        com.amazon.device.iap.internal.util.d.a(contextB, "context");
        SharedPreferences.Editor editorEdit = contextB.getSharedPreferences(b, 0).edit();
        editorEdit.remove(str);
        editorEdit.commit();
        com.amazon.device.iap.internal.util.e.a(a, "leave removeReceipt for receipt[" + str + "]");
    }

    private long f() {
        Context contextB = com.amazon.device.iap.internal.d.d().b();
        com.amazon.device.iap.internal.util.d.a(contextB, "context");
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = contextB.getSharedPreferences(c, 0).getLong("LAST_CLEANING_TIME", 0L);
        if (j != 0) {
            return j;
        }
        a(jCurrentTimeMillis);
        return jCurrentTimeMillis;
    }

    private void a(long j) {
        Context contextB = com.amazon.device.iap.internal.d.d().b();
        com.amazon.device.iap.internal.util.d.a(contextB, "context");
        SharedPreferences.Editor editorEdit = contextB.getSharedPreferences(c, 0).edit();
        editorEdit.putLong("LAST_CLEANING_TIME", j);
        editorEdit.commit();
    }

    public Set<Receipt> b(String str) {
        Context contextB = com.amazon.device.iap.internal.d.d().b();
        com.amazon.device.iap.internal.util.d.a(contextB, "context");
        com.amazon.device.iap.internal.util.e.a(a, "enter getLocalReceipts for user[" + str + "]");
        HashSet hashSet = new HashSet();
        if (com.amazon.device.iap.internal.util.d.a(str)) {
            com.amazon.device.iap.internal.util.e.b(a, "empty UserId: " + str);
            throw new RuntimeException("Invalid UserId:" + str);
        }
        Map<String, ?> all = contextB.getSharedPreferences(b, 0).getAll();
        for (String str2 : all.keySet()) {
            String str3 = (String) all.get(str2);
            try {
                d dVarA = d.a(str3);
                hashSet.add(com.amazon.device.iap.internal.util.a.a(JSONObjectInstrumentation.init(dVarA.b()), str, dVarA.a()));
            } catch (com.amazon.device.iap.internal.b.d e2) {
                a(str2);
                com.amazon.device.iap.internal.util.e.b(a, "failed to verify signature:[" + str3 + "]");
            } catch (JSONException e3) {
                a(str2);
                com.amazon.device.iap.internal.util.e.b(a, "failed to convert string to JSON object:[" + str3 + "]");
            } catch (Throwable th) {
                com.amazon.device.iap.internal.util.e.b(a, "failed to load the receipt from SharedPreference:[" + str3 + "]");
            }
        }
        com.amazon.device.iap.internal.util.e.a(a, "leaving getLocalReceipts for user[" + str + "], " + hashSet.size() + " local receipts found.");
        if (System.currentTimeMillis() - f() > d) {
            e();
        }
        return hashSet;
    }

    public static a a() {
        return e;
    }

    public String c(String str) {
        Context contextB = com.amazon.device.iap.internal.d.d().b();
        com.amazon.device.iap.internal.util.d.a(contextB, "context");
        if (com.amazon.device.iap.internal.util.d.a(str)) {
            com.amazon.device.iap.internal.util.e.b(a, "empty receiptId: " + str);
            throw new RuntimeException("Invalid ReceiptId:" + str);
        }
        String string = contextB.getSharedPreferences(b, 0).getString(str, null);
        if (string == null) {
            return null;
        }
        try {
            return d.a(string).a();
        } catch (e e2) {
            return null;
        }
    }
}
