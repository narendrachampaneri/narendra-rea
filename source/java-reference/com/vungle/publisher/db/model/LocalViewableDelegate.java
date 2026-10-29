package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.vungle.log.Logger;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import com.vungle.publisher.bj;
import com.vungle.publisher.bk;
import com.vungle.publisher.bt;
import com.vungle.publisher.cb;
import com.vungle.publisher.cc;
import com.vungle.publisher.cw;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.net.http.DownloadHttpGateway;
import java.io.File;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class LocalViewableDelegate {
    a a;
    public String b;
    Integer c;

    @Inject
    DownloadHttpGateway d;

    @Inject
    bt e;

    @Inject
    SdkState f;

    /* JADX INFO: compiled from: vungle */
    interface a extends bk {
        boolean q();

        boolean u();
    }

    LocalViewableDelegate() {
    }

    private String i() {
        return this.a.d();
    }

    final String a() {
        return this.a.c().t();
    }

    final File b() {
        String strC = c();
        if (strC == null) {
            return null;
        }
        return new File(strC);
    }

    final String c() {
        return cc.a(a(), j() + "." + this.a.h());
    }

    private bj.b j() {
        return this.a.f();
    }

    final int d() {
        this.a.A();
        return this.a.B();
    }

    final void a(final cw cwVar) {
        Logger.d(Logger.PREPARE_TAG, "downloading " + this.a.f() + " for ad_id " + i());
        this.a.b(bj.a.downloading);
        final DownloadHttpGateway downloadHttpGateway = this.d;
        final a aVar = this.a;
        downloadHttpGateway.e.a(new Runnable() { // from class: com.vungle.publisher.net.http.DownloadHttpGateway.1
            final /* synthetic */ bk a;
            final /* synthetic */ cw b;

            public AnonymousClass1() {
                bkVar = aVar;
                cwVar = cwVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    DownloadHttpGateway.this.a.a(bkVar.d(), bkVar.f(), bkVar.g(), bkVar.k(), cwVar).a();
                } catch (Exception e) {
                    DownloadHttpGateway.this.d.a(Logger.NETWORK_TAG, "error requesting streaming ad", e);
                }
            }
        }, ScheduledPriorityExecutor.b.downloadLocalAd, cwVar.a(2000));
    }

    final boolean e() {
        boolean zQ = this.a.q();
        if (zQ) {
            bj.a aVar = bj.a.ready;
            Logger.i(Logger.PREPARE_TAG, j() + " " + aVar + " for ad_id " + i());
            this.a.b(aVar);
        } else {
            if (SdkState.a()) {
                Logger.i(Logger.PREPARE_TAG, "debug mode: post-processing failed for " + this.a.y() + " - not deleting " + c());
            } else {
                Logger.d(Logger.PREPARE_TAG, "post-processing failed for " + this.a.y() + " - deleting " + c());
                this.a.A();
            }
            this.a.b(bj.a.aware);
        }
        return zQ;
    }

    final boolean f() throws cb {
        bj.a aVar;
        boolean zU = this.a.u();
        String strI = i();
        bj.b bVarJ = j();
        if (zU) {
            Logger.i(Logger.PREPARE_TAG, bVarJ + " verified for ad_id " + strI);
            aVar = bj.a.ready;
        } else {
            Logger.w(Logger.PREPARE_TAG, bVarJ + " failed verification; reprocessing ad_id " + strI);
            aVar = bj.a.aware;
        }
        this.a.b(aVar);
        return zU;
    }

    final boolean g() throws cb {
        boolean z;
        if (!this.e.o()) {
            throw new cb();
        }
        String strI = i();
        bj.b bVarJ = j();
        if (this.c == null) {
            Logger.d(Logger.PREPARE_TAG, bVarJ + " size " + this.c + " for ad_id: " + strI);
            return true;
        }
        File fileB = b();
        int length = fileB == null ? 0 : (int) fileB.length();
        if (length == this.c.intValue()) {
            Logger.d(Logger.PREPARE_TAG, bVarJ + " disk size matched size " + this.c + " for ad_id: " + strI);
            return true;
        }
        Logger.d(Logger.PREPARE_TAG, bVarJ + " disk size " + length + " failed to match size " + this.c + " for ad_id: " + strI);
        File fileB2 = b();
        if (fileB2 == null) {
            Logger.w(Logger.PREPARE_TAG, "null " + this.a.f() + " file for ad " + i());
            z = false;
        } else if (fileB2.exists()) {
            Logger.v(Logger.PREPARE_TAG, fileB2.getAbsolutePath() + " exists, " + fileB2.length() + " bytes");
            z = true;
        } else {
            Logger.w(Logger.PREPARE_TAG, fileB2.getAbsolutePath() + " missing ");
            z = false;
        }
        if (!z) {
            return false;
        }
        Logger.d(Logger.PREPARE_TAG, "ignoring " + bVarJ + " size mismatch - file exists");
        return true;
    }

    final boolean h() {
        File fileB = b();
        Logger.d(Logger.PREPARE_TAG, "deleting " + fileB);
        return fileB != null && fileB.delete();
    }

    final void a(ContentValues contentValues) {
        contentValues.put("url", this.b);
        contentValues.put("size", this.c);
    }

    final void a(Cursor cursor) {
        this.b = bg.f(cursor, "url");
        this.c = bg.d(cursor, "size");
    }

    final void a(StringBuilder sb) {
        bi.a(sb, "url", this.b);
        bi.a(sb, "size", this.c);
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class Factory {

        @Inject
        Provider<LocalViewableDelegate> a;

        @Inject
        DownloadHttpGateway b;

        Factory() {
        }

        final LocalViewableDelegate a(a aVar) {
            LocalViewableDelegate localViewableDelegate = this.a.get();
            localViewableDelegate.a = aVar;
            localViewableDelegate.d = this.b;
            return localViewableDelegate;
        }
    }
}
