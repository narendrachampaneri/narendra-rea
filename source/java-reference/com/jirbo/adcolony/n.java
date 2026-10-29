package com.jirbo.adcolony;

import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.gms.appinvite.PreviewActivity;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.monetization.internal.Ad;
import com.inmobi.re.controller.JSController;
import com.mopub.mobileads.VastIconXmlManager;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
class n {
    n() {
    }

    static class e {
        boolean a;
        boolean b;
        String c;
        String d;
        boolean f;
        double g;
        String h;
        String i;
        String j;
        f k;
        y l;
        ArrayList<String> m;
        i o;
        boolean e = false;
        ag n = new ag();

        e() {
        }

        boolean a(String str) {
            return a(str, false, true);
        }

        boolean a(String str, boolean z, boolean z2) {
            ad adVarA;
            if (this.a && (adVarA = this.n.a(str)) != null) {
                return adVarA.a(z, z2);
            }
            return false;
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.h("enabled");
            this.b = gVar.h("log_screen_overlay");
            this.c = gVar.e("last_country");
            this.d = gVar.e("last_ip");
            this.f = gVar.h("collect_iap_enabled");
            this.g = gVar.f("media_pool_size");
            this.h = gVar.e("log_level");
            this.i = gVar.e("view_network_pass_filter");
            this.j = gVar.e("cache_network_pass_filter");
            this.e = gVar.h("hardware_acceleration_disabled");
            if (this.i == null || this.i.equals("")) {
                this.i = "all";
            }
            if (this.j == null || this.j.equals("")) {
                this.j = "all";
            }
            this.k = new f();
            if (!this.k.a(gVar.b("tracking"))) {
                return false;
            }
            this.l = new y();
            if (!this.l.a(gVar.b("third_party_tracking"))) {
                return false;
            }
            this.m = gVar.d("console_messages");
            com.jirbo.adcolony.l.a.b((Object) "Parsing zones");
            if (!this.n.a(gVar.c("zones"))) {
                return false;
            }
            this.o = new i();
            if (!this.o.a(gVar.b("device"))) {
                return false;
            }
            com.jirbo.adcolony.l.a.b((Object) "Finished parsing app info");
            return true;
        }

        void a() {
            com.jirbo.adcolony.l.a.b((Object) "Caching media");
            if (this.a) {
                for (int i = 0; i < this.n.b(); i++) {
                    this.n.a(i).n();
                }
            }
        }
    }

    static class i {
        String a;

        i() {
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.a("type", (String) null);
            com.jirbo.adcolony.a.ah = this.a;
            return true;
        }
    }

    static class f {
        String a;
        String b;
        String c;
        String d;
        String e;
        String f;
        String g;
        ADCData.g h;

        f() {
        }

        boolean a(ADCData.g gVar) {
            if (gVar != null) {
                this.a = gVar.a("update", (String) null);
                this.b = gVar.a(AnalyticAttribute.APP_INSTALL_ATTRIBUTE, (String) null);
                this.c = gVar.a("dynamic_interests", (String) null);
                this.d = gVar.a("user_meta_data", (String) null);
                this.e = gVar.a("in_app_purchase", (String) null);
                this.g = gVar.a("session_end", (String) null);
                this.f = gVar.a("session_start", (String) null);
                this.h = new ADCData.g();
                this.h.b("update", this.a);
                this.h.b(AnalyticAttribute.APP_INSTALL_ATTRIBUTE, this.b);
                this.h.b("dynamic_interests", this.c);
                this.h.b("user_meta_data", this.d);
                this.h.b("in_app_purchase", this.e);
                this.h.b("session_end", this.g);
                this.h.b("session_start", this.f);
                com.jirbo.adcolony.f fVar = new com.jirbo.adcolony.f("iap_cache.txt");
                ADCData.c cVarC = com.jirbo.adcolony.k.c(fVar);
                if (cVarC != null) {
                    for (int i = 0; i < cVarC.i(); i++) {
                        com.jirbo.adcolony.a.l.d.a("in_app_purchase", cVarC.a(i, new ADCData.g()));
                    }
                    fVar.c();
                    com.jirbo.adcolony.a.aj.j();
                }
                com.jirbo.adcolony.a.O = true;
            }
            return true;
        }
    }

    static class b {
        String A;
        String B;
        String C;
        ADCData.g D = new ADCData.g();
        String a;
        String b;
        String c;
        String d;
        String e;
        String f;
        String g;
        String h;
        String i;
        String j;
        String k;
        String l;
        String m;
        String n;
        String o;
        String p;
        String q;
        String r;
        String s;
        String t;
        String u;
        String v;
        String w;
        String x;
        String y;
        String z;

        b() {
        }

