package com.jirbo.adcolony;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
class ag {
    d a;
    boolean b = false;
    ArrayList<af> c = new ArrayList<>();

    ag(d dVar) {
        this.a = dVar;
    }

    void a() {
        ADCData.c cVarC = k.c(new f("zone_state.txt"));
        if (cVarC != null) {
            this.c.clear();
            for (int i = 0; i < cVarC.i(); i++) {
                ADCData.g gVarB = cVarC.b(i);
                af afVar = new af();
                if (afVar.a(gVarB)) {
                    this.c.add(afVar);
                }
            }
        }
        for (String str : this.a.a.l) {
            a(str);
        }
    }

    void b() {
        l.a.b((Object) "Saving zone state...");
        this.b = false;
        ADCData.c cVar = new ADCData.c();
        for (String str : this.a.a.l) {
            cVar.a(a(str).a());
        }
        k.a(new f("zone_state.txt"), cVar);
        l.a.b((Object) "Saved zone state");
    }

    int c() {
        return this.c.size();
    }

    af a(int i) {
        return this.c.get(i);
    }

    af a(String str) {
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            af afVar = this.c.get(i);
            if (afVar.a.equals(str)) {
                return afVar;
            }
        }
        this.b = true;
        af afVar2 = new af(str);
        this.c.add(afVar2);
        return afVar2;
    }

    void d() {
        if (this.b) {
            b();
        }
    }
}
