package com.amazon.device.iap.internal.c;

import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: PendingReceipt.java */
/* JADX INFO: loaded from: classes.dex */
class d {
    private final String a;
    private final String b;
    private final long c;
    private final String d;

    public String a() {
        return this.d;
    }

    public String b() {
        return this.b;
    }

    public long c() {
        return this.c;
    }

    public d(String str, String str2, String str3, long j) {
        this.a = str;
        this.b = str2;
        this.d = str3;
        this.c = j;
    }

    public static d a(String str) throws e {
        try {
            JSONObject jSONObjectInit = JSONObjectInstrumentation.init(str);
            return new d(jSONObjectInit.getString("KEY_USER_ID"), jSONObjectInit.getString("KEY_RECEIPT_STRING"), jSONObjectInit.getString("KEY_REQUEST_ID"), jSONObjectInit.getLong("KEY_TIMESTAMP"));
        } catch (Throwable th) {
            throw new e("Input invalid for PendingReceipt Object:" + str, th);
        }
    }

    public String d() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("KEY_USER_ID", this.a);
        jSONObject.put("KEY_RECEIPT_STRING", this.b);
        jSONObject.put("KEY_REQUEST_ID", this.d);
        jSONObject.put("KEY_TIMESTAMP", this.c);
        return !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
    }
}
