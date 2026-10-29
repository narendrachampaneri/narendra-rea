package com.chartboost.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.g;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.impl.az;
import com.chartboost.sdk.impl.l;
import com.mopub.mobileads.ChartboostShared;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static c.a a;
    private static String c;
    private static String d;
    private static com.chartboost.sdk.a e;
    private static final String b = b.class.getSimpleName();
    private static boolean f = false;
    private static boolean g = false;
    private static boolean h = false;
    private static Chartboost.CBFramework i = null;
    private static String j = null;
    private static String k = null;
    private static String l = null;
    private static String m = null;
    private static SharedPreferences n = null;
    private static boolean o = true;
    private static volatile boolean p = false;
    private static Context q = null;
    private static Application r = null;
    private static boolean s = false;
    private static boolean t = true;
    private static boolean u = false;
    private static boolean v = true;

    public interface a {
        void a();
    }

    private b() {
    }

    private static SharedPreferences A() {
        if (n == null) {
            n = CBUtility.a();
        }
        return n;
    }

    public static void a(Chartboost.CBFramework cBFramework) {
        if (t()) {
            if (cBFramework == null) {
                CBLogging.b(b, "Pass a valid CBFramework enum value");
            } else {
                i = cBFramework;
            }
        }
    }

    public static void a(Chartboost.CBFramework cBFramework, String str) {
        a(cBFramework);
        j = str;
    }

    public static Chartboost.CBFramework a() {
        t();
        if (i == null) {
            return null;
        }
        return i;
    }

    public static String b() {
        return String.format("%s %s", i, j);
    }

    public static void a(String str) {
        if (t()) {
            if (i == null) {
                CBLogging.b(b, "Set a valid CBFramework first");
            } else if (TextUtils.isEmpty(str)) {
                CBLogging.b(b, "Invalid Version String");
            } else {
                k = str;
            }
        }
    }

    public static String c() {
        t();
        return k;
    }

    public static void a(String str, String str2) {
        if (t()) {
            l = str + " " + str2;
        }
    }

    public static String d() {
        t();
        return l;
    }

    public static String e() {
        if (!t()) {
            return "";
        }
        c = A().getString("appId", c);
        return c;
    }

    public static void b(String str) {
        c = str;
        A().edit().putString("appId", str).commit();
    }

    public static String f() {
        if (!t()) {
            return "";
        }
        d = A().getString(ChartboostShared.APP_SIGNATURE_KEY, d);
        return d;
    }

    public static void c(String str) {
        d = str;
        A().edit().putString(ChartboostShared.APP_SIGNATURE_KEY, str).commit();
    }

    public static com.chartboost.sdk.a g() {
        if (t()) {
            return e;
        }
        return null;
    }

    public static void a(com.chartboost.sdk.a aVar) {
        if (t()) {
            e = aVar;
        }
    }

    public static boolean h() {
        if (t()) {
            return f;
        }
        return false;
    }

    public static void a(boolean z) {
        if (t()) {
            f = z;
        }
    }

    public static boolean i() {
        if (t()) {
            return h;
        }
        return false;
    }

    public static boolean j() {
        return o;
    }

    public static void b(boolean z) {
        o = z;
    }

    public static JSONObject k() {
        if (!t()) {
            return null;
        }
        String string = A().getString("trackingLevels", "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        com.chartboost.sdk.Libraries.e.a aVarJ = com.chartboost.sdk.Libraries.e.a.j(string);
        if (aVarJ.c()) {
            return aVarJ.e();
        }
        return null;
    }

    public static boolean l() {
        t();
        return A().getBoolean("retriesEnabled", true);
    }

    public static boolean m() {
        JSONObject jSONObjectK;
        if (t() && (jSONObjectK = k()) != null) {
            return jSONObjectK.optBoolean("debug") || jSONObjectK.optBoolean(SettingsJsonConstants.SESSION_KEY) || jSONObjectK.optBoolean("system") || jSONObjectK.optBoolean("user");
        }
        return false;
    }

    public static void a(CBLogging.Level level) {
        t();
        CBLogging.a = level;
    }

    public static CBLogging.Level n() {
        t();
        return CBLogging.a;
    }

    public static String o() {
        return !t() ? "" : m;
    }

    public static void d(String str) {
        if (t()) {
            m = str;
        }
    }

    public static void a(com.chartboost.sdk.Libraries.e.a aVar) {
        Map<String, Object> mapF;
        if (aVar != null && (mapF = aVar.f()) != null) {
            SharedPreferences.Editor editorEdit = A().edit();
            for (String str : mapF.keySet()) {
                Object obj = mapF.get(str);
                if (obj instanceof String) {
                    editorEdit.putString(str, (String) obj);
                } else if (obj instanceof Integer) {
                    editorEdit.putInt(str, ((Integer) obj).intValue());
                } else if (obj instanceof Float) {
                    editorEdit.putFloat(str, ((Float) obj).floatValue());
                } else if (obj instanceof Long) {
                    editorEdit.putLong(str, ((Long) obj).longValue());
                } else if (obj instanceof Boolean) {
                    editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
                } else if (obj != null) {
                    editorEdit.putString(str, obj.toString());
                }
            }
            editorEdit.commit();
        }
    }

    public static void a(final a aVar) {
        az azVar = new az("/api/config");
        azVar.a(false);
        azVar.b(false);
        azVar.a(l.a.HIGH);
        azVar.a(g.a(g.a("status", com.chartboost.sdk.Libraries.a.a)));
        azVar.a(new az.c() { // from class: com.chartboost.sdk.b.1
            @Override // com.chartboost.sdk.impl.az.c
            public void a(com.chartboost.sdk.Libraries.e.a aVar2, az azVar2) {
                if (aVar2 != null) {
                    b.a(aVar2.a("response"));
                }
                if (aVar != null) {
                    aVar.a();
                }
            }

            @Override // com.chartboost.sdk.impl.az.c
            public void a(com.chartboost.sdk.Libraries.e.a aVar2, az azVar2, CBError cBError) {
                if (aVar != null) {
                    aVar.a();
                }
            }
        });
    }

    public static boolean p() {
        return p;
    }

    protected static void c(boolean z) {
        p = z;
    }

    public static boolean q() {
        return t() && s() && r();
    }

    public static boolean r() {
        if (p()) {
            return true;
        }
        try {
            throw new Exception("Session not started: Check if Chartboost.onStart() is called, if not the session won't be invoked");
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean s() {
        if (Chartboost.b != null) {
            return true;
        }
        try {
            throw new Exception("Chartboost Weak Activity reference is null");
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean a(Activity activity) {
        if (activity != null) {
            return true;
        }
        try {
            throw new Exception("Invalid activity context: Host Activity object is null, Please send a valid activity object");
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean t() {
        if (z() != null && !TextUtils.isEmpty(c) && !TextUtils.isEmpty(d)) {
            return true;
        }
        try {
            throw new Exception("Chartboost Initialization error. Activity or appId or appSignature is invalid");
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void d(boolean z) {
        if (a != null) {
            a.a(z);
        }
    }

    protected static void e(boolean z) {
        s = z;
    }

    public static boolean u() {
        return s;
    }

    public static void f(boolean z) {
        t = z;
    }

    public static boolean v() {
        return t;
    }

    public static void g(boolean z) {
        u = z;
    }

    public static boolean w() {
        return u;
    }

    public static void h(boolean z) {
        v = z;
    }

    public static boolean x() {
        return v;
    }

    public static void a(Context context) {
        q = context;
    }

    public static Context y() {
        return q;
    }

    public static Application z() {
        return r;
    }

    public static void a(Application application) {
        r = application;
    }

    public static boolean b(Context context) {
        try {
            if (context == null) {
                throw new RuntimeException("Invalid activity context passed during intitalization");
            }
            int iCheckCallingOrSelfPermission = context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE");
            int iCheckCallingOrSelfPermission2 = context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE");
            int iCheckCallingOrSelfPermission3 = context.checkCallingOrSelfPermission("android.permission.INTERNET");
            if (iCheckCallingOrSelfPermission != 0) {
                throw new RuntimeException("Please add the permission : android.permission.WRITE_EXTERNAL_STORAGE in your android manifest.xml");
            }
            if (iCheckCallingOrSelfPermission3 != 0) {
                throw new RuntimeException("Please add the permission : android.permission.INTERNET in your android manifest.xml");
            }
            if (iCheckCallingOrSelfPermission2 != 0) {
                throw new RuntimeException("Please add the permission :  android.permission.ACCESS_NETWORK_STATE in your android manifest.xml");
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
