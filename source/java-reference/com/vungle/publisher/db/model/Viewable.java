package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import com.vungle.log.Logger;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import com.vungle.publisher.bj;
import com.vungle.publisher.db.DatabaseHelper;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.Video;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class Viewable<A extends Ad<A, V, R>, V extends Video<A, V, R>, R extends RequestAdResponse> extends bi<Integer> implements bj<A, V, R> {
    protected String o;
    protected bj.a p;
    protected bj.b q;
    protected A r;

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        public DatabaseHelper a;
    }

    protected abstract Ad.Factory<A, V, R> C();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ Integer s() {
        return (Integer) this.t;
    }

    protected Viewable() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final String b() {
        return "viewable";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Integer D() {
        return (Integer) this.t;
    }

    @Override // com.vungle.publisher.bj
    public final String d() {
        return this.o;
    }

    @Override // com.vungle.publisher.bj
    public final A c() {
        if (this.r == null) {
            this.r = C().a(this.o);
        }
        return this.r;
    }

    @Override // com.vungle.publisher.bj
    public final bj.a e() {
        return this.p;
    }

    @Override // com.vungle.publisher.bj
    public final void a(bj.a aVar) {
        Logger.v(Logger.PREPARE_TAG, "setting " + this.q + " status from " + this.p + " to " + aVar + " for ad_id: " + this.o);
        this.p = aVar;
    }

    @Override // com.vungle.publisher.bj
    public final void b(bj.a aVar) {
        Logger.v(Logger.PREPARE_TAG, "updating " + this.q + " status from " + this.p + " to " + aVar + " for ad_id: " + this.o);
        this.p = aVar;
        m();
    }

    @Override // com.vungle.publisher.bj
    public final bj.b f() {
        return this.q;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.bi
    public ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put(AnalyticsEvent.EVENT_ID, (Integer) this.t);
            contentValues.put("ad_id", this.o);
            contentValues.put("type", this.q.toString());
        }
        contentValues.put("status", this.p.toString());
        return contentValues;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public StringBuilder p() {
        StringBuilder sbP = super.p();
        bi.a(sbP, "ad_id", this.o, false);
        bi.a(sbP, "status", this.p, false);
        bi.a(sbP, "type", this.q, false);
        return sbP;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final String z() {
        return String.valueOf(this.q);
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class BaseFactory<A extends Ad<A, V, R>, W extends Viewable<A, V, R>, V extends Video<A, V, R>, R extends RequestAdResponse> extends bi.a<W, Integer> {
        protected BaseFactory() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public /* bridge */ /* synthetic */ bi a(bi biVar, Cursor cursor) {
            return a((Viewable) biVar, cursor, false);
        }

        protected W b(A a, R r) {
            if (r == null) {
                return null;
            }
            W wC_ = c_();
            wC_.r = a;
            wC_.o = r.f();
            wC_.p = bj.a.aware;
            return wC_;
        }

        protected final W a(String str, bj.b bVar, boolean z) throws SQLException {
            W wC_ = c_();
            wC_.o = str;
            wC_.q = bVar;
            return (W) a(wC_, z);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private W a(W w, boolean z) throws Throwable {
            Cursor cursorQuery;
            String str;
            W w2 = null;
            Integer num = (Integer) w.t;
            bj.b bVar = w.q;
            try {
                String str2 = w.o;
                if (num == null) {
                    if (str2 == null) {
                        Logger.w(Logger.DATABASE_TAG, "unable to fetch " + bVar + ": no id or ad_id");
                        str = null;
                        cursorQuery = null;
                    } else {
                        String str3 = "ad_id " + str2;
                        Logger.d(Logger.DATABASE_TAG, "fetching " + bVar + " by " + str3);
                        SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
                        String[] strArr = {str2, String.valueOf(bVar)};
                        cursorQuery = !(readableDatabase instanceof SQLiteDatabase) ? readableDatabase.query("viewable", null, "ad_id = ? AND type = ?", strArr, null, null, null) : SQLiteInstrumentation.query(readableDatabase, "viewable", null, "ad_id = ? AND type = ?", strArr, null, null, null);
                        str = str3;
                    }
                } else {
                    String str4 = "id: " + num;
                    Logger.d(Logger.DATABASE_TAG, "fetching " + bVar + " by " + str4);
                    SQLiteDatabase readableDatabase2 = this.c.getReadableDatabase();
                    String[] strArr2 = {String.valueOf(num)};
                    cursorQuery = !(readableDatabase2 instanceof SQLiteDatabase) ? readableDatabase2.query("viewable", null, "id = ?", strArr2, null, null, null) : SQLiteInstrumentation.query(readableDatabase2, "viewable", null, "id = ?", strArr2, null, null, null);
                    str = str4;
                }
                if (cursorQuery != null) {
                    try {
                        int count = cursorQuery.getCount();
                        switch (count) {
                            case 0:
                                Logger.v(Logger.DATABASE_TAG, "no " + bVar + " found for " + str);
                                break;
                            case 1:
                                Logger.d(Logger.DATABASE_TAG, "have " + bVar + " for " + str);
                                cursorQuery.moveToFirst();
                                w2 = (W) a(w, cursorQuery, z);
                                break;
                            default:
                                throw new SQLException(count + " " + bVar + " records for " + str);
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        throw th;
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                Logger.v(Logger.DATABASE_TAG, "fetched " + w2);
                return w2;
            } catch (Throwable th2) {
                th = th2;
                cursorQuery = null;
            }
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [I, java.lang.Integer] */
        protected W a(W w, Cursor cursor, boolean z) {
            w.t = bg.d(cursor, AnalyticsEvent.EVENT_ID);
            w.o = bg.f(cursor, "ad_id");
            w.p = (bj.a) bg.a(cursor, "status", bj.a.class);
            w.q = (bj.b) bg.a(cursor, "type", bj.b.class);
            return w;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final String e_() {
            return "viewable";
        }
    }
}
