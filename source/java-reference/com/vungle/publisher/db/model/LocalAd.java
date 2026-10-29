package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import com.vungle.log.Logger;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import com.vungle.publisher.bj;
import com.vungle.publisher.bk;
import com.vungle.publisher.cb;
import com.vungle.publisher.cc;
import com.vungle.publisher.da;
import com.vungle.publisher.de;
import com.vungle.publisher.inject.annotations.AdTempDirectory;
import com.vungle.publisher.protocol.message.RequestLocalAdResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class LocalAd extends Ad<LocalAd, LocalVideo, RequestLocalAdResponse> {
    LocalArchive A;
    long B;
    boolean C;
    boolean D;

    @Inject
    Factory E;
    int v;
    Long w;
    String x;
    LocalArchive y;
    public int z;

    @Override // com.vungle.publisher.db.model.Ad
    protected final /* bridge */ /* synthetic */ Ad.Factory a() {
        return this.E;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.E;
    }

    protected LocalAd() {
    }

    public final void a(String str) {
        this.x = str;
        this.o = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String t() {
        if (this.o == null) {
            this.o = cc.a(this.x, cc.c((String) this.t));
        }
        return this.o;
    }

    public final LocalArchive u() {
        return this.E.a(this, false);
    }

    public final LocalArchive A() {
        return this.E.b(this, false);
    }

    @Override // com.vungle.publisher.db.model.Ad
    public final void a(Ad.a aVar) {
        Ad.a aVar2 = this.j;
        super.a(aVar);
        if (aVar != aVar2 && aVar != Ad.a.failed) {
            Logger.v(Logger.PREPARE_TAG, "resetting prepare_retry_count from " + this.z + " to 0 for " + y());
            this.z = 0;
        }
    }

    public final bk[] B() {
        ArrayList arrayList = new ArrayList();
        LocalArchive localArchiveA = A();
        if (localArchiveA != null) {
            arrayList.add(localArchiveA);
        }
        LocalVideo localVideoK = k();
        if (localVideoK != null) {
            arrayList.add(localVideoK);
        }
        LocalArchive localArchiveU = u();
        if (localArchiveU != null) {
            arrayList.add(localArchiveU);
        }
        return (bk[]) arrayList.toArray(new bk[arrayList.size()]);
    }

    @Override // com.vungle.publisher.db.model.Ad
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final bk a(bj.b bVar) {
        switch (bVar) {
            case preRoll:
                return A();
            case localVideo:
                return k();
            case postRoll:
                return u();
            default:
                return (bk) super.a(bVar);
        }
    }

    final boolean C() {
        boolean z = true;
        for (bk bkVar : B()) {
            if (!bkVar.t()) {
                z = false;
                break;
            }
        }
        if (!z) {
            a(Ad.a.aware);
            for (bk bkVar2 : B()) {
                bkVar2.a(bj.a.aware);
            }
            m();
        }
        return z;
    }

    public final boolean D() {
        return cc.a(t());
    }

    @Override // com.vungle.publisher.db.model.Ad, com.vungle.publisher.bi
    /* JADX INFO: renamed from: l */
    public final String r() throws SQLException {
        String strR = super.r();
        if (this.y != null) {
            this.y.r();
        }
        if (this.A != null) {
            this.A.r();
        }
        return strR;
    }

    @Override // com.vungle.publisher.db.model.Ad, com.vungle.publisher.bi, com.vungle.publisher.bl
    public final int m() {
        int iM = super.m();
        if (iM == 1) {
            if (this.A != null) {
                this.A.m();
            }
            if (this.y != null) {
                this.y.m();
            }
        }
        return iM;
    }

    @Override // com.vungle.publisher.db.model.Ad, com.vungle.publisher.bi
    public final int n() {
        int i = this.v;
        this.v = i + 1;
        if (cc.a(t())) {
            return super.n();
        }
        Logger.w(Logger.DATABASE_TAG, "unable to delete files for " + y() + " attempt " + i);
        m();
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.db.model.Ad, com.vungle.publisher.bi
    public final ContentValues a(boolean z) {
        ContentValues contentValuesA = super.a(z);
        contentValuesA.put("delete_local_content_attempts", Integer.valueOf(this.v));
        contentValuesA.put("expiration_timestamp_seconds", this.w);
        contentValuesA.put("parent_path", this.x);
        contentValuesA.put("prepare_retry_count", Integer.valueOf(this.z));
        contentValuesA.put("received_timestamp_millis", Long.valueOf(this.B));
        return contentValuesA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.db.model.Ad, com.vungle.publisher.bi
    public final StringBuilder p() {
        StringBuilder sbP = super.p();
        bi.a(sbP, "delete_local_content_attempts", Integer.valueOf(this.v), false);
        bi.a(sbP, "expiration_timestamp_seconds", this.w, false);
        bi.a(sbP, "parent_path", this.x, false);
        bi.a(sbP, "prepare_retry_count", Integer.valueOf(this.z), false);
        bi.a(sbP, "received_timestamp_millis", Long.valueOf(this.B), false);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends Ad.Factory<LocalAd, LocalVideo, RequestLocalAdResponse> {

        @Inject
        @AdTempDirectory
        Provider<String> d;

        @Inject
        LocalArchive.Factory e;

        @Inject
        Viewable.Factory f;

        @Inject
        Provider<LocalAd> g;

        @Inject
        LocalVideo.Factory h;

        @Inject
        ScheduledPriorityExecutor i;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.db.model.Ad.Factory, com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi a(bi biVar, Cursor cursor) {
            return a((LocalAd) biVar, cursor, false);
        }

        @Override // com.vungle.publisher.db.model.Ad.Factory
        public final /* bridge */ /* synthetic */ boolean a(Ad ad) {
            return super.a((Ad<?, ?, ?>) ad);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ String[] b(int i) {
            return new String[i];
        }

        @Override // com.vungle.publisher.db.model.Ad.Factory
        protected final /* bridge */ /* synthetic */ Video.Factory b_() {
            return this.h;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new LocalAd[i];
        }

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ List d() {
            return super.d();
        }

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ List d(int i) {
            return super.d(i);
        }

        Factory() {
        }

        @Override // com.vungle.publisher.db.model.Ad.Factory
        public final LocalAd a(RequestLocalAdResponse requestLocalAdResponse) throws cb {
            LocalAd localAd = (LocalAd) super.a(requestLocalAdResponse);
            localAd.w = requestLocalAdResponse.s;
            localAd.a(this.d.get());
            localAd.A = this.e.a(localAd, requestLocalAdResponse, bj.b.preRoll);
            localAd.y = this.e.a(localAd, requestLocalAdResponse, bj.b.postRoll);
            localAd.a(Ad.a.aware);
            return localAd;
        }

        @Override // com.vungle.publisher.db.model.Ad.Factory
        public final int a(LocalAd localAd, RequestLocalAdResponse requestLocalAdResponse) {
            localAd.w = requestLocalAdResponse.s;
            return super.a(localAd, requestLocalAdResponse);
        }

        @Override // com.vungle.publisher.db.model.Ad.Factory
        protected final Ad.b b() {
            return Ad.b.local;
        }

        public final LocalAd a(String str) {
            return (LocalAd) super.a(Ad.b.local, str);
        }

        public final LocalAd f() {
            return a(Ad.a.ready);
        }

        public final LocalAd a(Ad.a... aVarArr) throws Throwable {
            Cursor cursorQuery;
            LocalAd localAd = null;
            String[] strArr = new String[aVarArr.length];
            for (int i = 0; i < aVarArr.length; i++) {
                strArr[i] = String.valueOf(aVarArr[i]);
            }
            try {
                String str = "status IN (" + bg.a(strArr.length) + ") AND type = ? AND expiration_timestamp_seconds > ? ORDER BY received_timestamp_millis ASC LIMIT ?";
                String string = Ad.b.local.toString();
                String[] strArr2 = (String[]) da.a(strArr, new String[]{string, Long.toString(System.currentTimeMillis() / 1000), "1"});
                String str2 = string + " ad records by query: " + str + "; parameters: " + de.a(strArr2);
                Logger.d(Logger.DATABASE_TAG, "fetching " + str2);
                SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
                cursorQuery = !(readableDatabase instanceof SQLiteDatabase) ? readableDatabase.query(AdDatabaseHelper.TABLE_AD, null, str, strArr2, null, null, null, null) : SQLiteInstrumentation.query(readableDatabase, AdDatabaseHelper.TABLE_AD, null, str, strArr2, null, null, null, null);
                try {
                    int count = cursorQuery.getCount();
                    switch (count) {
                        case 0:
                            Logger.d(Logger.DATABASE_TAG, "no " + str2);
                            break;
                        case 1:
                            if (cursorQuery.moveToFirst()) {
                                LocalAd localAdA = a(c_(), cursorQuery, true);
                                if (localAdA.C()) {
                                    localAd = localAdA;
                                }
                            }
                            break;
                        default:
                            throw new SQLException("fetched " + count + str2);
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return localAd;
                } catch (Throwable th) {
                    th = th;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursorQuery = null;
            }
        }

        @Override // com.vungle.publisher.bi.a
        public final int a(List<LocalAd> list) {
            if (list == null || list.size() <= 0) {
                return 0;
            }
            if (Logger.isLoggable(3)) {
                StringBuilder sb = new StringBuilder("deleting ");
                boolean z = true;
                for (LocalAd localAd : list) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(localAd.y());
                }
                Logger.d(Logger.DATABASE_TAG, sb.toString());
            }
            a(b(list), Ad.a.deleting);
            return c();
        }

        private static List<LocalAd> b(List<LocalAd> list) {
            ArrayList arrayList = new ArrayList();
            for (LocalAd localAd : list) {
                int i = localAd.v;
                localAd.v = i + 1;
                if (localAd.D() || i >= 3) {
                    arrayList.add(localAd);
                } else {
                    Logger.w(Logger.DATABASE_TAG, "unable to delete files for " + localAd.y() + " attempt " + i);
                    localAd.m();
                }
            }
            return arrayList;
        }

        public final Long g() throws Throwable {
            Cursor cursorQuery;
            Long lValueOf = null;
            List listAsList = Arrays.asList(Ad.a.viewed.toString(), Ad.a.deleting.toString());
            ArrayList arrayList = new ArrayList();
            arrayList.add(Ad.b.local.toString());
            arrayList.addAll(listAsList);
            arrayList.add("1");
            String str = "type = ? AND status NOT IN (" + bg.a(listAsList.size()) + ") ORDER BY expiration_timestamp_seconds ASC LIMIT ?";
            try {
                SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
                String[] strArr = {"expiration_timestamp_seconds"};
                String[] strArr2 = (String[]) arrayList.toArray(new String[arrayList.size()]);
                cursorQuery = !(readableDatabase instanceof SQLiteDatabase) ? readableDatabase.query(AdDatabaseHelper.TABLE_AD, strArr, str, strArr2, null, null, null, null) : SQLiteInstrumentation.query(readableDatabase, AdDatabaseHelper.TABLE_AD, strArr, str, strArr2, null, null, null, null);
                try {
                    if (cursorQuery.moveToFirst()) {
                        Long lE = bg.e(cursorQuery, "expiration_timestamp_seconds");
                        if (lE == null) {
                            Logger.w(Logger.DATABASE_TAG, "next ad expiration time seconds is null");
                        } else {
                            lValueOf = Long.valueOf(lE.longValue() * 1000);
                            Logger.d(Logger.DATABASE_TAG, "next ad expiration time millis " + lValueOf);
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return lValueOf;
                } catch (Throwable th) {
                    th = th;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursorQuery = null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int h() {
            Logger.d(Logger.DATABASE_TAG, "deleting expired " + Ad.b.local + " ad records without pending reports");
            return a((List<LocalAd>) a("type = ? AND expiration_timestamp_seconds <= ?", new String[]{Ad.b.local.toString(), String.valueOf(System.currentTimeMillis() / 1000)}, (String) null));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int i() {
            List listA = a("type = ? AND " + Ad.b + " ORDER BY insert_timestamp_millis DESC LIMIT ? OFFSET ?", new String[]{Ad.b.local.toString(), Integer.toString(Integer.MAX_VALUE), Integer.toString(4)}, (String) null);
            Logger.d(Logger.DATABASE_TAG, "deleting " + listA.size() + " extra " + Ad.b.local + " ad records to reach target size 4");
            return a((List<LocalAd>) listA);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.vungle.publisher.db.model.Ad.Factory
        public LocalAd a(LocalAd localAd, Cursor cursor, boolean z) {
            super.a(localAd, cursor, z);
            localAd.v = bg.c(cursor, "delete_local_content_attempts");
            localAd.w = bg.e(cursor, "expiration_timestamp_seconds");
            localAd.a(bg.f(cursor, "parent_path"));
            localAd.z = bg.c(cursor, "prepare_retry_count");
            localAd.B = System.currentTimeMillis();
            if (z) {
                a(localAd, z);
                b(localAd, z);
            }
            return localAd;
        }

        /* JADX WARN: Multi-variable type inference failed */
        final LocalArchive a(LocalAd localAd, boolean z) {
            if (localAd.C) {
                return localAd.y;
            }
            LocalArchive localArchiveA = this.e.a((String) localAd.t, bj.b.postRoll, z);
            localAd.y = localArchiveA;
            localAd.C = true;
            return localArchiveA;
        }

        /* JADX WARN: Multi-variable type inference failed */
        final LocalArchive b(LocalAd localAd, boolean z) {
            if (localAd.D) {
                return localAd.A;
            }
            LocalArchive localArchiveA = this.e.a((String) localAd.t, bj.b.preRoll, z);
            localAd.A = localArchiveA;
            localAd.D = true;
            return localArchiveA;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final String e_() {
            return AdDatabaseHelper.TABLE_AD;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.vungle.publisher.bi.a
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public LocalAd c_() {
            return this.g.get();
        }
    }
}
