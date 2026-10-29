package com.jirbo.adcolony;

import android.app.Activity;
import android.os.Looper;
import com.amazon.identity.auth.device.endpoint.AbstractOauthTokenRequest;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;

/* JADX INFO: loaded from: classes2.dex */
class b implements ADCDownload.Listener {
    d a;
    boolean b;
    boolean c;
    boolean d;
    double h;
    boolean e = true;
    boolean f = false;
    boolean g = true;
    n.e i = new n.e();

    b(d dVar) {
        this.a = dVar;
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
    }

    void a() {
    }

    void b() {
        boolean z;
        l.b.b((Object) "Attempting to load backup manifest from file.");
        f fVar = new f("manifest.txt");
        ADCData.g gVarB = k.b(fVar);
        if (gVarB != null) {
            ADCData.c cVarC = gVarB.b(SettingsJsonConstants.APP_KEY).c("zones");
            if (cVarC == null) {
                z = true;
                break;
            }
            int i = 0;
            while (true) {
                if (i >= cVarC.i()) {
                    z = true;
                    break;
                }
                ADCData.g gVarB2 = cVarC.b(i);
                boolean z2 = false;
                for (int i2 = 0; i2 < a.l.a.l.length; i2++) {
                    if (gVarB2.e(AnalyticAttribute.UUID_ATTRIBUTE).equals(a.l.a.l[i2])) {
                        z2 = true;
                    }
                }
                if (!z2) {
                    z = false;
                    break;
                }
                i++;
            }
            a.C = true;
            if (z && a(gVarB)) {
                this.b = true;
                this.i.a();
                a.C = false;
            } else {
                l.b.b((Object) "Invalid manifest loaded.");
                fVar.c();
                a.C = false;
                this.b = false;
            }
        }
    }

    String c() {
        if (!this.b) {
            return null;
        }
        String str = null;
        for (int i = 0; i < this.i.n.b(); i++) {
            n.ad adVarA = this.i.n.a(i);
            if (adVarA.g()) {
                str = adVarA.a;
                if (adVarA.c()) {
                    return adVarA.a;
                }
            }
        }
        return str;
    }

    String d() {
        if (!this.b) {
            return null;
        }
        String str = null;
        for (int i = 0; i < this.i.n.b(); i++) {
            n.ad adVarA = this.i.n.a(i);
            if (adVarA.i()) {
                str = adVarA.a;
                if (adVarA.c()) {
                    return adVarA.a;
                }
            }
        }
        return str;
    }

    boolean a(String str) {
        return a(str, true);
    }

    boolean a(String str, boolean z) {
        for (int i = 0; i < this.i.n.b(); i++) {
            n.ad adVarA = this.i.n.a(i);
            if (adVarA.c(z) && adVarA.a.equals(str)) {
                return true;
            }
        }
        return false;
    }

    boolean b(String str) {
        return b(str, false);
    }

    boolean b(String str, boolean z) {
        if (z) {
            return c(str, z);
        }
        if (this.b) {
            return z ? this.i.a(str, true, false) : this.i.a(str, false, true);
        }
        return l.c.b("Ads are not ready to be played, as they are still downloading.");
    }

    boolean c(String str, boolean z) {
        if (this.b) {
            return z ? this.i.a(str, true, false) : this.i.a(str, false, true);
        }
        return false;
    }

    void e() {
    }

    void f() {
        this.c = true;
        if (this.c) {
            this.c = false;
            if (g.c() >= 32) {
                this.h = aa.c() + 600.0d;
                h();
            }
        }
        if (!q.c()) {
            if (a.L) {
                a.h();
            }
            a.L = false;
        } else {
            if (!a.L) {
                a.h();
            }
            a.L = true;
        }
    }

    void g() {
        new Thread(new Runnable() { // from class: com.jirbo.adcolony.b.1
            @Override // java.lang.Runnable
            public void run() {
                for (int i = 0; i < 500 && a.a(); i++) {
                    try {
                        Thread.sleep(10L);
                    } catch (InterruptedException e) {
                    }
                }
            }
        }).start();
        h();
    }

