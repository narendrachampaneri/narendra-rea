package com.vungle.publisher;

import android.location.Location;
import com.vungle.log.Logger;
import dagger.Lazy;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class ck implements cj {
    boolean a = true;
    boolean b = true;

    @Inject
    public Lazy<cl> c;

    @Inject
    public cm d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.location.Location] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.StringBuilder] */
    @Override // com.vungle.publisher.cj
    public final Location b() {
        cj cjVar;
        ?? r1;
        Throwable th;
        ?? B;
        ?? r0 = 0;
        Location locationB = null;
        try {
            if (this.b) {
                cjVar = this.d;
                try {
                    if (cjVar != null) {
                        try {
                            locationB = cjVar.b();
                        } catch (NoClassDefFoundError e) {
                            Logger.i(Logger.LOCATION_TAG, "permanent error obtaining detailed location " + cjVar, e);
                            this.b = false;
                            r1 = 0;
                            cjVar = cjVar;
                        } catch (Throwable th2) {
                            Logger.i(Logger.LOCATION_TAG, "error obtaining detailed location " + cjVar, th2);
                            r1 = 0;
                            cjVar = cjVar;
                        }
                    }
                    r1 = locationB;
                    cjVar = cjVar;
                } catch (Throwable th3) {
                    r1 = r0;
                    th = th3;
                    Logger.i(Logger.LOCATION_TAG, "error obtaining detailed location " + cjVar, th);
                    return r1;
                }
            } else {
                cjVar = null;
                r1 = 0;
            }
            try {
                r0 = this.a;
                r1 = r1;
                r1 = r1;
                cjVar = cjVar;
                cjVar = cjVar;
                if (r0 != 0 && r1 == 0) {
                    try {
                        cj cjVar2 = this.c.get();
                        if (cjVar2 != null) {
                            try {
                                B = cjVar2.b();
                            } catch (NoClassDefFoundError e2) {
                                cjVar = cjVar2;
                                e = e2;
                                Logger.i(Logger.LOCATION_TAG, "permanent error obtaining detailed location " + cjVar, e);
                                this.a = false;
                                r1 = r1;
                                cjVar = cjVar;
                            } catch (Throwable th4) {
                                cjVar = cjVar2;
                                th = th4;
                                Logger.i(Logger.LOCATION_TAG, "error obtaining detailed location " + cjVar, th);
                                r1 = r1;
                                cjVar = cjVar;
                            }
                        } else {
                            B = r1;
                        }
                        r1 = B;
                        cjVar = cjVar;
                    } catch (NoClassDefFoundError e3) {
                        e = e3;
                    } catch (Throwable th5) {
                        th = th5;
                    }
                }
            } catch (Throwable th6) {
                th = th6;
                Logger.i(Logger.LOCATION_TAG, "error obtaining detailed location " + cjVar, th);
            }
        } catch (Throwable th7) {
            cjVar = null;
            r1 = 0;
            th = th7;
        }
        return r1;
    }
}
