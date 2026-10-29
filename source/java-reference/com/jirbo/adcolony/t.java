package com.jirbo.adcolony;

import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.monetization.internal.Ad;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
class t implements ADCDownload.Listener {
    d a;
    int f;
    ArrayList<a> b = new ArrayList<>();
    ArrayList<a> c = new ArrayList<>();
    int d = 0;
    boolean e = false;
    HashMap<Integer, Boolean> g = new HashMap<>();

    t(d dVar) {
        this.a = dVar;
    }

    void a(String str, AdColonyAd adColonyAd) {
        if (this.a != null && this.a.b != null && this.a.b.i != null && this.a.b.i.n != null && this.a.b.i.n.a(str) != null) {
            l.a.a("Ad request for zone ").b((Object) str);
            n.ad adVarA = this.a.b.i.n.a(str);
            if (adVarA != null && adVarA.l != null && adVarA.l.a != null) {
                ADCData.g gVar = new ADCData.g();
                if (adColonyAd.g == 0) {
                    gVar.b("request_denied", false);
                } else {
                    gVar.b("request_denied", true);
                }
                gVar.b("request_denied_reason", adColonyAd.g);
                a("request", adVarA.l.a, gVar, adColonyAd);
                l.a.a("Tracking ad request - URL : ").b((Object) adVarA.l.a);
            }
        }
    }

    void a(String str, ADCData.g gVar) {
        n.f fVar = this.a.b.i.k;
        if (fVar != null) {
            a(str, fVar.h.e(str), gVar);
        }
        n.y yVar = this.a.b.i.l;
        if (yVar != null) {
            a(str, yVar.d.get(str));
        }
    }

    void b(String str, AdColonyAd adColonyAd) {
        a(str, (ADCData.g) null, adColonyAd);
    }

    void a(String str, ADCData.g gVar, AdColonyAd adColonyAd) {
        if (str == null) {
            l.d.b((Object) "No such event type:").b((Object) str);
            return;
        }
        if (str.equals("start") || str.equals("native_start")) {
            com.jirbo.adcolony.a.l.e.j++;
        }
        if (gVar == null) {
            gVar = new ADCData.g();
            gVar.b("replay", adColonyAd.u);
        }
        gVar.b("s_imp_count", com.jirbo.adcolony.a.l.e.j);
        a(str, adColonyAd.A.get(str), gVar, adColonyAd);
        a(str, adColonyAd.B.get(str));
    }

    void a(String str, String str2, ADCData.g gVar) {
        a(str, str2, gVar, null);
    }

    void a(String str, String str2, ADCData.g gVar, AdColonyAd adColonyAd) {
        if (str2 != null && !str2.equals("")) {
            if (gVar == null) {
                gVar = new ADCData.g();
            }
            String strB = aa.b();
            if (adColonyAd != null) {
                gVar.b("asi", adColonyAd.m);
            }
            double dC = aa.c() - this.a.e.g;
            if (dC <= 0.0d || dC < 604800.0d) {
            }
            gVar.b("s_time", com.jirbo.adcolony.a.l.e.i);
            gVar.b(AnalyticsSQLiteHelper.EVENT_LIST_SID, this.a.e.k);
            gVar.b("guid", strB);
            gVar.b("guid_key", aa.b(strB + "DUBu6wJ27y6xs7VWmNDw67DD"));
            a aVar = new a();
            aVar.a = str;
            aVar.b = str2;
            l.a.b((Object) "EVENT ---------------------------");
            l.a.a("EVENT - TYPE = ").b((Object) str);
            l.a.a("EVENT - URL  = ").b((Object) str2);
            aVar.c = gVar.q();
            if (str.equals("reward_v4vc")) {
                aVar.d = gVar.e("v4vc_name");
                aVar.h = gVar.g("v4vc_amount");
            }
            this.b.add(aVar);
            this.e = true;
            com.jirbo.adcolony.a.z = true;
        }
    }

