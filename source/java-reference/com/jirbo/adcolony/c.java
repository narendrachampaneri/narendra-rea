package com.jirbo.adcolony;

import android.os.Build;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.amazon.identity.auth.device.endpoint.AbstractTokenRequest;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import org.apache.http.cookie.ClientCookie;

/* JADX INFO: loaded from: classes2.dex */
class c {
    static String c = "https://androidads23.adcolony.com/configure";
    String A;
    String B;
    String C;
    String D;
    String E;
    String F;
    String G;
    String H;
    String I;
    String J;
    String K;
    String L;
    String M;
    String N;
    boolean O;
    boolean P;
    d a;
    String h;
    ADCData.g j;
    String k;
    String[] l;
    n.ad m;
    n.a n;
    String u;
    String v;
    ADCData.c w;
    String x;
    String z;
    String b = "2.3.0";
    int d = 300;
    int e = 0;
    boolean f = false;
    boolean g = false;
    ADCData.g i = new ADCData.g();
    double o = 0.0d;
    String p = "android";
    String q = "android_native";
    String r = "1.0";
    String s = "google";
    boolean t = false;
    String y = "";

    c(d dVar) {
        this.a = dVar;
    }

    void a(String str) {
        if (str == null) {
            str = "";
        }
        for (String str2 : str.split(AppInfo.DELIM)) {
            String[] strArrSplit = str2.split(":");
            if (strArrSplit.length == 2) {
                String str3 = strArrSplit[0];
                String str4 = strArrSplit[1];
                if (str3.equals(ClientCookie.VERSION_ATTR)) {
                    this.r = str4;
                } else if (str3.equals("store")) {
                    if (str4.toLowerCase().equals("google") || str4.toLowerCase().equals("amazon")) {
                        this.s = str4;
                    } else {
                        throw new AdColonyException("Origin store in client options must be set to either 'google' or 'amazon'");
                    }
                } else if (str3.equals("skippable")) {
                    this.t = false;
                }
            } else if (strArrSplit[0].equals("skippable")) {
                this.t = false;
            }
        }
    }

    void a() {
        while (!AdColony.c && this.e < 60) {
            try {
                this.e++;
                Thread.sleep(50L);
            } catch (Exception e) {
            }
        }
        this.e = 0;
        this.a.g.a();
        this.L = a(g.a, "");
        this.O = g.b;
        this.u = a(g.a(), "");
        this.v = !this.L.equals("") ? "" : a(aa.b(this.u), "");
        this.x = a(g.b(), "");
        if (this.z == null) {
            this.z = a(g.e(), "");
        }
        this.A = a(g.l(), "");
        this.B = a(g.m(), "");
        this.F = a(g.j(), "en");
        this.G = a(g.n(), "");
        this.H = a(g.o(), "");
        this.K = a("" + Build.VERSION.SDK_INT, "");
        this.D = a(g.h(), "");
        this.E = "";
        this.I = a("" + g.c(), "");
        this.J = a("" + g.d(), "");
        this.P = aa.d() && aa.e();
        a.af = this.H;
        a.ag = this.b;
        if (a.m) {
            this.C = "tablet";
        } else {
            this.C = "phone";
        }
        this.w = new ADCData.c();
        if (aa.a("com.android.vending") || aa.a("com.android.market")) {
            this.w.a("google");
        }
        if (aa.a("com.amazon.venezia")) {
            this.w.a("amazon");
        }
        if (l.b.f) {
            l.b.a("sdk_version:").b((Object) this.b);
            l.b.a("ad_manifest_url:").b((Object) c);
            l.b.a("app_id:").b((Object) this.k);
            l.b.a("zone_ids:").b(this.l);
            l.b.a("os_name:").b((Object) this.p);
            l.b.a("sdk_type:").b((Object) this.q);
            l.b.a("app_version:").b((Object) this.r);
            l.b.a("origin_store:").b((Object) this.s);
            l.b.a("skippable:").b(this.t);
            l.b.a("android_id:").b((Object) this.u);
            l.b.a("android_id_sha1:").b((Object) this.v);
            l.b.a("available_stores:").b(this.w);
            l.b.a("carrier_name:").b((Object) this.x);
            l.b.a("custom_id:").b((Object) this.y);
            l.b.a("device_id:").b((Object) this.z);
            l.b.a("device_manufacturer:").b((Object) this.A);
            l.b.a("device_model:").b((Object) this.B);
            l.b.a("device_type:").b((Object) this.C);
            l.b.a("imei:").b((Object) this.D);
            l.b.a("imei_sha1:").b((Object) this.E);
            l.b.a("language:").b((Object) this.F);
            l.b.a("open_udid:").b((Object) this.G);
            l.b.a("os_version:").b((Object) this.H);
        }
        ADCData.g gVar = new ADCData.g();
        gVar.b("os_name", this.p);
        gVar.b("os_version", this.H);
        gVar.b("device_api", this.K);
        gVar.b(AbstractTokenRequest.APP_VERSION, this.r);
        gVar.b("android_id_sha1", this.v);
        gVar.b("device_id", this.z);
        gVar.b("open_udid", this.G);
        gVar.b("device_type", this.C);
        gVar.b("ln", this.F);
        gVar.b("device_brand", this.A);
        gVar.b("device_model", this.B);
        gVar.b("screen_width", g.f());
        gVar.b("screen_height", g.g());
        gVar.b("sdk_type", this.q);
        gVar.b("sdk_version", this.b);
        gVar.b("origin_store", this.s);
        gVar.a("available_stores", (ADCData.i) this.w);
        gVar.b("imei_sha1", this.E);
        gVar.b("memory_class", this.I);
        gVar.b("memory_used_mb", this.J);
        gVar.b("advertiser_id", this.L);
        gVar.b("limit_tracking", this.O);
        gVar.b("immersion", this.P);
        this.j = gVar;
        this.a.f.a();
        this.a.c.a();
        this.a.d.a();
        this.a.b.a();
        this.a.e.a();
        this.g = true;
        a.l.b.i.n = new n.ag();
        this.a.b.h();
        if (this.a.b.i.i == null || this.a.b.i.i.equals("")) {
            this.a.b.i.i = "all";
        }
        if (this.a.b.i.j == null || this.a.b.i.j.equals("")) {
            this.a.b.i.j = "all";
        }
    }