    void h() {
        a((Activity) null);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void a(Activity activity) {
        a.z = true;
        if (!this.d) {
            this.d = true;
            if (!this.b) {
                b();
            }
        }
        if (activity != null) {
            a.U = null;
        }
        ADCData.g gVar = this.a.a.j;
        gVar.b(AbstractOauthTokenRequest.APP_APP_ID_PARAM, this.a.a.k);
        ADCData.c cVar = new ADCData.c();
        if (this.a.a.l != null) {
            for (String str : this.a.a.l) {
                n.ad adVarG = a.l.g(str);
                if (adVarG == null || (adVarG != null && (adVarG.a() || System.currentTimeMillis() - adVarG.q > adVarG.o))) {
                    cVar.a(str);
                }
            }
        }
        if (cVar.i() != 0) {
            gVar.a("zones", (ADCData.i) cVar);
            ADCData.g gVar2 = new ADCData.g();
            ADCData.g gVar3 = new ADCData.g();
            ADCData.g gVar4 = new ADCData.g();
            if (this.a.a.l != null) {
                for (String str2 : this.a.a.l) {
                    n.ad adVarG2 = a.l.g(str2);
                    ADCData.c cVar2 = new ADCData.c();
                    ADCData.c cVar3 = new ADCData.c();
                    if (adVarG2 != null && adVarG2.m != null && adVarG2.m.a != null) {
                        for (n.a aVar : adVarG2.m.a) {
                            if (!aVar.b()) {
                                cVar2.a(aVar.a);
                            }
                            if (aVar.c()) {
                                cVar3.a(aVar.a);
                            }
                        }
                    }
                    if (cVar2.i() > 0) {
                        gVar2.a(str2, (ADCData.i) cVar2);
                    }
                    if (cVar3.i() > 0) {
                        gVar3.a(str2, (ADCData.i) cVar3);
                    }
                    if (adVarG2 != null && adVarG2.j.i() > 0) {
                        gVar4.a(str2, (ADCData.i) adVarG2.j);
                    }
                }
            }
            gVar.a("ad_queue", (ADCData.i) gVar2);
            gVar.a("ad_playing", (ADCData.i) gVar3);
            gVar.a("ad_history", (ADCData.i) gVar4);
            String str3 = a.l.e.k == null ? "" : a.l.e.k;
            int i = a.l.e.j;
            gVar.b(AnalyticAttribute.CARRIER_ATTRIBUTE, this.a.a.x);
            if (q.a()) {
                gVar.b("network_type", "wifi");
            } else if (q.b()) {
                gVar.b("network_type", "cell");
            } else {
                gVar.b("network_type", "none");
            }
            gVar.b("custom_id", this.a.a.y);
            gVar.b(AnalyticsSQLiteHelper.EVENT_LIST_SID, str3);
            gVar.b("s_imp_count", i);
            if (!a.p) {
                l lVarA = l.b.a("Downloading ad manifest from ");
                c cVar4 = this.a.a;
                lVarA.a(c.c).b((Object) " with the following post content: ");
                l.b.b((Object) gVar.toString());
                a.p = true;
                d dVar = this.a;
                c cVar5 = this.a.a;
                new ADCDownload(dVar, c.c, this).a("application/json", gVar.q()).b();
            }
        }
    }

    @Override // com.jirbo.adcolony.ADCDownload.Listener
    public void on_download_finished(ADCDownload download) {
        boolean z;
        a.z = true;
        if (download.i) {
            l.c.b((Object) "Received ad server response from:");
            l.c.b((Object) download.c);
            ADCData.g gVarB = k.b(download.n);
            if (gVarB == null) {
                l.a.b((Object) "Invalid JSON in manifest.  Raw data:");
                l.a.b((Object) download.n);
                return;
            }
            if (a(gVarB)) {
                l.b.b((Object) "Ad manifest updated.");
                ADCData.c cVarC = k.c(gVarB.b(SettingsJsonConstants.APP_KEY).c("zones").toString());
                for (int i = 0; i < this.i.n.b(); i++) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= cVarC.i()) {
                            z = false;
                            break;
                        } else {
                            if (this.i.n.a.get(i).a.equals(cVarC.b(i2).e(AnalyticAttribute.UUID_ATTRIBUTE))) {
                                z = true;
                                break;
                            }
                            i2++;
                        }
                    }
                    if (!z) {
                        cVarC.a(this.i.n.a(i).b);
                    }
                }
                gVarB.b(SettingsJsonConstants.APP_KEY).c("zones").j();
                for (int i3 = 0; i3 < cVarC.i(); i3++) {
                    boolean z2 = false;
                    for (int i4 = 0; i4 < a.l.a.l.length; i4++) {
                        if (a.l.a.l[i4].equals(cVarC.b(i3).e(AnalyticAttribute.UUID_ATTRIBUTE))) {
                            z2 = true;
                        }
                    }
                    if (z2) {
                        cVarC.b(i3).b("last_config_ms", new Long(System.currentTimeMillis()).toString());
                        gVarB.b(SettingsJsonConstants.APP_KEY).c("zones").a(cVarC.b(i3));
                    }
                }
                new f("manifest.txt").a(gVarB.toString());
                this.b = true;
                this.i.a();
                if (this.i.i == null || this.i.i.equals("")) {
                    this.i.i = "all";
                }
                if (this.i.j == null || this.i.j.equals("")) {
                    this.i.j = "all";
                }
                a.h();
                return;
            }
            l.b.b((Object) "Invalid manifest.");
            return;
        }
        l.c.b((Object) "Error retrieving ad server response from:");
        l.c.b((Object) download.c);
    }

    boolean a(ADCData.g gVar) {
        if (gVar == null || !gVar.e("status").equals("success") || !this.i.a(gVar.b(SettingsJsonConstants.APP_KEY))) {
            return false;
        }
        l.a.b((Object) "Finished parsing manifest");
        a.h();
        if (!this.i.h.equalsIgnoreCase("none")) {
            l.c.b((Object) "Enabling debug logging.");
            a.a(1);
        } else {
            a.a(2);
        }
        return true;
    }
}