    void a(String str, ArrayList<String> arrayList) {
        if (arrayList != null && arrayList.size() != 0) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < arrayList.size()) {
                    String str2 = arrayList.get(i2);
                    a aVar = new a();
                    aVar.a = str;
                    aVar.b = str2;
                    aVar.l = true;
                    this.b.add(aVar);
                    i = i2 + 1;
                } else {
                    this.e = true;
                    com.jirbo.adcolony.a.z = true;
                    return;
                }
            }
        }
    }

    void a(double d, AdColonyAd adColonyAd) {
        double d2 = adColonyAd.p;
        if (d >= d2) {
            if (d2 < 0.25d && d >= 0.25d) {
                if (AdColony.isZoneV4VC(adColonyAd.h) || !adColonyAd.l.equals(Ad.AD_TYPE_NATIVE)) {
                    b("first_quartile", adColonyAd);
                } else {
                    b("native_first_quartile", adColonyAd);
                }
            }
            if (d2 < 0.5d && d >= 0.5d) {
                if (AdColony.isZoneV4VC(adColonyAd.h) || !adColonyAd.l.equals(Ad.AD_TYPE_NATIVE)) {
                    b("midpoint", adColonyAd);
                } else {
                    b("native_midpoint", adColonyAd);
                }
            }
            if (d2 < 0.75d && d >= 0.75d) {
                if (AdColony.isZoneV4VC(adColonyAd.h) || !adColonyAd.l.equals(Ad.AD_TYPE_NATIVE)) {
                    b("third_quartile", adColonyAd);
                } else {
                    b("native_third_quartile", adColonyAd);
                }
            }
            if (d2 < 1.0d && d >= 1.0d && !adColonyAd.l.equals(Ad.AD_TYPE_NATIVE)) {
                l.a.a("Tracking ad event - complete");
                ADCData.g gVar = new ADCData.g();
                if (adColonyAd.t) {
                    gVar.b("ad_slot", com.jirbo.adcolony.a.l.e.j);
                } else {
                    gVar.b("ad_slot", com.jirbo.adcolony.a.l.e.j);
                }
                gVar.b("replay", adColonyAd.u);
                a("complete", gVar, adColonyAd);
                adColonyAd.j.r = false;
            }
            adColonyAd.p = d;
        }
    }

    void a() {
        b();
        this.d = 0;
    }

    void b() {
        com.jirbo.adcolony.a.z = true;
        ADCData.c cVarC = k.c(new f("tracking_info.txt"));
        if (cVarC != null) {
            this.b.clear();
            for (int i = 0; i < cVarC.i(); i++) {
                ADCData.g gVarB = cVarC.b(i);
                a aVar = new a();
                aVar.a = gVarB.e("type");
                aVar.b = gVarB.e("url");
                aVar.c = gVarB.a("payload", (String) null);
                aVar.f = gVarB.g("attempts");
                aVar.l = gVarB.h("third_party");
                if (aVar.a.equals("v4vc_callback") || aVar.a.equals("reward_v4vc")) {
                    aVar.d = gVarB.e("v4vc_name");
                    aVar.h = gVarB.g("v4vc_amount");
                }
                this.b.add(aVar);
            }
        }
        l.a.a("Loaded ").a(this.b.size()).b((Object) " events");
    }

    void c() {
        this.c.clear();
        this.c.addAll(this.b);
        this.b.clear();
        ADCData.c cVar = new ADCData.c();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.c.size()) {
                a aVar = this.c.get(i2);
                if (!aVar.j) {
                    this.b.add(aVar);
                    ADCData.g gVar = new ADCData.g();
                    gVar.b("type", aVar.a);
                    gVar.b("url", aVar.b);
                    if (aVar.c != null) {
                        gVar.b("payload", aVar.c);
                    }
                    gVar.b("attempts", aVar.f);
                    if (aVar.d != null) {
                        gVar.b("v4vc_name", aVar.d);
                        gVar.b("v4vc_amount", aVar.h);
                    }
                    if (aVar.l) {
                        gVar.b("third_party", true);
                    }
                    cVar.a(gVar);
                }
                i = i2 + 1;
            } else {
                this.c.clear();
                l.a.a("Saving tracking_info (").a(this.b.size()).b((Object) " events)");
                k.a(new f("tracking_info.txt"), cVar);
                return;
            }
        }
    }

    void d() {
        if (this.e) {
            this.e = false;
            c();
        }
        e();
    }

    void e() {
        if (this.b.size() != 0) {
            while (this.b.size() > 1000) {
                this.b.remove(this.b.size() - 1);
            }
            if (q.c()) {
                double dC = aa.c();
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < this.b.size()) {
                        a aVar = this.b.get(i2);
                        if (aVar.e < dC && !aVar.k) {
                            if (this.d != 5) {
                                this.d++;
                                aVar.k = true;
                                if (aVar.a.equals("v4vc_callback")) {
                                    int i3 = this.f;
                                    this.f = i3 + 1;
                                    aVar.i = i3;
                                    this.g.put(Integer.valueOf(aVar.i), Boolean.valueOf(com.jirbo.adcolony.a.o));
                                }
                                ADCDownload aDCDownloadA = new ADCDownload(this.a, aVar.b, this).a(aVar);
                                if (aVar.l) {
                                    aDCDownloadA.h = true;
                                }
                                if (aVar.c != null) {
                                    aDCDownloadA.a("application/json", aVar.c);
                                }
                                l.b.a("Submitting '").a(aVar.a).b((Object) "' event.");
                                aDCDownloadA.b();
                                com.jirbo.adcolony.a.z = true;
                            } else {
                                return;
                            }
                        }
                        i = i2 + 1;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    @Override // com.jirbo.adcolony.ADCDownload.Listener
    public void on_download_finished(ADCDownload download) {
        boolean z;
        com.jirbo.adcolony.a.z = true;
        this.e = true;
        this.d--;
        a aVar = (a) download.e;
        l.a.a("on_download_finished - event.type = ").b((Object) aVar.a);
        aVar.k = false;
        boolean zEquals = download.i;
        if (zEquals && aVar.c != null) {
            ADCData.g gVarB = k.b(download.n);
            if (gVarB != null) {
                zEquals = gVarB.e("status").equals("success");
                if (zEquals && aVar.a.equals("reward_v4vc")) {
                    if (gVarB.h("v4vc_status")) {
                        String strE = gVarB.e("v4vc_callback");
                        if (strE.length() > 0) {
                            a aVar2 = new a();
                            aVar2.a = "v4vc_callback";
                            aVar2.b = strE;
                            aVar2.d = aVar.d;
                            aVar2.h = aVar.h;
                            this.b.add(aVar2);
                        } else {
                            if (com.jirbo.adcolony.a.U != null) {
                                com.jirbo.adcolony.a.U.o = true;
                            }
                            l.a.b((Object) "Client-side V4VC success");
                        }
                    } else {
                        l.a.b((Object) "Client-side V4VC failure");
                    }
                }
            } else {
                zEquals = false;
            }
        }
        if (zEquals && aVar.a.equals("v4vc_callback")) {
            l.a.b((Object) "v4vc_callback response:").b((Object) download.n);
            if (download.n.indexOf("vc_success") != -1 && this.g.get(Integer.valueOf(aVar.i)).booleanValue()) {
                if (com.jirbo.adcolony.a.U != null) {
                    com.jirbo.adcolony.a.U.o = true;
                }
                l.a.b((Object) "v4vc_callback success");
                this.a.a(true, aVar.d, aVar.h);
                z = zEquals;
            } else if (download.n.indexOf("vc_decline") != -1 || download.n.indexOf("vc_noreward") != -1) {
                l.c.a("Server-side V4VC failure: ").b((Object) download.c);
                l.a.b((Object) "v4vc_callback declined");
                this.a.a(false, "", 0);
                z = zEquals;
            } else {
                l.c.a("Server-side V4VC failure: ").b((Object) download.c);
                z = false;
            }
        } else {
            z = zEquals;
        }
        if (z) {
            l.a.a("Event submission SUCCESS for type: ").b((Object) aVar.a);
            aVar.j = true;
        } else {
            l.a.a("Event submission FAILED for type: ").a(aVar.a).a(" on try ").b(aVar.f + 1);
            aVar.f++;
            if (aVar.f >= 24) {
                l.d.b((Object) "Discarding event after 24 attempts to report.");
                aVar.j = true;
                if (aVar.a.equals("v4vc_callback")) {
                    this.a.a(false, "", 0);
                }
            } else {
                int i = aVar.g > 0 ? aVar.g * 3 : 20;
                if (i > 10000) {
                    i = 10000;
                }
                l.a.a("Retrying in ").a(i).a(" seconds (attempt ").a(aVar.f).b((Object) ")");
                aVar.g = i;
                aVar.e = aa.c() + ((double) i);
            }
        }
        if (!this.a.e.b) {
            c();
        }
    }

    static class a {
        String a;
        String b;
        String c;
        String d;
        double e;
        int f;
        int g;
        int h;
        int i = -1;
        boolean j;
        boolean k;
        boolean l;

        a() {
        }
    }
}
