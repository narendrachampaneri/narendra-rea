package com.chartboost.sdk.Tracking;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.amazon.insights.delivery.DefaultDeliveryClient;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.c;
import com.chartboost.sdk.Libraries.e;
import com.chartboost.sdk.Libraries.g;
import com.chartboost.sdk.Libraries.h;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.b;
import com.chartboost.sdk.impl.az;
import com.chartboost.sdk.impl.ba;
import com.chartboost.sdk.impl.l;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.lang.reflect.Method;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a implements com.chartboost.sdk.Libraries.a {
    private static a k;
    private String c;
    private long f;
    private long g;
    private static final String b = a.class.getSimpleName();
    private static boolean l = false;
    private long h = System.currentTimeMillis();
    private String d = o();
    private JSONArray e = new JSONArray();
    private h i = new h("CBTrackingDirectory", false);
    private h j = new h("CBSessionDirectory", false);

    private a() {
    }

    public static a a() {
        if (k == null) {
            synchronized (Chartboost.class) {
                if (k == null) {
                    k = new a();
                }
            }
        }
        return k;
    }

    public static void b() {
        a("start");
        a("did-become-active");
    }

    public static void a(String str) {
        k.a(SettingsJsonConstants.SESSION_KEY, str, (String) null, (String) null, (String) null, (String) null, SettingsJsonConstants.SESSION_KEY);
    }

    public void c() {
        a(false);
    }

    public void a(boolean z) {
        e.a aVarA = e.a.a();
        aVarA.a("complete", Boolean.valueOf(z));
        k.a(SettingsJsonConstants.SESSION_KEY, "end", null, null, null, null, aVarA.e(), SettingsJsonConstants.SESSION_KEY);
        a("did-become-active");
    }

    public static void a(String str, String str2, boolean z) {
        k.a("ad-get", str, str2, b(z), "single", (String) null, "system");
    }

    public static void b(String str, String str2, boolean z) {
        k.a("ad-has", str, str2, b(z), (String) null, (String) null, "system");
    }

    public static void c(String str, String str2, boolean z) {
        k.a("ad-loaded", str, str2, b(z), (String) null, (String) null, "system");
    }

    public static void a(String str, String str2, String str3) {
        k.a("ad-show", str, str2, str3, (String) null, (String) null, "system");
    }

    public static void b(String str, String str2, String str3) {
        k.a("ad-click", str, str2, str3, (String) null, (String) null, "system");
    }

    public static void a(String str, String str2, String str3, int i) {
        k.a("ad-click", str, str2, str3, a(i), (String) null, "system");
    }

    public static void c(String str, String str2, String str3) {
        k.a("ad-close", str, str2, str3, (String) null, (String) null, "system");
    }

    public static void a(String str, String str2, CBError.CBImpressionError cBImpressionError) {
        k.a("ad-error", str, str2, cBImpressionError != null ? cBImpressionError.toString() : "", (String) null, (String) null, "system");
    }

    public static void d() {
        k.a("video-prefetcher", "begin", (String) null, (String) null, (String) null, (String) null, "system");
    }

    public static void e() {
        k.a("video-prefetcher", (String) null, (String) null, (String) null, (String) null, (String) null, "system");
    }

    public static void a(String str, String str2) {
        k.a("start", str, str2, (String) null, (String) null, (String) null, "system");
    }

    public static void a(String str, String str2, String str3, String str4) {
        k.a("failure", str, str2, str3, str4, (String) null, "system");
    }

    public static void d(String str, String str2, String str3) {
        k.a("success", str, str2, str3, (String) null, (String) null, "system");
    }

    public static void e(String str, String str2, String str3) {
        k.a(str, str2, str3, (String) null, (String) null, (String) null, "system");
    }

    public static void b(String str, String str2) {
        k.a("confirmation-show", str, str2, (String) null, (String) null, (String) null, "system");
    }

    public static void d(String str, String str2, boolean z) {
        k.a("confirmation-dismiss", str, str2, b(z), (String) null, (String) null, "system");
    }

    public static void c(String str, String str2) {
        k.a("replay", str, str2, (String) null, (String) null, (String) null, "system");
    }

    public static void a(String str, String str2, int i) {
        k.a("playback-start", str, str2, a(i), (String) null, (String) null, "system");
    }

    public static void d(String str, String str2) {
        k.a("playback-stop", str, str2, (String) null, (String) null, (String) null, "system");
    }

    public static void b(String str, String str2, int i) {
        k.a("close-show", str, str2, a(i), (String) null, (String) null, "system");
    }

    public static void e(String str, String str2, boolean z) {
        k.a("controls-toggle", str, str2, b(z), (String) null, (String) null, "system");
    }

    public static void a(String str, String str2, String str3, int i, int i2) {
        k.a("install-click", str, str3, str2, a(i), a(i2), "system");
    }

    public static void a(String str, String str2, String str3, String str4, String str5, String str6, JSONObject jSONObject) {
        k.a(str, str2, str3, str4, str5, str6, jSONObject, "system");
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        k.a(str, str2, str3, str4, str5, str6, new JSONObject(), str7);
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, JSONObject jSONObject, String str7) {
        JSONObject jSONObject2;
        try {
            Method declaredMethod = b.class.getDeclaredMethod("k", new Class[0]);
            declaredMethod.setAccessible(true);
            jSONObject2 = (JSONObject) declaredMethod.invoke(null, new Object[0]);
        } catch (Exception e) {
            CBLogging.b(this, "Error encountered getting tracking levels", e);
            CBUtility.throwProguardError(e);
            jSONObject2 = null;
        }
        e.a aVarA = e.a.a();
        if (jSONObject2 != null && jSONObject2.optBoolean(str7)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = jCurrentTimeMillis - this.f;
            long j2 = jCurrentTimeMillis - this.h;
            aVarA.a("event", a((Object) str));
            aVarA.a("kingdom", a((Object) str2));
            aVarA.a("phylum", a((Object) str3));
            aVarA.a("class", a((Object) str4));
            aVarA.a("family", a((Object) str5));
            aVarA.a("genus", a((Object) str6));
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            aVarA.a("meta", jSONObject);
            aVarA.a("clientTimestamp", Long.valueOf(System.currentTimeMillis() / 1000));
            aVarA.a("session_id", k());
            aVarA.a("totalSessionTime", Long.valueOf(j / 1000));
            aVarA.a("currentSessionTime", Long.valueOf(j2 / 1000));
            synchronized (this) {
                if (ba.h() || f()) {
                    p();
                }
                this.e.put(aVarA.e());
                e.a aVarA2 = e.a.a();
                aVarA2.a(DefaultDeliveryClient.EVENTS_DIRECTORY, this.e);
                CBLogging.a(b, "###Writing" + a((Object) str) + "to tracking cache dir");
                this.i.a(this.d, e.a.a(aVarA2));
                j();
            }
        }
    }

    public boolean f() {
        return this.e != null && this.e.length() >= 50;
    }

    public String g() {
        e.a aVarA = e.a.a();
        aVarA.a("startTime", Long.valueOf(System.currentTimeMillis()));
        aVarA.a("deviceID", c.e());
        this.c = com.chartboost.sdk.Libraries.b.b(aVarA.toString().getBytes());
        return this.c;
    }

    public void h() {
        e.a aVarA = this.j.a("cb_previous_session_info");
        if (aVarA != null) {
            this.g = aVarA.h("timestamp");
            this.f = aVarA.h("start_timestamp");
            this.c = aVarA.e("session_id");
            if (System.currentTimeMillis() - this.g <= 180000) {
                if (!TextUtils.isEmpty(this.c)) {
                    j();
                    l = false;
                    return;
                }
            } else {
                a(true);
            }
        }
        i();
        l = true;
    }

    public void i() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f = jCurrentTimeMillis;
        this.g = jCurrentTimeMillis;
        this.c = g();
        a(jCurrentTimeMillis, jCurrentTimeMillis);
        SharedPreferences sharedPreferencesA = CBUtility.a();
        int i = sharedPreferencesA.getInt("cbPrefSessionCount", 0) + 1;
        SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
        editorEdit.putInt("cbPrefSessionCount", i);
        editorEdit.commit();
    }

    public void j() {
        a(this.f, System.currentTimeMillis());
    }

    public void a(long j, long j2) {
        e.a aVarA = e.a.a();
        aVarA.a("start_timestamp", Long.valueOf(j));
        aVarA.a("timestamp", Long.valueOf(j2));
        aVarA.a("session_id", this.c);
        this.j.a("cb_previous_session_info", aVarA);
    }

    public az a(e.a aVar) {
        az azVar = new az("/api/track");
        azVar.a("track", (Object) aVar);
        azVar.a(g.a(g.a("status", com.chartboost.sdk.Libraries.a.a)));
        azVar.a(l.a.LOW);
        return azVar;
    }

    public String toString() {
        return "Session [ startTime: " + n() + " sessionEvents: " + m() + " ]";
    }

    public String k() {
        return this.c;
    }

    public h l() {
        return this.i;
    }

    public JSONArray m() {
        return this.e;
    }

    public long n() {
        return this.f;
    }

    public String o() {
        return new Long(System.nanoTime()).toString();
    }

    public static String b(boolean z) {
        return z ? "1" : "0";
    }

    public static String a(int i) {
        return new Integer(i).toString();
    }

    private static Object a(Object obj) {
        return obj != null ? obj : "";
    }

    public boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return str.equals("cb_previous_session_info");
    }

    public void p() {
        this.e = new JSONArray();
        this.d = o();
    }
}