    String a(String str, String str2) {
        return str != null ? str : str2;
    }

    void b(String str) {
        a(str, (n.a) null);
    }

    void a(String str, n.a aVar) {
        this.m = this.a.b.i.n.a(str);
        if (this.m != null) {
            if (aVar == null) {
                this.n = this.m.k();
            } else {
                this.n = aVar;
            }
            if (this.n != null) {
                o oVar = this.a.c;
                n.ac acVar = this.n.z;
                this.i.b("video_enabled", acVar.a);
                this.i.b("video_filepath", acVar.b());
                this.i.b("video_width", acVar.b);
                this.i.b("video_height", acVar.c);
                this.i.b("video_duration", acVar.k);
                this.i.b("engagement_delay", acVar.m.e);
                this.i.b("skip_delay", acVar.l.e);
                this.i.b("browser_close_image_normal", oVar.b(this.n.v.k.f));
                this.i.b("browser_close_image_down", oVar.b(this.n.v.k.h));
                this.i.b("browser_reload_image_normal", oVar.b(this.n.v.m.f));
                this.i.b("browser_reload_image_down", oVar.b(this.n.v.m.h));
                this.i.b("browser_back_image_normal", oVar.b(this.n.v.j.f));
                this.i.b("browser_back_image_down", oVar.b(this.n.v.j.h));
                this.i.b("browser_forward_image_normal", oVar.b(this.n.v.l.f));
                this.i.b("browser_forward_image_down", oVar.b(this.n.v.l.h));
                this.i.b("browser_stop_image_normal", oVar.b(this.n.v.i.f));
                this.i.b("browser_stop_image_down", oVar.b(this.n.v.i.h));
                this.i.b("browser_glow_button", oVar.b(this.n.v.a));
                this.i.b("browser_icon", oVar.b(this.n.v.h.d));
                this.i.b("mute", oVar.b(this.n.A.j.d));
                this.i.b("unmute", oVar.b(this.n.A.k.d));
                this.i.b("poster_image", oVar.b(this.n.A.g.a));
                this.i.b("thumb_image", oVar.b(this.n.A.f.a));
                this.i.b("advertiser_name", this.n.A.c);
                this.i.b("description", this.n.A.d);
                this.i.b("title", this.n.A.e);
                this.i.b("click_to_install", this.n.A.g.c.equals(AnalyticAttribute.APP_INSTALL_ATTRIBUTE));
                this.i.b("store_url", this.n.A.g.d);
                this.i.b("native_engagement_enabled", this.n.A.h.a);
                this.i.b("native_engagement_type", this.n.A.h.c);
                this.i.b("native_engagement_command", this.n.A.h.e);
                this.i.b("native_engagement_label", this.n.A.h.d);
                this.i.b("skip_video_image_normal", oVar.b(acVar.l.f));
                this.i.b("skip_video_image_down", oVar.b(acVar.l.h));
                this.i.b("engagement_image_normal", oVar.b(acVar.m.f));
                this.i.b("engagement_image_down", oVar.b(acVar.m.h));
                this.i.b("engagement_height", acVar.m.c);
                this.i.b("image_overlay_enabled", acVar.n.a);
                this.i.b("image_overlay_filepath", oVar.b(acVar.n.f));
                this.i.b("haptics_enabled", acVar.o.a);
                this.i.b("haptics_filepath", oVar.b(acVar.o.c));
                this.i.b("v4iap_enabled", this.n.B.c);
                this.i.b("product_id", this.n.B.a);
                this.i.b("in_progress", this.n.B.b);
                b();
            }
        }
    }

