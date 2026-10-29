package com.chartboost.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.CBError;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.protocol.HTTP;

/* JADX INFO: loaded from: classes.dex */
public final class az {
    private static com.chartboost.sdk.Libraries.e.a g = null;
    private String a;
    private String b;
    private com.chartboost.sdk.Libraries.e.a c;
    private Map<String, Object> d;
    private Map<String, Object> e;
    private int m;
    private c h = null;
    private boolean i = false;
    private boolean j = false;
    private com.chartboost.sdk.Libraries.g.a k = null;
    private boolean n = false;
    private boolean o = true;
    private l.a p = l.a.NORMAL;
    private String f = "POST";
    private ba l = ba.a(com.chartboost.sdk.b.y());

    public static abstract class b implements c {
    }

    public interface c {
        void a(com.chartboost.sdk.Libraries.e.a aVar, az azVar);

        void a(com.chartboost.sdk.Libraries.e.a aVar, az azVar, CBError cBError);
    }

    public az(String str) {
        this.a = str;
        a(0);
    }

    protected void a() {
        if (this.e == null) {
            this.e = new HashMap();
        }
        this.e.put("Accept", "application/json");
        this.e.put("X-Chartboost-Client", CBUtility.d());
        this.e.put("X-Chartboost-API", "5.5.3");
        this.e.put("X-Chartboost-Client", CBUtility.d());
    }

    protected String b() {
        return "application/json";
    }

    public void a(String str, Object obj) {
        if (this.c == null) {
            this.c = com.chartboost.sdk.Libraries.e.a.a();
        }
        this.c.a(str, obj);
    }

    public void a(String str, String str2) {
        if (this.e == null) {
            this.e = new HashMap();
        }
        this.e.put(str, str2);
    }

    public void a(String str, com.chartboost.sdk.Libraries.e.a aVar) {
        if (aVar != null && aVar.c(str)) {
            a(str, (Object) aVar.e(str));
        }
    }