        boolean a(ADCData.g gVar) {
            if (gVar != null) {
                this.a = gVar.a("replay", (String) null);
                this.b = gVar.a("card_shown", (String) null);
                this.c = gVar.a("html5_interaction", (String) null);
                this.d = gVar.a("cancel", (String) null);
                this.e = gVar.a(AdTrackerConstants.GOAL_DOWNLOAD, (String) null);
                this.f = gVar.a("skip", (String) null);
                this.g = gVar.a("info", (String) null);
                this.h = gVar.a("custom_event", (String) null);
                this.i = gVar.a("midpoint", (String) null);
                this.j = gVar.a("card_dissolved", (String) null);
                this.k = gVar.a("start", (String) null);
                this.l = gVar.a("third_quartile", (String) null);
                this.m = gVar.a("complete", (String) null);
                this.n = gVar.a("continue", (String) null);
                this.o = gVar.a("in_video_engagement", (String) null);
                this.p = gVar.a("reward_v4vc", (String) null);
                this.r = gVar.a("first_quartile", (String) null);
                this.q = gVar.a("v4iap", (String) null);
                this.s = gVar.a("video_expanded", (String) null);
                this.t = gVar.a("sound_mute", (String) null);
                this.u = gVar.a("sound_unmute", (String) null);
                this.v = gVar.a("video_paused", (String) null);
                this.w = gVar.a("video_resumed", (String) null);
                this.x = gVar.a("native_start", (String) null);
                this.y = gVar.a("native_first_quartile", (String) null);
                this.z = gVar.a("native_midpoint", (String) null);
                this.A = gVar.a("native_third_quartile", (String) null);
                this.B = gVar.a("native_complete", (String) null);
                this.C = gVar.a("native_overlay_click", (String) null);
                this.D.b("replay", this.a);
                this.D.b("card_shown", this.b);
                this.D.b("html5_interaction", this.c);
                this.D.b("cancel", this.d);
                this.D.b(AdTrackerConstants.GOAL_DOWNLOAD, this.e);
                this.D.b("skip", this.f);
                this.D.b("info", this.g);
                this.D.b("custom_event", this.h);
                this.D.b("midpoint", this.i);
                this.D.b("card_dissolved", this.j);
                this.D.b("start", this.k);
                this.D.b("third_quartile", this.l);
                this.D.b("complete", this.m);
                this.D.b("continue", this.n);
                this.D.b("in_video_engagement", this.o);
                this.D.b("reward_v4vc", this.p);
                this.D.b("first_quartile", this.r);
                this.D.b("v4iap", this.q);
                this.D.b("video_expanded", this.s);
                this.D.b("sound_mute", this.t);
                this.D.b("sound_unmute", this.u);
                this.D.b("video_paused", this.v);
                this.D.b("video_resumed", this.w);
                this.D.b("native_start", this.x);
                this.D.b("native_first_quartile", this.y);
                this.D.b("native_midpoint", this.z);
                this.D.b("native_third_quartile", this.A);
                this.D.b("native_complete", this.B);
                this.D.b("native_overlay_click", this.C);
            }
            return true;
        }
    }

    static class y {
        ArrayList<String> a = new ArrayList<>();
        ArrayList<String> b = new ArrayList<>();
        ArrayList<String> c = new ArrayList<>();
        HashMap<String, ArrayList<String>> d = new HashMap<>();

        y() {
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            ArrayList<String> arrayListD = gVar.d("update");
            this.a = arrayListD;
            if (arrayListD == null) {
                return false;
            }
            ArrayList<String> arrayListD2 = gVar.d(AnalyticAttribute.APP_INSTALL_ATTRIBUTE);
            this.b = arrayListD2;
            if (arrayListD2 == null) {
                return false;
            }
            ArrayList<String> arrayListD3 = gVar.d("session_start");
            this.c = arrayListD3;
            if (arrayListD3 == null) {
                return false;
            }
            this.d.put("update", this.a);
            this.d.put(AnalyticAttribute.APP_INSTALL_ATTRIBUTE, this.b);
            this.d.put("session_start", this.c);
            return true;
        }
    }

    static class z {
        ArrayList<String> a = new ArrayList<>();
        ArrayList<String> b = new ArrayList<>();
        ArrayList<String> c = new ArrayList<>();
        ArrayList<String> d = new ArrayList<>();
        ArrayList<String> e = new ArrayList<>();
        ArrayList<String> f = new ArrayList<>();
        ArrayList<String> g = new ArrayList<>();
        ArrayList<String> h = new ArrayList<>();
        ArrayList<String> i = new ArrayList<>();
        ArrayList<String> j = new ArrayList<>();
        ArrayList<String> k = new ArrayList<>();
        ArrayList<String> l = new ArrayList<>();
        ArrayList<String> m = new ArrayList<>();
        ArrayList<String> n = new ArrayList<>();
        ArrayList<String> o = new ArrayList<>();
        ArrayList<String> p = new ArrayList<>();
        ArrayList<String> q = new ArrayList<>();
        ArrayList<String> r = new ArrayList<>();
        ArrayList<String> s = new ArrayList<>();
        ArrayList<String> t = new ArrayList<>();
        ArrayList<String> u = new ArrayList<>();
        ArrayList<String> v = new ArrayList<>();
        ArrayList<String> w = new ArrayList<>();
        ArrayList<String> x = new ArrayList<>();
        ArrayList<String> y = new ArrayList<>();
        ArrayList<String> z = new ArrayList<>();
        ArrayList<String> A = new ArrayList<>();
        ArrayList<String> B = new ArrayList<>();
        HashMap<String, ArrayList<String>> C = new HashMap<>();