    void c(String str) {
        this.m = this.a.b.i.n.a(str);
        this.n = this.m.k();
        o oVar = this.a.c;
        n.ac acVar = this.n.z;
        this.i.b("video_enabled", acVar.a);
        this.i.b("video_filepath", acVar.b());
        this.i.b("video_width", acVar.b);
        this.i.b("video_height", acVar.c);
        this.i.b("video_duration", acVar.k);
        a.q = acVar.k;
        this.i.b("engagement_delay", acVar.m.e);
        this.i.b("skip_delay", acVar.l.e);
        b();
        n.c cVar = this.n.w;
        this.i.b("pre_popup_bg", oVar.b(cVar.b.d.e));
        this.i.b("v4vc_logo", oVar.b(cVar.b.d.l.d));
        this.i.b("no_button_normal", oVar.b(cVar.b.d.n.f));
        this.i.b("no_button_down", oVar.b(cVar.b.d.n.h));
        this.i.b("yes_button_normal", oVar.b(cVar.b.d.m.f));
        this.i.b("yes_button_down", oVar.b(cVar.b.d.m.h));
        this.i.b("done_button_normal", oVar.b(cVar.c.d.m.f));
        this.i.b("done_button_down", oVar.b(cVar.c.d.m.h));
        this.i.b("browser_close_image_normal", oVar.b(this.n.v.k.f));
        this.i.b("browser_close_image_down", oVar.b(this.n.v.k.h));
        this.i.b("browser_reload_image_normal", oVar.b(this.n.v.m.f));
        this.i.b("browser_reload_image_down", oVar.b(this.n.v.m.h));
        this.i.b("browser_back_image_normal", oVar.b(this.n.v.j.f));
        this.i.b("browser_back_image_down", oVar.b(this.n.v.j.h));
        this.i.b("browser_forward_image_normal", oVar.b(this.n.v.l.f));
        this.i.b("browser_forward_image_down", oVar.b(this.n.v.l.h));
        this.i.b("browser_stop_image_normal", oVar.b(this.n.v.i.f));
        this.i.b("browser_stop_image_down", oVar.b(this.n.v.i.h));
        this.i.b("browser_glow_button", oVar.b(this.n.v.a));
        this.i.b("browser_icon", oVar.b(this.n.v.h.d));
        this.i.b("skip_video_image_normal", oVar.b(acVar.l.f));
        this.i.b("skip_video_image_down", oVar.b(acVar.l.h));
        this.i.b("engagement_image_normal", oVar.b(acVar.m.f));
        this.i.b("engagement_image_down", oVar.b(acVar.m.h));
        this.i.b("engagement_height", acVar.m.c);
        this.i.b("image_overlay_enabled", acVar.n.a);
        this.i.b("image_overlay_filepath", oVar.b(acVar.n.f));
        this.i.b("haptics_enabled", acVar.o.a);
        this.i.b("haptics_filepath", oVar.b(acVar.o.c));
        this.i.b("v4iap_enabled", this.n.B.c);
        this.i.b("product_id", this.n.B.a);
        this.i.b("in_progress", this.n.B.b);
    }

    void b() {
        n.x xVar = this.n.y.h;
        n.j jVar = this.n.y.i;
        o oVar = this.a.c;
        if (!this.n.y.d) {
            this.i.b("end_card_enabled", this.n.y.d);
            return;
        }
        if (jVar.a()) {
            a.Y = true;
            a.ad = jVar.g;
            a.ae = oVar.b(jVar.f.b);
            this.i.b("close_image_normal", oVar.b(jVar.j.f));
            this.i.b("close_image_down", oVar.b(jVar.j.h));
            this.i.b("reload_image_normal", oVar.b(jVar.i.f));
            this.i.b("reload_image_down", oVar.b(jVar.i.h));
        } else {
            a.Y = false;
            this.i.b("end_card_filepath", oVar.b(xVar.d));
            this.i.b("info_image_normal", oVar.b(xVar.f.f));
            this.i.b("info_image_down", oVar.b(xVar.f.h));
            this.i.b("info_url", xVar.f.j);
            this.i.b("replay_image_normal", oVar.b(xVar.h.f));
            this.i.b("replay_image_down", oVar.b(xVar.h.h));
            this.i.b("continue_image_normal", oVar.b(xVar.i.f));
            this.i.b("continue_image_down", oVar.b(xVar.i.h));
            this.i.b("download_image_normal", oVar.b(xVar.g.f));
            this.i.b("download_image_down", oVar.b(xVar.g.h));
            this.i.b("download_url", xVar.g.j);
        }
        n.ac acVar = this.n.z;
        this.i.b("end_card_enabled", this.n.y.d);
        this.i.b("load_timeout_enabled", this.n.y.i.c);
        this.i.b("load_timeout", this.n.y.i.b);
        this.i.b("hardware_acceleration_disabled", this.a.b.i.e);
    }
}
