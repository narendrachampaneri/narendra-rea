package com.jirbo.adcolony;

import android.os.StatFs;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class ADCStorage {
    d a;
    String b;
    String c;
    String d;
    File e;
    File f;

    ADCStorage(d controller) {
        this.a = controller;
    }

    void a() {
        l.a.b((Object) "Configuring storage");
        l.b.b((Object) "Using internal storage:");
        this.b = c() + "/adc/";
        this.c = this.b + "media/";
        l.a.b((Object) this.c);
        this.e = new File(this.c);
        if (!this.e.isDirectory()) {
            this.e.delete();
            this.e.mkdirs();
        }
        if (!this.e.isDirectory()) {
            a.a("Cannot create media folder.");
            return;
        }
        if (a(this.c) < 2.097152E7d) {
            a.a("Not enough space to store temporary files (" + a(this.c) + " bytes available).");
            return;
        }
        this.d = c() + "/adc/data/";
        if (a.n == 0) {
            this.d = this.b + "data/";
        }
        l.a.a("Internal data path: ").b((Object) this.d);
        this.f = new File(this.d);
        if (!this.f.isDirectory()) {
            this.f.delete();
        }
        this.f.mkdirs();
        f fVar = new f("iap_cache.txt");
        fVar.c();
        k.a(fVar, a.aj);
    }

    void b() {
        if (this.e != null && this.f != null) {
            if (!this.e.isDirectory()) {
                this.e.delete();
            }
            if (!this.f.isDirectory()) {
                this.f.delete();
            }
            this.e.mkdirs();
            this.f.mkdirs();
        }
    }

    String c() {
        return a.P == null ? "" : AdColony.activity().getFilesDir().getAbsolutePath();
    }

    String d() {
        return a.P == null ? "" : AdColony.activity().getExternalFilesDir(null).getAbsolutePath();
    }

    double a(String str) {
        try {
            StatFs statFs = new StatFs(str);
            return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
        } catch (RuntimeException e) {
            return 0.0d;
        }
    }
}