        z() {
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.d("replay");
            this.b = gVar.d("card_shown");
            this.c = gVar.d("html5_interaction");
            this.d = gVar.d("cancel");
            this.e = gVar.d(AdTrackerConstants.GOAL_DOWNLOAD);
            this.f = gVar.d("skip");
            this.g = gVar.d("info");
            this.h = gVar.d("midpoint");
            this.i = gVar.d("card_dissolved");
            this.j = gVar.d("start");
            this.k = gVar.d("third_quartile");
            this.l = gVar.d("complete");
            this.m = gVar.d("continue");
            this.n = gVar.d("in_video_engagement");
            this.o = gVar.d("reward_v4vc");
            this.p = gVar.d("first_quartile");
            this.q = gVar.d("v4iap");
            this.r = gVar.d("video_expanded");
            this.s = gVar.d("sound_mute");
            this.t = gVar.d("sound_unmute");
            this.u = gVar.d("video_paused");
            this.v = gVar.d("video_resumed");
            this.w = gVar.d("native_start");
            this.x = gVar.d("native_first_quartile");
            this.y = gVar.d("native_midpoint");
            this.z = gVar.d("native_third_quartile");
            this.A = gVar.d("native_complete");
            this.B = gVar.d("native_overlay_click");
            this.C.put("replay", this.a);
            this.C.put("card_shown", this.b);
            this.C.put("html5_interaction", this.c);
            this.C.put("cancel", this.d);
            this.C.put(AdTrackerConstants.GOAL_DOWNLOAD, this.e);
            this.C.put("skip", this.f);
            this.C.put("info", this.g);
            this.C.put("midpoint", this.h);
            this.C.put("card_dissolved", this.i);
            this.C.put("start", this.j);
            this.C.put("third_quartile", this.k);
            this.C.put("complete", this.l);
            this.C.put("continue", this.m);
            this.C.put("in_video_engagement", this.n);
            this.C.put("reward_v4vc", this.o);
            this.C.put("first_quartile", this.p);
            this.C.put("v4iap", this.q);
            this.C.put("video_expanded", this.r);
            this.C.put("sound_mute", this.s);
            this.C.put("sound_unmute", this.t);
            this.C.put("video_paused", this.u);
            this.C.put("video_resumed", this.v);
            this.C.put("native_start", this.w);
            this.C.put("native_first_quartile", this.x);
            this.C.put("native_midpoint", this.y);
            this.C.put("native_third_quartile", this.z);
            this.C.put("native_complete", this.A);
            this.C.put("native_overlay_click", this.B);
            return true;
        }
    }

    static class ag {
        ArrayList<ad> a = new ArrayList<>();

        ag() {
        }

        boolean a(ADCData.c cVar) {
            if (cVar == null) {
                com.jirbo.adcolony.a.p = false;
                return false;
            }
            for (int i = 0; i < cVar.i(); i++) {
                ADCData.g gVarB = cVar.b(i);
                ad adVarA = a(gVarB.e(AnalyticAttribute.UUID_ATTRIBUTE));
                if (adVarA == null) {
                    adVarA = new ad();
                }
                if (!adVarA.a(gVarB)) {
                    com.jirbo.adcolony.a.p = false;
                    return false;
                }
                this.a.add(adVarA);
            }
            com.jirbo.adcolony.a.p = false;
            return true;
        }

