package com.applovin.impl.sdk;

import android.graphics.Point;
import com.applovin.adview.AppLovinInterstitialActivity;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.mopub.common.AdType;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class cm extends bv implements dg {
    private final AppLovinAdSize a;
    private final AppLovinAdType b;
    private final AppLovinAdLoadListener c;
    private boolean d;

    cm(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, AppLovinAdLoadListener appLovinAdLoadListener, AppLovinSdkImpl appLovinSdkImpl) {
        super("FetchNextAd", appLovinSdkImpl);
        this.d = false;
        this.a = appLovinAdSize;
        this.b = appLovinAdType;
        this.c = appLovinAdLoadListener;
    }

    private void a(cb cbVar) {
        if (System.currentTimeMillis() - cbVar.b("ad_session_start") > ((long) ((Integer) this.f.a(bw.x)).intValue()) * HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS) {
            cbVar.b("ad_session_start", System.currentTimeMillis());
            cbVar.c("ad_imp_session");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        this.g.e(this.e, "Unable to fetch " + this.a + " ad: server returned " + i);
        try {
            a(i);
        } catch (Throwable th) {
            this.g.userError(this.e, "Unable process a failure to recieve an ad", th);
        }
        q.b(i, this.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(JSONObject jSONObject) {
        this.f.a().a(a(jSONObject), cr.MAIN);
        q.a(jSONObject, this.f);
    }

    private void d(Map map) {
        map.put("api_did", this.f.a(bw.c));
        map.put("sdk_key", this.f.getSdkKey());
        map.put("sdk_version", AppLovinSdk.VERSION);
        String str = (String) this.f.a(bw.F);
        if (str != null && str.length() > 0) {
            map.put("plugin_version", str);
        }
        map.put("accept", g());
        map.put("v1", Boolean.toString(n.a("android.permission.WRITE_EXTERNAL_STORAGE", this.h)));
        map.put("v2", Boolean.toString(n.a(AppLovinInterstitialActivity.class, this.h)));
        map.put("preloading", String.valueOf(this.d));
        map.put("size", this.a.getLabel());
        map.put("format", AdType.NATIVE);
        map.put("ia", Long.toString(this.f.getDataCollector().b().d));
    }

    private void e(Map map) {
        if (((Boolean) this.f.a(bw.N)).booleanValue()) {
            cb cbVarB = this.f.b();
            map.put("li", String.valueOf(cbVarB.b("ad_imp")));
            map.put("si", String.valueOf(cbVarB.b("ad_imp_session")));
        }
    }

    private void f(Map map) {
        Map mapA;
        if (!((Boolean) this.f.a(bw.N)).booleanValue() || (mapA = ((m) this.f.getTargetingData()).a()) == null || mapA.isEmpty()) {
            return;
        }
        map.putAll(mapA);
    }

    private String g() {
        return (n.b() && n.a(AppLovinInterstitialActivity.class, this.h)) ? "custom_size,launch_app,video" : "custom_size,launch_app";
    }

    private void g(Map map) {
        Map mapA = a.a(this.f);
        if (mapA.isEmpty()) {
            try {
                h(mapA);
                a.a(mapA, this.f);
            } catch (Exception e) {
                this.g.e(this.e, "Unable to populate device information", e);
            }
        }
        map.putAll(mapA);
        map.put("network", q.a(this.f));
        j(map);
        map.put("vz", dh.a(this.f.getApplicationContext().getPackageName(), this.f));
    }

    private void h(Map map) {
        u uVarA = this.f.getDataCollector().a();
        map.put("brand", dh.c(uVarA.c));
        map.put(AnalyticAttribute.CARRIER_ATTRIBUTE, dh.c(uVarA.g));
        map.put("locale", uVarA.h.toString());
        map.put("model", dh.c(uVarA.a));
        map.put("os", dh.c(uVarA.b));
        map.put("platform", "android");
        map.put("revision", dh.c(uVarA.d));
        i(map);
    }

    private void i(Map map) {
        Point pointA = n.a(this.f.getApplicationContext());
        map.put("dx", Integer.toString(pointA.x));
        map.put("dy", Integer.toString(pointA.y));
    }

    private void j(Map map) {
        s sVarC = this.f.getDataCollector().c();
        String str = sVarC.b;
        boolean z = sVarC.a;
        if ((!z || ((Boolean) this.f.getSettingsManager().a(bw.be)).booleanValue()) && AppLovinSdkUtils.isValidString(str)) {
            map.put("idfa", str);
        }
        map.put("dnt", Boolean.toString(z));
    }

    protected bv a(JSONObject jSONObject) {
        return new cv(jSONObject, this.c, this.f);
    }

    protected void a(int i) {
        if (this.c != null) {
            if (this.c instanceof w) {
                ((w) this.c).a(new c(this.a, this.b), i);
            } else {
                this.c.failedToReceiveAd(i);
            }
        }
    }

    protected void a(Map map) {
        f(map);
        g(map);
        e(map);
        d(map);
        b(map);
        c(map);
    }

    public void a(boolean z) {
        this.d = z;
    }

    @Override // com.applovin.impl.sdk.bv
    void b() {
        super.b();
        b(-410);
    }

    protected void b(Map map) {
        if (this.b != null) {
            map.put("require", this.b.getLabel());
        }
    }

    String c() {
        HashMap map = new HashMap();
        a(map);
        return d() + "?" + dh.a(map);
    }

    protected void c(Map map) {
        dd ddVarA = db.a().a("tFNA");
        if (ddVarA != null) {
            map.put("etf", Long.toString(ddVarA.b()));
            map.put("ntf", ddVarA.a());
        }
        dd ddVarA2 = db.a().a("tRA");
        if (ddVarA2 != null) {
            map.put("etr", Long.toString(ddVarA2.b()));
            map.put("ntr", ddVarA2.a());
            map.put("fvr", ddVarA2.c() ? "1" : "0");
        }
    }

    protected String d() {
        return q.b("2.0/ad", this.f);
    }

    @Override // com.applovin.impl.sdk.dg
    public String e() {
        return "tFNA";
    }

    @Override // com.applovin.impl.sdk.dg
    public boolean f() {
        return false;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.d) {
            this.g.d(this.e, "Preloading next ad...");
        } else {
            this.g.d(this.e, "Fetching next ad...");
        }
        cb cbVarB = this.f.b();
        cbVarB.a("ad_req");
        a(cbVarB);
        try {
            cn cnVar = new cn(this, "RepeatFetchNextAd", bw.i, this.f);
            cnVar.a(bw.l);
            cnVar.run();
        } catch (Throwable th) {
            this.g.e(this.e, "Unable to fetch " + this.a + " ad", th);
            b(0);
        }
    }
}
