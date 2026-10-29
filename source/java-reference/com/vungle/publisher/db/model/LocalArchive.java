package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.vungle.log.Logger;
import com.vungle.publisher.bi;
import com.vungle.publisher.bj;
import com.vungle.publisher.cc;
import com.vungle.publisher.cf;
import com.vungle.publisher.cw;
import com.vungle.publisher.protocol.message.RequestLocalAdResponse;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class LocalArchive extends Viewable<LocalAd, LocalVideo, RequestLocalAdResponse> implements LocalViewableDelegate.a {
    ArchiveEntry[] a;
    boolean b;
    boolean c;
    boolean d;

    @Inject
    Factory e;

    @Inject
    LoggedException.Factory f;

    @Inject
    ArchiveEntry.Factory g;

    @Inject
    LocalAd.Factory h;

    @Inject
    public LocalViewableDelegate i;

    @Override // com.vungle.publisher.db.model.Viewable
    protected final /* bridge */ /* synthetic */ Ad.Factory C() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.e;
    }

    protected LocalArchive() {
    }

    @Override // com.vungle.publisher.bk
    public final String g() {
        return this.i.b;
    }

    public final void a(String str) {
        this.i.b = str;
    }

    @Override // com.vungle.publisher.bk
    public final void a(Integer num) {
        this.i.c = num;
    }

    @Override // com.vungle.publisher.bk
    public final String h() {
        return "zip";
    }

    public final ArchiveEntry[] i() {
        if (!this.b) {
            a(this.g.a(this), false);
        }
        return this.a;
    }

    private void a(ArchiveEntry[] archiveEntryArr, boolean z) {
        this.a = archiveEntryArr;
        this.c = z;
        this.b = true;
    }

    public final String j() {
        return cc.a(this.i.a(), this.q);
    }

    @Override // com.vungle.publisher.bk
    public final String k() {
        return this.i.c();
    }

    @Override // com.vungle.publisher.bk
    public final void a(cw cwVar) {
        this.i.a(cwVar);
    }

    @Override // com.vungle.publisher.bk
    public final boolean l() {
        return this.i.e();
    }

    @Override // com.vungle.publisher.db.model.LocalViewableDelegate.a
    public final boolean q() {
        if (!this.i.g() || !E()) {
            return false;
        }
        return u();
    }

    private boolean E() {
        File fileB = this.i.b();
        try {
            final ArrayList arrayList = new ArrayList();
            cf.a(fileB, new File(j()), new cf.a() { // from class: com.vungle.publisher.db.model.LocalArchive.1
                @Override // com.vungle.publisher.cf.a
                public final void a(File file, long j) {
                    Logger.v(Logger.PREPARE_TAG, "extracted " + file + ": " + j + " bytes");
                    List list = arrayList;
                    ArchiveEntry.Factory factory = LocalArchive.this.g;
                    LocalArchive localArchive = LocalArchive.this;
                    ArchiveEntry archiveEntryB = factory.c_();
                    archiveEntryB.a = localArchive;
                    archiveEntryB.b = file.getName();
                    archiveEntryB.c = Integer.valueOf((int) j);
                    list.add(archiveEntryB);
                }
            });
            a((ArchiveEntry[]) arrayList.toArray(new ArchiveEntry[arrayList.size()]), true);
            return true;
        } catch (IOException e) {
            this.f.b(Logger.PREPARE_TAG, "error extracting " + fileB, e);
            return false;
        }
    }

    @Override // com.vungle.publisher.bk
    public final boolean t() {
        return this.i.f();
    }

    @Override // com.vungle.publisher.db.model.LocalViewableDelegate.a
    public final boolean u() {
        boolean zExists;
        ArchiveEntry[] archiveEntryArrI = i();
        int length = archiveEntryArrI.length;
        int i = 0;
        boolean z = false;
        while (i < length) {
            ArchiveEntry archiveEntry = archiveEntryArrI[i];
            String strA = cc.a(archiveEntry.a.j(), archiveEntry.b);
            File file = strA == null ? null : new File(strA);
            if (archiveEntry.c == null) {
                Logger.w(Logger.PREPARE_TAG, file + " size is null");
                zExists = false;
            } else {
                int length2 = (int) file.length();
                int iIntValue = archiveEntry.c.intValue();
                boolean z2 = length2 == iIntValue;
                if (z2) {
                    Logger.v(Logger.PREPARE_TAG, file + " size verified " + length2);
                    zExists = z2;
                } else {
                    Logger.d(Logger.PREPARE_TAG, file + " size " + length2 + " doesn't match expected " + iIntValue);
                    zExists = file.exists();
                }
            }
            if (!zExists) {
                return false;
            }
            i++;
            z = true;
        }
        return z;
    }

    @Override // com.vungle.publisher.bi
    public final int n() {
        F();
        return this.i.d();
    }

    @Override // com.vungle.publisher.bk
    public final boolean A() {
        return this.i.h() & F();
    }

    private boolean F() {
        String strJ = j();
        Logger.d(Logger.DATABASE_TAG, "deleting " + this.q + " directory " + strJ);
        boolean zA = cc.a(j());
        if (zA) {
            Logger.v(Logger.DATABASE_TAG, "deleting " + this.q + " directory " + strJ);
            this.a = null;
            this.d = true;
        } else {
            Logger.w(Logger.DATABASE_TAG, "failed to delete " + this.q + " directory " + strJ);
        }
        return zA;
    }

    @Override // com.vungle.publisher.bk
    public final int B() {
        return super.n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.bi, com.vungle.publisher.bl
    public final int m() {
        int iM = super.m();
        if (iM == 1) {
            if (this.d) {
                this.g.a((Integer) this.t);
                F();
                Logger.v(Logger.DATABASE_TAG, "resetting areArchiveEntriesDeleted = false");
                this.d = false;
            } else if (this.c) {
                ArchiveEntry.Factory.a((bi[]) this.a);
                Logger.v(Logger.DATABASE_TAG, "resetting areArchiveEntriesNew = false");
                this.c = false;
            }
        }
        return iM;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.db.model.Viewable, com.vungle.publisher.bi
    public final ContentValues a(boolean z) {
        ContentValues contentValuesA = super.a(z);
        this.i.a(contentValuesA);
        return contentValuesA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.db.model.Viewable, com.vungle.publisher.bi
    public final StringBuilder p() {
        StringBuilder sbP = super.p();
        this.i.a(sbP);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class Factory extends Viewable.BaseFactory<LocalAd, LocalArchive, LocalVideo, RequestLocalAdResponse> {

        @Inject
        Provider<LocalArchive> a;

        @Inject
        LocalViewableDelegate.Factory b;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.db.model.Viewable.BaseFactory, com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi a(bi biVar, Cursor cursor) {
            return a((LocalArchive) biVar, cursor, false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new LocalArchive[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* synthetic */ bi c_() {
            LocalArchive localArchive = this.a.get();
            localArchive.i = this.b.a(localArchive);
            return localArchive;
        }

        protected Factory() {
        }

        final LocalArchive a(LocalAd localAd, RequestLocalAdResponse requestLocalAdResponse, bj.b bVar) {
            if (requestLocalAdResponse == null) {
                return null;
            }
            switch (bVar) {
                case postRoll:
                    String str = requestLocalAdResponse.t;
                    if (str == null) {
                        return null;
                    }
                    LocalArchive localArchive = (LocalArchive) super.b(localAd, requestLocalAdResponse);
                    localArchive.q = bVar;
                    localArchive.a(str);
                    return localArchive;
                case preRoll:
                    String str2 = requestLocalAdResponse.u;
                    if (str2 == null) {
                        return null;
                    }
                    LocalArchive localArchive2 = (LocalArchive) super.b(localAd, requestLocalAdResponse);
                    localArchive2.q = bVar;
                    localArchive2.a(str2);
                    return localArchive2;
                default:
                    throw new IllegalArgumentException("cannot create archive of type: " + bVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.vungle.publisher.db.model.Viewable.BaseFactory
        public LocalArchive a(LocalArchive localArchive, Cursor cursor, boolean z) {
            super.a(localArchive, cursor, z);
            localArchive.i.a(cursor);
            if (z) {
                localArchive.i();
            }
            return localArchive;
        }
    }
}