        void a() {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.a.size()) {
                    if (this.a.get(i2).m != null) {
                        this.a.get(i2).m.a();
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }

        int b() {
            return this.a.size();
        }

        ad a(int i) {
            return this.a.get(i);
        }

        ad c() {
            return this.a.get(0);
        }

        ad a(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.a.size()) {
                    ad adVar = this.a.get(i2);
                    if (!adVar.a.equals(str)) {
                        i = i2 + 1;
                    } else {
                        return adVar;
                    }
                } else {
                    return null;
                }
            }
        }
    }

    static class ad {
        String a;
        ADCData.g b;
        int c;
        int d;
        int e;
        int f;
        boolean g;
        boolean h;
        boolean i;
        ArrayList<String> k;
        ae l;
        d m;
        af n;
        long q;
        com.jirbo.adcolony.af r;
        ADCData.c j = new ADCData.c();
        long o = 600000;
        long p = HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS;
        int s = 0;

        ad() {
        }

        boolean a() {
            if (this.m == null) {
                return true;
            }
            Iterator<a> it = this.m.a.iterator();
            int i = 0;
            while (it.hasNext()) {
                i = !it.next().b() ? i + 1 : i;
            }
            return i < this.f;
        }

        boolean b() {
            if (this.s % this.n.f != 0) {
                return false;
            }
            this.s = 0;
            return true;
        }

        boolean c() {
            return a(false, true);
        }

        boolean a(boolean z, boolean z2) {
            a aVarK;
            if (!z2) {
                return a(z);
            }
            if (!this.g || !this.h) {
                com.jirbo.adcolony.a.am = 1;
                return com.jirbo.adcolony.l.c.b("Ad is not ready to be played, as zone " + this.a + " is disabled or inactive.");
            }
            if (this.m.b() == 0 || this.k.size() == 0) {
                com.jirbo.adcolony.a.am = 5;
                return com.jirbo.adcolony.l.c.b("Ad is not ready to be played, as AdColony currently has no videos available to be played in zone " + this.a + ".");
            }
            int size = this.k.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    aVarK = null;
                    break;
                }
                aVarK = k();
                if (aVarK == null) {
                    return com.jirbo.adcolony.l.c.b("Ad is not ready to be played due to an unknown error.");
                }
                if (aVarK.a()) {
                    break;
                }
                m();
                i++;
            }
            if (aVarK != null) {
                return a(aVarK) != 0;
            }
            com.jirbo.adcolony.a.am = 6;
            return com.jirbo.adcolony.l.c.b("Ad is not ready to be played, as AdColony currently has no videos available to be played in zone " + this.a + ".");
        }

        boolean a(boolean z) {
            a aVarK;
            if (!z) {
                com.jirbo.adcolony.a.h();
            }
            if (!this.g || !this.h || this.m.b() == 0 || this.k.size() == 0) {
                return false;
            }
            int size = this.k.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    aVarK = null;
                    break;
                }
                aVarK = k();
                if (aVarK == null) {
                    return false;
                }
                if (aVarK.a()) {
                    break;
                }
                m();
                i++;
            }
            return (aVarK == null || a(aVarK) == 0) ? false : true;
        }

        boolean d() {
            if (this.c <= 1) {
                return false;
            }
            com.jirbo.adcolony.a.l.g.b = true;
            com.jirbo.adcolony.af afVar = this.r;
            int i = afVar.b;
            afVar.b = i + 1;
            if (i == 0) {
                return false;
            }
            if (this.r.b >= this.c) {
                this.r.b = 0;
            }
            return true;
        }

        int a(int i, int i2) {
            if (i2 <= 0) {
                return 0;
            }
            if (i != -1) {
                if (i >= i2) {
                    i = i2;
                }
                return i;
            }
            return i2;
        }

        void e() {
            com.jirbo.adcolony.a.l.b.e();
        }

        synchronized int f() {
            return a(k());
        }

        synchronized int a(a aVar) {
            return aVar.q ? 0 : 1;
        }

        boolean g() {
            return b(true);
        }

        boolean b(boolean z) {
            if (!z) {
                return h();
            }
            if (!this.g || !this.h) {
                com.jirbo.adcolony.a.am = 1;
                return com.jirbo.adcolony.l.c.b("Ad is not ready, as zone " + this.a + " is disabled or inactive.");
            }
            if (this.m.b() == 0) {
                com.jirbo.adcolony.a.am = 5;
                return com.jirbo.adcolony.l.c.b("Ad is not ready, as there are currently no ads to play in zone " + this.a + ".");
            }
            if (!this.m.c().w.a) {
                return true;
            }
            com.jirbo.adcolony.a.am = 14;
            return com.jirbo.adcolony.l.c.b("Ad is not ready, as zone " + this.a + " is V4VC enabled and must be played using an AdColonyV4VCAd object.");
        }

        boolean h() {
            return this.g && this.h && this.m.b() != 0 && !this.m.c().w.a;
        }

        boolean i() {
            return c(true);
        }

        boolean c(boolean z) {
            if (!z) {
                return j();
            }
            if (!this.g || !this.h) {
                com.jirbo.adcolony.a.am = 1;
                return com.jirbo.adcolony.l.c.b("Ad is not ready, as zone " + this.a + " is disabled or inactive.");
            }
            if (this.m.b() == 0) {
                com.jirbo.adcolony.a.am = 5;
                return com.jirbo.adcolony.l.c.b("Ad is not ready, as there are currently no ads to play in zone " + this.a + ".");
            }
            if (this.m.c().w.a) {
                return true;
            }
            com.jirbo.adcolony.a.am = 15;
            return com.jirbo.adcolony.l.c.b("Ad is not ready, as zone " + this.a + " is not V4VC enabled and must be played using an AdColonyVideoAd object.");
        }

        boolean j() {
            return this.g && this.h && this.m.b() != 0 && this.m.c().w.a;
        }

        a k() {
            if (this.k.size() > 0) {
                return this.m.a(this.k.get(this.r.c % this.k.size()));
            }
            return null;
        }

        a l() {
            if (this.k.size() > 0) {
                return this.m.b(this.r.c % this.k.size());
            }
            return null;
        }

        void m() {
            if (this.k.size() > 0) {
                this.r.c = (this.r.c + 1) % this.k.size();
            }
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.b = gVar;
            this.a = gVar.e(AnalyticAttribute.UUID_ATTRIBUTE);
            this.g = gVar.h("enabled");
            this.h = gVar.h("active");
            this.q = Long.parseLong(gVar.a("last_config_ms", "0")) == 0 ? System.currentTimeMillis() : Long.parseLong(gVar.e("last_config_ms"));
            this.i = gVar.h("clear_ad_queue");
            if (!this.g || !this.h) {
                return true;
            }
            this.c = gVar.g("play_interval");
            this.d = gVar.g("daily_play_cap");
            this.e = gVar.g("session_play_cap");
            this.f = gVar.a("min_ad_thresh", 1);
            this.p = ((long) gVar.a("min_config_win", 60)) * 1000;
            this.o = ((long) gVar.a("max_config_win", SettingsJsonConstants.ANALYTICS_FLUSH_INTERVAL_SECS_DEFAULT)) * 1000;
            this.k = new ArrayList<>();
            ArrayList<String> arrayListD = gVar.d("play_order");
            this.k = arrayListD;
            if (arrayListD == null) {
                return false;
            }
            this.l = new ae();
            if (!this.l.a(gVar.b("tracking"))) {
                return false;
            }
            if (this.m == null || this.i) {
                this.m = new d();
            }
            if (!this.m.a(gVar.c("ads"))) {
                return false;
            }
            if (!com.jirbo.adcolony.a.C) {
                com.jirbo.adcolony.l.c.a("Finished parsing response for zone \"").a(this.a).a("\": ").a(this.m.b()).b((Object) " ad(s). Attempting to cache media assets.");
            }
            this.n = new af();
            if (!this.n.a(gVar.b("v4vc"))) {
                return false;
            }
            this.r = com.jirbo.adcolony.a.l.g.a(this.a);
            com.jirbo.adcolony.l.a.b((Object) "Finished parsing zone");
            return true;
        }

        void n() {
            if (this.g && this.h) {
                for (int i = 0; i < this.m.b(); i++) {
                    this.m.a(i).d();
                }
            }
        }
    }

    static class ae {
        String a;

        ae() {
        }

        boolean a(ADCData.g gVar) {
            if (gVar != null) {
                this.a = gVar.a("request", (String) null);
            }
            return true;
        }
    }

    static class d {
        ArrayList<a> a = new ArrayList<>();

        d() {
        }

        void a() {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.a.size()) {
                    a aVar = this.a.get(i2);
                    if (aVar.b() && !aVar.s) {
                        com.jirbo.adcolony.a.h();
                        aVar.s = true;
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }

        boolean a(ADCData.c cVar) {
            if (cVar == null) {
                return false;
            }
            for (int i = 0; i < this.a.size(); i++) {
                if (this.a.get(i).b()) {
                    this.a.remove(i);
                }
            }
            for (int i2 = 0; i2 < cVar.i(); i2++) {
                a aVar = new a();
                if (!aVar.a(cVar.b(i2))) {
                    return false;
                }
                this.a.add(aVar);
            }
            return true;
        }

        void a(a aVar) {
            this.a.add(aVar);
        }

        int b() {
            return this.a.size();
        }

        a a(int i) {
            return this.a.get(i);
        }

        a c() {
            return this.a.get(0);
        }

        a a(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.a.size()) {
                    a aVar = this.a.get(i2);
                    if (!aVar.a.equals(str)) {
                        i = i2 + 1;
                    } else {
                        return aVar;
                    }
                } else {
                    return null;
                }
            }
        }

        a b(int i) {
            while (i < this.a.size()) {
                a aVar = this.a.get(i);
                if (!aVar.A.a) {
                    i++;
                } else {
                    return aVar;
                }
            }
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < this.a.size()) {
                    a aVar2 = this.a.get(i3);
                    if (!aVar2.A.a) {
                        i2 = i3 + 1;
                    } else {
                        return aVar2;
                    }
                } else {
                    return null;
                }
            }
        }
    }

    static class aa {
        String a;
        String b;
        boolean c;

        aa() {
        }

        boolean a() {
            return true;
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.c = gVar.h("enabled");
            if (!this.c) {
                return true;
            }
            this.a = gVar.d("product_ids").get(0);
            this.b = gVar.e("in_progress");
            return true;
        }
    }

    static class a {
        p A;
        aa B;
        String a;
        String b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;
        long i;
        boolean j;
        boolean k;
        boolean l;
        boolean m;
        boolean n;
        boolean o;
        boolean p;
        boolean q;
        boolean r;
        boolean s;
        C0300n t;
        z u;
        m v;
        c w;
        b x;
        h y;
        ac z;

        a() {
        }

        boolean a() {
            if (!this.v.a()) {
                return false;
            }
            if (this.w.a && !this.w.a()) {
                return false;
            }
            if (!this.A.a || this.A.a()) {
                return (!this.y.d || this.y.a()) && this.z.a() && this.B.a() && !b();
            }
            return false;
        }

        boolean b() {
            return this.q || System.currentTimeMillis() - this.i > ((long) (this.h * 1000));
        }

        boolean c() {
            return this.r;
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.e(AnalyticAttribute.UUID_ATTRIBUTE);
            this.b = gVar.e("title");
            this.c = gVar.g("ad_campaign_id");
            this.d = gVar.g("ad_id");
            this.e = gVar.g("ad_group_id");
            this.f = gVar.g("cpcv_bid");
            this.g = gVar.g("net_earnings");
            this.h = gVar.a("expires", 660);
            this.j = gVar.h("enable_in_app_store");
            this.k = gVar.h("video_events_on_replays");
            this.l = gVar.h("test_ad");
            this.m = gVar.h(JSController.FULL_SCREEN);
            this.n = gVar.h("house_ad");
            this.o = gVar.h("contracted");
            this.s = false;
            this.i = System.currentTimeMillis();
            this.t = new C0300n();
            if (!this.t.a(gVar.b("limits"))) {
                return false;
            }
            this.u = new z();
            if (!this.u.a(gVar.b("third_party_tracking"))) {
                return false;
            }
            this.v = new m();
            if (!this.v.a(gVar.b("in_app_browser"))) {
                return false;
            }
            this.A = new p();
            if (!this.A.a(gVar.b(Ad.AD_TYPE_NATIVE))) {
                return false;
            }
            this.w = new c();
            if (!this.w.a(gVar.b("v4vc"))) {
                return false;
            }
            this.x = new b();
            if (!this.x.a(gVar.b("ad_tracking"))) {
                return false;
            }
            this.y = new h();
            if (!this.y.a(gVar.b("companion_ad"))) {
                return false;
            }
            this.z = new ac();
            if (!this.z.a(gVar.b(MimeTypes.BASE_TYPE_VIDEO))) {
                return false;
            }
            this.B = new aa();
            if (!this.B.a(gVar.b("v4iap"))) {
                return false;
            }
            com.jirbo.adcolony.l.b.b((Object) "Finished parsing ad");
            return true;
        }

        void d() {
            this.w.b();
            this.v.b();
            this.A.b();
            this.y.b();
            this.z.c();
        }
    }

    static class q {
        boolean a;
        boolean b;
        String c;
        String d;
        String e;

        q() {
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.h("enabled");
            if (!this.a) {
                return true;
            }
            this.b = gVar.h("in_app");
            this.c = gVar.e("click_action_type");
            this.e = gVar.e("click_action");
            this.d = gVar.e(PlusShare.KEY_CALL_TO_ACTION_LABEL);
            return true;
        }
    }

    static class r {
        String a;
        String b;
        String c;
        String d;

        r() {
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.e("image");
            this.b = gVar.e("last_modified");
            this.c = gVar.e("click_action_type");
            this.d = gVar.e("click_action");
            return true;
        }
    }

    static class s {
        String a;
        String b;

        s() {
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.e("image");
            this.b = gVar.e("last_modified");
            return true;
        }
    }

    static class p {
        boolean a;
        boolean b;
        String c;
        String d;
        String e;
        s f;
        r g;
        q h;
        boolean i;
        l j;
        l k;

        p() {
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.h("enabled");
            this.c = gVar.e("advertiser_name");
            this.d = gVar.e("description");
            this.e = gVar.e("title");
            this.i = false;
            this.f = new s();
            if (!this.f.a(gVar.b("thumb"))) {
                return false;
            }
            this.g = new r();
            if (!this.g.a(gVar.b("poster"))) {
                return false;
            }
            this.j = new l();
            if (!this.j.a(gVar.b("mute"))) {
                return false;
            }
            this.b = this.j.f;
            this.k = new l();
            if (!this.k.a(gVar.b("unmute"))) {
                return false;
            }
            this.h = new q();
            return this.h.a(gVar.b("overlay"));
        }

        boolean a() {
            return this.a && com.jirbo.adcolony.a.l.c.a(this.g.a) && com.jirbo.adcolony.a.l.c.a(this.f.a) && this.j.a() && this.k.a() && !this.i;
        }

        void b() {
            com.jirbo.adcolony.a.l.c.a(this.g.a, this.g.b);
            com.jirbo.adcolony.a.l.c.a(this.f.a, this.f.b);
            this.j.b();
            this.k.b();
        }
    }

    /* JADX INFO: renamed from: com.jirbo.adcolony.n$n, reason: collision with other inner class name */
    static class C0300n {
        int a;
        int b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;

        C0300n() {
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = -1;
            this.b = -1;
            this.c = -1;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            return true;
        }
    }

    static class m {
        String a;
        String b;
        String c;
        String d;
        String e;
        String f;
        String g;
        l h;
        g i;
        g j;
        g k;
        g l;
        g m;

        m() {
        }

        boolean a() {
            return com.jirbo.adcolony.a.l.c.a(this.a) && com.jirbo.adcolony.a.l.c.a(this.c) && com.jirbo.adcolony.a.l.c.a(this.e) && this.h.a() && this.i.a() && this.j.a() && this.k.a() && this.l.a() && this.m.a();
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.e("tiny_glow_image");
            this.b = gVar.e("tiny_glow_image_last_modified;");
            this.c = gVar.e("background_bar_image");
            this.d = gVar.e("background_bar_image_last_modified");
            this.e = gVar.e("background_tile_image");
            this.f = gVar.e("background_tile_image_last_modified");
            this.g = gVar.e("background_color");
            this.h = new l();
            if (!this.h.a(gVar.b("logo"))) {
                return false;
            }
            this.h = new l();
            if (!this.h.a(gVar.b("logo"))) {
                return false;
            }
            this.i = new g();
            if (!this.i.a(gVar.b("stop"))) {
                return false;
            }
            this.j = new g();
            if (!this.j.a(gVar.b("back"))) {
                return false;
            }
            this.k = new g();
            if (!this.k.a(gVar.b(PreviewActivity.ON_CLICK_LISTENER_CLOSE))) {
                return false;
            }
            this.l = new g();
            if (!this.l.a(gVar.b("forward"))) {
                return false;
            }
            this.m = new g();
            return this.m.a(gVar.b("reload"));
        }

        void b() {
            com.jirbo.adcolony.a.l.c.a(this.a, this.b);
            com.jirbo.adcolony.a.l.c.a(this.c, this.d);
            com.jirbo.adcolony.a.l.c.a(this.e, this.f);
            this.h.b();
            this.i.b();
            this.j.b();
            this.k.b();
            this.l.b();
            this.m.b();
        }
    }

    static class af {
        boolean a;
        ab b;
        int c;
        String d;
        boolean e;
        int f;

        af() {
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.h("enabled");
            if (!this.a) {
                return true;
            }
            this.b = new ab();
            if (!this.b.a(gVar.b("limits"))) {
                return false;
            }
            this.c = gVar.g("reward_amount");
            this.d = gVar.e("reward_name");
            this.e = gVar.h("client_side");
            this.f = gVar.g("videos_per_reward");
            return true;
        }
    }

    static class ab {
        int a;
        int b;
        int c;

        ab() {
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = -1;
            this.b = -1;
            this.c = -1;
            return true;
        }
    }

    static class c {
        boolean a;
        w b;
        u c;

        c() {
        }

        boolean a() {
            return this.b.a() && this.c.a();
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.h("enabled");
            if (!this.a) {
                return true;
            }
            this.b = new w();
            if (!this.b.a(gVar.b("pre_popup"))) {
                return false;
            }
            this.c = new u();
            return this.c.a(gVar.b("post_popup"));
        }

        void b() {
            if (this.a) {
                this.b.b();
                this.c.b();
            }
        }
    }

    static class w {
        String a;
        String b;
        l c;
        v d;

        w() {
        }

        boolean a() {
            return com.jirbo.adcolony.a.l.c.a(this.a) && this.c.a() && this.d.a();
        }

        boolean a(ADCData.g gVar) {
            this.a = gVar.e("background_image");
            this.b = gVar.e("background_image_last_modified");
            this.c = new l();
            if (!this.c.a(gVar.b("background_logo"))) {
                return false;
            }
            this.d = new v();
            return this.d.a(gVar.b("dialog"));
        }

        void b() {
            com.jirbo.adcolony.a.l.c.a(this.a, this.b);
            this.c.b();
            this.d.b();
        }
    }

    static class v {
        int a;
        String b;
        int c;
        int d;
        String e;
        String f;
        String g;
        String h;
        String i;
        String j;
        String k;
        l l;
        g m;
        g n;

        v() {
        }

        boolean a() {
            return com.jirbo.adcolony.a.l.c.a(this.e) && this.l.a() && this.m.a();
        }

        boolean a(ADCData.g gVar) {
            this.a = gVar.g("scale");
            this.b = gVar.e("label_reward");
            this.c = gVar.g("width");
            this.d = gVar.g("height");
            this.e = gVar.e("image");
            this.f = gVar.e("image_last_modified");
            this.g = gVar.e(PlusShare.KEY_CALL_TO_ACTION_LABEL);
            this.h = gVar.e("label_rgba");
            this.i = gVar.e("label_shadow_rgba");
            this.j = gVar.e("label_fraction");
            this.k = gVar.e("label_html");
            this.l = new l();
            if (!this.l.a(gVar.b("logo"))) {
                return false;
            }
            this.m = new g();
            if (!this.m.a(gVar.b("option_yes"))) {
                return false;
            }
            this.n = new g();
            return this.n.a(gVar.b("option_no"));
        }

        void b() {
            com.jirbo.adcolony.a.l.c.a(this.e, this.f);
            this.l.b();
            this.m.b();
            this.n.b();
        }
    }

    static class u {
        String a;
        String b;
        l c;
        t d;

        u() {
        }

        boolean a() {
            return com.jirbo.adcolony.a.l.c.a(this.a) && this.c.a() && this.d.a();
        }

        boolean a(ADCData.g gVar) {
            this.a = gVar.e("background_image");
            this.b = gVar.e("background_image_last_modified");
            this.c = new l();
            if (!this.c.a(gVar.b("background_logo"))) {
                return false;
            }
            this.d = new t();
            return this.d.a(gVar.b("dialog"));
        }

        void b() {
            com.jirbo.adcolony.a.l.c.a(this.a, this.b);
            this.d.b();
        }
    }

    static class t {
        int a;
        String b;
        int c;
        int d;
        String e;
        String f;
        String g;
        String h;
        String i;
        String j;
        String k;
        l l;
        g m;

        t() {
        }

        boolean a() {
            return com.jirbo.adcolony.a.l.c.a(this.e) && this.l.a() && this.m.a();
        }

        boolean a(ADCData.g gVar) {
            this.a = gVar.g("scale");
            this.b = gVar.e("label_reward");
            this.c = gVar.g("width");
            this.d = gVar.g("height");
            this.e = gVar.e("image");
            this.f = gVar.e("image_last_modified");
            this.g = gVar.e(PlusShare.KEY_CALL_TO_ACTION_LABEL);
            this.h = gVar.e("label_rgba");
            this.i = gVar.e("label_shadow_rgba");
            this.j = gVar.e("label_fraction");
            this.k = gVar.e("label_html");
            this.l = new l();
            if (!this.l.a(gVar.b("logo"))) {
                return false;
            }
            this.m = new g();
            return this.m.a(gVar.b("option_done"));
        }

        void b() {
            com.jirbo.adcolony.a.l.c.a(this.e, this.f);
            this.l.b();
            this.m.b();
        }
    }

    static class l {
        int a;
        int b;
        int c;
        String d;
        String e;
        boolean f;

        l() {
        }

        boolean a() {
            if (this.f) {
                return com.jirbo.adcolony.a.l.c.a(this.d);
            }
            return true;
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f = gVar.a("enabled", true);
            this.a = gVar.g("width");
            this.b = gVar.g("height");
            this.c = gVar.g("scale");
            this.d = gVar.e("image");
            this.e = gVar.e("image_last_modified");
            if (!this.e.equals("")) {
                return true;
            }
            this.e = gVar.e("last_modified");
            return true;
        }

        void b() {
            com.jirbo.adcolony.a.l.c.a(this.d, this.e);
        }
    }

    static class k {
        boolean a;
        String b;
        String c;
        String d;

        k() {
        }

        boolean a() {
            return !this.a || com.jirbo.adcolony.a.l.c.a(this.c);
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.a("enabled", false);
            this.c = gVar.e("file_url");
            this.d = gVar.e("last_modified");
            return true;
        }

        void b() {
            com.jirbo.adcolony.a.l.c.a(this.c, this.d);
        }
    }

    static class g {
        boolean a;
        int b;
        int c;
        int d;
        int e;
        String f;
        String g;
        String h;
        String i;
        String j;
        String k;
        String l;
        String m;
        String n;
        String o;
        String p;

        g() {
        }

        boolean a() {
            if (this.a) {
                return com.jirbo.adcolony.a.l.c.a(this.f) && com.jirbo.adcolony.a.l.c.a(this.h);
            }
            return true;
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.a("enabled", true);
            this.e = gVar.g("delay");
            this.b = gVar.g("width");
            this.c = gVar.g("height");
            this.d = gVar.g("scale");
            this.f = gVar.e("image_normal");
            this.g = gVar.e("image_normal_last_modified");
            this.h = gVar.e("image_down");
            this.i = gVar.e("image_down_last_modified");
            this.j = gVar.e("click_action");
            this.k = gVar.e("click_action_type");
            this.l = gVar.e(PlusShare.KEY_CALL_TO_ACTION_LABEL);
            this.m = gVar.e("label_rgba");
            this.n = gVar.e("label_shadow_rgba");
            this.o = gVar.e("label_html");
            this.p = gVar.e("event");
            return true;
        }

        void b() {
            com.jirbo.adcolony.a.l.c.a(this.f, this.g);
            com.jirbo.adcolony.a.l.c.a(this.h, this.i);
        }
    }

    static class h {
        String a;
        int b;
        int c;
        boolean d;
        boolean e;
        boolean f;
        double g;
        x h;
        j i;

        h() {
        }

        boolean a() {
            if (this.i.a && !this.i.a()) {
                return false;
            }
            if (this.d) {
                return this.h.a() || this.i.a();
            }
            return true;
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.d = gVar.h("enabled");
            if (!this.d) {
                return true;
            }
            this.a = gVar.e(AnalyticAttribute.UUID_ATTRIBUTE);
            this.b = gVar.g("ad_id");
            this.c = gVar.g("ad_campaign_id");
            this.e = gVar.h("dissolve");
            this.f = gVar.h("enable_in_app_store");
            this.g = gVar.f("dissolve_delay");
            this.h = new x();
            if (!this.h.a(gVar.b("static"))) {
                return false;
            }
            this.i = new j();
            return this.i.a(gVar.b("html5"));
        }

        void b() {
            if (this.d) {
                this.h.b();
                this.i.b();
            }
        }
    }

    static class x {
        boolean a;
        int b;
        int c;
        String d;
        String e;
        g f;
        g g;
        g h;
        g i;

        x() {
        }

        boolean a() {
            if (this.a) {
                return com.jirbo.adcolony.a.l.c.a(this.d) && this.h.a() && this.i.a() && this.g.a() && this.f.a();
            }
            return true;
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.h("enabled");
            if (!this.a) {
                return true;
            }
            this.b = gVar.g("width");
            this.c = gVar.g("height");
            this.d = gVar.e("background_image");
            this.e = gVar.e("background_image_last_modified");
            if (com.jirbo.adcolony.a.f != null) {
                this.d = com.jirbo.adcolony.a.f;
            }
            this.h = new g();
            if (!this.h.a(gVar.b("replay"))) {
                return false;
            }
            this.i = new g();
            if (!this.i.a(gVar.b("continue"))) {
                return false;
            }
            this.g = new g();
            if (!this.g.a(gVar.b(AdTrackerConstants.GOAL_DOWNLOAD))) {
                return false;
            }
            this.f = new g();
            return this.f.a(gVar.b("info"));
        }

        void b() {
            if (this.a) {
                com.jirbo.adcolony.a.l.c.a(this.d, this.e);
                this.h.b();
                this.i.b();
                this.g.b();
                this.f.b();
            }
        }
    }

    static class j {
        boolean a;
        double b;
        boolean c;
        boolean d;
        String e;
        o f;
        String g;
        l h;
        g i;
        g j;

        j() {
        }

        boolean a() {
            if (com.jirbo.adcolony.q.c()) {
                return this.a && this.f.a() && this.h.a() && this.i.a() && this.j.a();
            }
            com.jirbo.adcolony.a.am = 8;
            return com.jirbo.adcolony.l.c.b("Ad not ready due to no network connection.");
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.h("enabled");
            this.b = gVar.f("load_timeout");
            this.c = gVar.h("load_timeout_enabled");
            this.d = gVar.h("load_spinner_enabled");
            this.e = gVar.e("background_color");
            this.g = gVar.e("html5_tag");
            this.f = new o();
            if (!this.f.a(gVar.b("mraid_js"))) {
                return false;
            }
            this.h = new l();
            if (!this.h.a(gVar.b("background_logo"))) {
                return false;
            }
            this.i = new g();
            if (!this.i.a(gVar.b("replay"))) {
                return false;
            }
            this.j = new g();
            return this.j.a(gVar.b(PreviewActivity.ON_CLICK_LISTENER_CLOSE));
        }

        void b() {
            if (this.a) {
                if (this.f != null) {
                    this.f.b();
                }
                if (this.h != null) {
                    this.h.b();
                }
                if (this.i != null) {
                    this.i.b();
                }
                if (this.j != null) {
                    this.j.b();
                }
            }
        }
    }

    static class o {
        boolean a;
        String b;
        String c;

        o() {
        }

        boolean a() {
            return !this.a || com.jirbo.adcolony.a.l.c.a(this.b);
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.h("enabled");
            if (!this.a) {
                return true;
            }
            this.b = gVar.e("url");
            this.c = gVar.e("last_modified");
            return true;
        }

        void b() {
            com.jirbo.adcolony.a.l.c.a(this.b, this.c);
        }
    }

    static class ac {
        boolean a;
        int b;
        int c;
        String d;
        String e;
        String f;
        String g;
        String h;
        String i;
        String j;
        double k;
        g l;
        g m;
        g n;
        k o;

        ac() {
        }

        boolean a() {
            if (!this.a) {
                return true;
            }
            if (com.jirbo.adcolony.a.l.c.a(this.d) && this.l.a() && this.m.a() && this.o.a() && this.n.a()) {
                if (com.jirbo.adcolony.a.l.b.i.i.equals("online") && !com.jirbo.adcolony.q.c()) {
                    com.jirbo.adcolony.a.am = 9;
                    return com.jirbo.adcolony.l.c.b("Video not ready due to VIEW_FILTER_ONLINE");
                }
                if (com.jirbo.adcolony.a.l.b.i.i.equals("wifi") && !com.jirbo.adcolony.q.a()) {
                    com.jirbo.adcolony.a.am = 9;
                    return com.jirbo.adcolony.l.c.b("Video not ready due to VIEW_FILTER_WIFI");
                }
                if (com.jirbo.adcolony.a.l.b.i.i.equals("cell") && !com.jirbo.adcolony.q.b()) {
                    com.jirbo.adcolony.a.am = 9;
                    return com.jirbo.adcolony.l.c.b("Video not ready due to VIEW_FILTER_CELL");
                }
                if (!com.jirbo.adcolony.a.l.b.i.i.equals("offline") || !com.jirbo.adcolony.q.c()) {
                    return true;
                }
                com.jirbo.adcolony.a.am = 9;
                return com.jirbo.adcolony.l.c.b("Video not ready due to VIEW_FILTER_OFFLINE");
            }
            return false;
        }

        String b() {
            return com.jirbo.adcolony.a.l.c.b(this.d);
        }

        boolean a(ADCData.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.a = gVar.h("enabled");
            if (!this.a) {
                return true;
            }
            this.b = gVar.g("width");
            this.c = gVar.g("height");
            this.d = gVar.e("url");
            this.e = gVar.e("last_modified");
            this.f = gVar.e("video_frame_rate");
            this.g = gVar.e("audio_channels");
            this.h = gVar.e("audio_codec");
            this.i = gVar.e("audio_sample_rate");
            this.j = gVar.e("video_codec");
            this.k = gVar.f(VastIconXmlManager.DURATION);
            this.l = new g();
            if (!this.l.a(gVar.b("skip_video"))) {
                return false;
            }
            this.m = new g();
            if (!this.m.a(gVar.b("in_video_engagement"))) {
                return false;
            }
            this.o = new k();
            if (!this.o.a(gVar.b("haptic"))) {
                return false;
            }
            this.n = new g();
            return this.n.a(gVar.b("in_video_engagement").b("image_overlay"));
        }

        void c() {
            com.jirbo.adcolony.a.l.c.a(this.d, this.e);
            this.m.b();
            this.l.b();
            this.o.b();
            this.n.b();
        }
    }
}