    protected void a(Context context) {
        String strSubstring;
        String strSubstring2 = null;
        a(SettingsJsonConstants.APP_KEY, com.chartboost.sdk.b.e());
        if (CommonUtils.SDK.equals(Build.PRODUCT)) {
            a("model", "Android Simulator");
        } else {
            a("model", Build.MODEL);
        }
        a("device_type", Build.MANUFACTURER + " " + Build.MODEL);
        a("os", "Android " + Build.VERSION.RELEASE);
        a("country", Locale.getDefault().getCountry());
        a("language", Locale.getDefault().getLanguage());
        a(CommonUtils.SDK, "5.5.3");
        a("timestamp", String.valueOf(Long.valueOf(new Date().getTime() / 1000).intValue()));
        a(SettingsJsonConstants.SESSION_KEY, Integer.valueOf(CBUtility.a().getInt("cbPrefSessionCount", 0)));
        a("reachability", Integer.valueOf(ay.a().b()));
        b(context);
        a("scale", "" + context.getResources().getDisplayMetrics().density);
        a("is_portrait", Integer.valueOf(CBUtility.c().b() ? 1 : 0));
        try {
            String packageName = context.getPackageName();
            a("bundle", context.getPackageManager().getPackageInfo(packageName, 128).versionName);
            a("bundle_id", (Object) packageName);
        } catch (Exception e) {
            CBLogging.b("CBRequest", "Exception raised getting package mager object", e);
        }
        if (g == null) {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null && telephonyManager.getPhoneType() != 0) {
                String simOperator = telephonyManager.getSimOperator();
                if (TextUtils.isEmpty(simOperator)) {
                    strSubstring = null;
                } else {
                    strSubstring = simOperator.substring(0, 3);
                    strSubstring2 = simOperator.substring(3);
                }
                g = com.chartboost.sdk.Libraries.e.a(com.chartboost.sdk.Libraries.e.a("carrier-name", telephonyManager.getNetworkOperatorName()), com.chartboost.sdk.Libraries.e.a("mobile-country-code", strSubstring), com.chartboost.sdk.Libraries.e.a("mobile-network-code", strSubstring2), com.chartboost.sdk.Libraries.e.a("iso-country-code", telephonyManager.getNetworkCountryIso()), com.chartboost.sdk.Libraries.e.a("phone-type", Integer.valueOf(telephonyManager.getPhoneType())));
            } else {
                g = com.chartboost.sdk.Libraries.e.a.a();
            }
        }
        a(AnalyticAttribute.CARRIER_ATTRIBUTE, g);
        a("custom_id", com.chartboost.sdk.b.o());
        if (com.chartboost.sdk.b.a() != null) {
            String strC = com.chartboost.sdk.b.c();
            if (!TextUtils.isEmpty(strC)) {
                a("framework_version", (Object) strC);
            }
            String strB = com.chartboost.sdk.b.b();
            if (!TextUtils.isEmpty(strB)) {
                a("wrapper_version", (Object) strB);
            }
        }
        if (com.chartboost.sdk.b.d() != null) {
            String strD = com.chartboost.sdk.b.d();
            if (!TextUtils.isEmpty(strD)) {
                a("mediation", (Object) strD);
            }
        }
        a("rooted_device", Boolean.valueOf(CBUtility.f()));
        a("timezone", CBUtility.g());
        a("mobile_network", ay.d());
    }

    public void c() {
        a(HTTP.IDENTITY_CODING, (Object) com.chartboost.sdk.Libraries.c.b());
        com.chartboost.sdk.Libraries.c.a aVarC = com.chartboost.sdk.Libraries.c.c();
        if (aVarC.b()) {
            a("tracking", Integer.valueOf(aVarC.a()));
        }
    }

    public void d() {
        String strE = com.chartboost.sdk.b.e();
        String strB = com.chartboost.sdk.Libraries.b.b(com.chartboost.sdk.Libraries.b.a(String.format(Locale.US, "%s %s\n%s\n%s", this.f, e(), com.chartboost.sdk.b.f(), f()).getBytes()));
        a("X-Chartboost-App", strE);
        a("X-Chartboost-Signature", strB);
    }

    public String e() {
        return g() + CBUtility.a(this.d);
    }

    public String f() {
        return this.c.toString();
    }

    public void b(Context context) {
        Exception exc;
        int i;
        int iHeight;
        int i2 = 0;
        if (this.c == null || !this.c.a("w").c() || !this.c.a("h").c()) {
            try {
                if (context instanceof Activity) {
                    Rect rect = new Rect();
                    ((Activity) context).getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
                    int iWidth = rect.width();
                    try {
                        iHeight = rect.height();
                        i2 = iWidth;
                    } catch (Exception e) {
                        i = iWidth;
                        exc = e;
                        CBLogging.c("CBRequest", "Exception getting activity size", exc);
                        i2 = i;
                        iHeight = 0;
                    }
                } else {
                    iHeight = 0;
                }
            } catch (Exception e2) {
                exc = e2;
                i = 0;
            }
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            int i3 = displayMetrics.widthPixels;
            int i4 = displayMetrics.heightPixels;
            a("dw", (Object) ("" + i3));
            a("dh", (Object) ("" + i4));
            a("dpi", (Object) ("" + displayMetrics.densityDpi));
            if (i2 <= 0 || i2 > i3) {
                i2 = i3;
            }
            if (iHeight <= 0 || iHeight > i4) {
                iHeight = i4;
            }
            a("w", (Object) ("" + i2));
            a("h", (Object) ("" + iHeight));
        }
    }

    public String g() {
        if (this.a == null) {
            return "/";
        }
        return (this.a.startsWith("/") ? "" : "/") + this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public boolean h() {
        return g().equals("/api/track");
    }

    public com.chartboost.sdk.Libraries.e.a i() {
        return this.c;
    }

    public Map<String, Object> j() {
        return this.e;
    }

    public boolean k() {
        return this.j;
    }

    public void a(boolean z) {
        this.j = z;
    }

    public com.chartboost.sdk.Libraries.g.a l() {
        return this.k;
    }

    public boolean m() {
        return this.n;
    }

    public void b(boolean z) {
        this.n = z;
    }

    public void a(com.chartboost.sdk.Libraries.g.a aVar) {
        if (!com.chartboost.sdk.Libraries.g.c(aVar)) {
            CBLogging.b("CBRequest", "Validation predicate must be a dictionary style -- either VDictionary, VDictionaryExact, VDictionaryWithValues, or just a list of KV pairs.");
        }
        this.k = aVar;
    }

    public void a(com.chartboost.sdk.Libraries.g.k... kVarArr) {
        this.k = com.chartboost.sdk.Libraries.g.a(kVarArr);
    }

    public void b(String str) {
        this.b = str;
    }

    public void a(l.a aVar) {
        this.p = aVar;
    }

    public l.a n() {
        return this.p;
    }

    public int o() {
        return this.m;
    }

    public void a(int i) {
        this.m = i;
    }

    public boolean p() {
        return this.o;
    }

    public void c(boolean z) {
        this.o = z;
    }

    public boolean q() {
        return this.i;
    }

    public void d(boolean z) {
        this.i = z;
    }

    public c r() {
        return this.h;
    }

    public static abstract class d implements c {
        @Override // com.chartboost.sdk.impl.az.c
        public void a(com.chartboost.sdk.Libraries.e.a aVar, az azVar, CBError cBError) {
        }
    }

    private static class a implements c {
        private d a;
        private b b;

        public a(d dVar, b bVar) {
            this.a = dVar;
            this.b = bVar;
        }

        @Override // com.chartboost.sdk.impl.az.c
        public void a(com.chartboost.sdk.Libraries.e.a aVar, az azVar) {
            if (this.a != null) {
                this.a.a(aVar, azVar);
            }
        }

        @Override // com.chartboost.sdk.impl.az.c
        public void a(com.chartboost.sdk.Libraries.e.a aVar, az azVar, CBError cBError) {
            if (this.b != null) {
                this.b.a(aVar, azVar, cBError);
            }
        }
    }

    public void s() {
        a((d) null, (b) null);
    }

    public void a(c cVar) {
        if (!com.chartboost.sdk.b.l()) {
            this.j = false;
            this.n = false;
        }
        this.h = cVar;
        d(true);
        this.l.a(this, cVar);
    }

    public void a(d dVar, b bVar) {
        if (!com.chartboost.sdk.b.l()) {
            this.j = false;
            this.n = false;
        }
        d(true);
        this.h = new a(dVar, bVar);
        this.l.a(this, this.h);
    }

    public void b(c cVar) {
        if (cVar != null) {
            this.h = cVar;
        }
    }

    public static az a(com.chartboost.sdk.Libraries.e.a aVar) {
        try {
            az azVar = new az(aVar.e(ClientCookie.PATH_ATTR));
            azVar.f = aVar.e("method");
            azVar.d = aVar.a("query").f();
            azVar.c = aVar.a("body");
            azVar.e = aVar.a("headers").f();
            azVar.j = aVar.i("ensureDelivery");
            azVar.b = aVar.e(AnalyticAttribute.EVENT_TYPE_ATTRIBUTE);
            azVar.a = aVar.e(ClientCookie.PATH_ATTR);
            azVar.m = aVar.f("retryCount");
            if (aVar.a("callback") instanceof c) {
                azVar.h = (c) aVar.a("callback");
            }
            return azVar;
        } catch (Exception e) {
            CBLogging.d("CBRequest", "Unable to deserialize failed request", e);
            return null;
        }
    }

    public com.chartboost.sdk.Libraries.e.a t() {
        return com.chartboost.sdk.Libraries.e.a(com.chartboost.sdk.Libraries.e.a(ClientCookie.PATH_ATTR, this.a), com.chartboost.sdk.Libraries.e.a("method", this.f), com.chartboost.sdk.Libraries.e.a("query", com.chartboost.sdk.Libraries.e.a(this.d)), com.chartboost.sdk.Libraries.e.a("body", this.c), com.chartboost.sdk.Libraries.e.a(AnalyticAttribute.EVENT_TYPE_ATTRIBUTE, this.b), com.chartboost.sdk.Libraries.e.a("headers", com.chartboost.sdk.Libraries.e.a(this.e)), com.chartboost.sdk.Libraries.e.a("ensureDelivery", Boolean.valueOf(this.j)), com.chartboost.sdk.Libraries.e.a("retryCount", Integer.valueOf(this.m)), com.chartboost.sdk.Libraries.e.a("callback", this.h));
    }
}
