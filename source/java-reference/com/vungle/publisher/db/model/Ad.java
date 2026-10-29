package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import com.vungle.log.Logger;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import com.vungle.publisher.bj;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.Video;
import com.vungle.publisher.de;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.l;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import com.vungle.publisher.u;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class Ad<A extends Ad<A, V, R>, V extends Video<A, V, R>, R extends RequestAdResponse> extends bi<String> {
    protected static final String a = "(SELECT DISTINCT ad_id FROM ad_report WHERE status IN ('" + AdReport.a.reportable + "', '" + AdReport.a.playing + "'))";
    protected static final String b = "id NOT IN " + a;
    protected static final String c = "id IN " + a;
    protected String d;
    protected String e;
    protected String f;
    protected String g;
    protected Map<EventTracking.a, List<EventTracking>> h;
    protected long i;
    protected a j;
    protected b k;
    protected long l;
    protected long m;
    protected V n;
    String o;
    protected boolean p;
    protected boolean q;

    @Inject
    EventBus r;

    /* JADX INFO: compiled from: vungle */
    public enum a {
        aware,
        failed,
        invalid,
        preparing,
        ready,
        viewed,
        deleting
    }

    /* JADX INFO: compiled from: vungle */
    public enum b {
        local,
        streaming
    }

    protected abstract Factory<A, V, R> a();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ String s() {
        return (String) this.t;
    }

    protected Ad() {
        this.s = String.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final String b() {
        return AdDatabaseHelper.TABLE_AD;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final boolean f_() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String d() {
        return (String) this.t;
    }

    public final String e() {
        return this.d;
    }

    public final String f() {
        return this.e;
    }

    public final String g() {
        return this.f;
    }

    public final String h() {
        return this.g;
    }

    public final String[] a(EventTracking.a aVar) {
        List<EventTracking> list;
        int size;
        if (t() == null || (list = t().get(aVar)) == null || (size = list.size()) <= 0) {
            return null;
        }
        String[] strArr = new String[size];
        int i = 0;
        Iterator<EventTracking> it = list.iterator();
        while (it.hasNext()) {
            strArr[i] = it.next().c;
            i++;
        }
        return strArr;
    }

    private Map<EventTracking.a, List<EventTracking>> t() {
        return a().b(this);
    }

    public final a i() {
        return this.j;
    }

    public void a(a aVar) {
        Logger.v(Logger.PREPARE_TAG, "setting status from " + this.j + " to " + aVar + " for " + y());
        this.j = aVar;
        if (aVar == a.failed) {
            this.m = System.currentTimeMillis();
        }
    }

    public final void b(a aVar) {
        a().a(Arrays.asList(this), aVar);
    }

    public final long j() {
        return this.m;
    }

    public final V k() {
        return (V) a().a(this, false);
    }

    public <W extends bj<A, V, R>> W a(bj.b bVar) {
        throw new IllegalArgumentException("unknown viewable type: " + bVar);
    }

    @Override // com.vungle.publisher.bi
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public String r() throws SQLException {
        String str = (String) super.r();
        if (this.h != null) {
            Iterator<List<EventTracking>> it = this.h.values().iterator();
            while (it.hasNext()) {
                Iterator<EventTracking> it2 = it.next().iterator();
                while (it2.hasNext()) {
                    it2.next().r();
                }
            }
        }
        if (this.n != null) {
            this.n.r();
        }
        return str;
    }

    @Override // com.vungle.publisher.bi, com.vungle.publisher.bl
    public int m() {
        int iM = super.m();
        if (iM == 1 && this.n != null) {
            this.n.m();
        }
        return iM;
    }

    @Override // com.vungle.publisher.bi
    public int n() {
        return super.n();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.bi
    public ContentValues a(boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.l = jCurrentTimeMillis;
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put(AnalyticsEvent.EVENT_ID, (String) this.t);
            this.i = jCurrentTimeMillis;
            contentValues.put("insert_timestamp_millis", Long.valueOf(jCurrentTimeMillis));
            contentValues.put("type", this.k.toString());
        }
        contentValues.put("advertising_app_vungle_id", this.d);
        contentValues.put("call_to_action_final_url", this.e);
        contentValues.put("call_to_action_url", this.f);
        contentValues.put("delivery_id", this.g);
        contentValues.put("status", this.j.toString());
        contentValues.put("update_timestamp_millis", Long.valueOf(jCurrentTimeMillis));
        contentValues.put("failed_timestamp_millis", Long.valueOf(this.m));
        return contentValues;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final StringBuilder o() {
        StringBuilder sbO = super.o();
        bi.a(sbO, "type", this.k, false);
        return sbO;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public StringBuilder p() {
        StringBuilder sbP = super.p();
        bi.a(sbP, "advertising_app_vungle_id", this.d, false);
        bi.a(sbP, "call_to_action_final_url", this.e, false);
        bi.a(sbP, "call_to_action_url", this.f, false);
        bi.a(sbP, "delivery_id", this.g, false);
        bi.a(sbP, "insert_timestamp_millis", Long.valueOf(this.i), false);
        bi.a(sbP, "status", this.j, false);
        bi.a(sbP, "update_timestamp_millis", Long.valueOf(this.l), false);
        bi.a(sbP, "failed_timestamp_millis", Long.valueOf(this.m), false);
        bi.a(sbP, "eventTrackings", this.h == null ? null : Integer.valueOf(this.h.size()), false);
        return sbP;
    }

    public boolean equals(Object ad) {
        return (ad instanceof Ad) && a((Ad<?, ?, ?>) ad);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean a(Ad<?, ?, ?> ad) {
        return (ad == null || ad.t == 0 || !((String) ad.t).equals(this.t)) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        return this.t == 0 ? super.hashCode() : ((String) this.t).hashCode();
    }

    public final boolean q() {
        return a().a((Ad<?, ?, ?>) this);
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class Factory<A extends Ad<A, V, R>, V extends Video<A, V, R>, R extends RequestAdResponse> extends bi.a<A, String> {

        @Inject
        EventTracking.Factory a;

        @Inject
        EventBus b;

        protected abstract b b();

        protected abstract Video.Factory<A, V, R> b_();

        protected Factory() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public /* bridge */ /* synthetic */ bi a(bi biVar, Cursor cursor) {
            return a((Ad) biVar, cursor, false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [I, java.lang.String] */
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
        protected A a(R r) {
            A aC_ = c_();
            ?? F = r.f();
            aC_.t = F;
            aC_.k = b();
            aC_.h = this.a.a((String) F, r.k());
            aC_.n = (V) b_().b(aC_, r);
            b(aC_, r);
            return aC_;
        }

        public int a(A a, R r) {
            b(a, r);
            Video.Factory.a(a.k(), r).m();
            EventTracking.Factory factory = this.a;
            String strF = r.f();
            factory.a(strF);
            Map<EventTracking.a, List<EventTracking>> mapA = factory.a(strF, r.k());
            EventTracking.Factory.a(mapA);
            a.h = mapA;
            return a.m();
        }

        protected final int c() {
            a aVar = a.deleting;
            Logger.d(Logger.DATABASE_TAG, "deleting " + b() + " records without pending reports in status " + aVar);
            SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
            String str = Ad.b + " AND status = ?";
            String[] strArr = {aVar.toString()};
            return !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.delete(AdDatabaseHelper.TABLE_AD, str, strArr) : SQLiteInstrumentation.delete(writableDatabase, AdDatabaseHelper.TABLE_AD, str, strArr);
        }

        public boolean a(Ad<?, ?, ?> ad) {
            if (!a("id = ? AND " + Ad.b + " AND ((expiration_timestamp_seconds IS NULL OR expiration_timestamp_seconds <= ?) OR status != ?)", new String[]{ad.d(), Long.toString(System.currentTimeMillis() / 1000), a.ready.toString()})) {
                return false;
            }
            Logger.d(Logger.DATABASE_TAG, "deleting ad after successful report");
            return ad.n() > 0;
        }

        protected final A a(b bVar, String str) {
            return (A) super.a(str, "type = ?", new String[]{bVar.toString()});
        }

        protected final int a(List<? extends Ad<?, ?, ?>> list, a aVar) {
            int i;
            int size = list.size();
            String[] strArr = new String[size];
            int i2 = 0;
            for (Ad<?, ?, ?> ad : list) {
                strArr[0] = ad.d();
                a aVarI = ad.i();
                if (aVar == a.ready || aVarI != a.ready) {
                    i = (aVar != a.ready || aVarI == a.ready) ? 0 : 1;
                } else {
                    i = -1;
                }
                ad.a(aVar);
                i2 = i + i2;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("status", aVar.toString());
            String str = "id IN (" + bg.a(size) + ")";
            Logger.d(Logger.DATABASE_TAG, "updating status of ads " + de.a(strArr) + " to " + aVar);
            SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
            String strE_ = e_();
            int iUpdateWithOnConflict = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.updateWithOnConflict(strE_, contentValues, str, strArr, 3) : SQLiteInstrumentation.updateWithOnConflict(writableDatabase, strE_, contentValues, str, strArr, 3);
            if (iUpdateWithOnConflict > 0) {
                if (i2 > 0) {
                    Logger.d(Logger.DATABASE_TAG, "ad availability increased by " + i2);
                    this.b.a(new u());
                } else if (i2 < 0) {
                    Logger.d(Logger.DATABASE_TAG, "ad availability decreased by " + i2);
                    this.b.a(new l());
                }
            }
            return iUpdateWithOnConflict;
        }

        private static A b(A a, R r) {
            a.d = r.b();
            String strC = r.c();
            String strE = r.e();
            if (TextUtils.isEmpty(strC)) {
                a.e = strE;
            } else {
                a.e = strC;
                a.f = strE;
            }
            a.g = r.g();
            return a;
        }

        /* JADX WARN: Type inference failed for: r0v9, types: [I, java.lang.String] */
        protected A a(A a, Cursor cursor, boolean z) {
            a.d = bg.f(cursor, "advertising_app_vungle_id");
            a.e = bg.f(cursor, "call_to_action_final_url");
            a.f = bg.f(cursor, "call_to_action_url");
            a.g = bg.f(cursor, "delivery_id");
            a.t = bg.f(cursor, AnalyticsEvent.EVENT_ID);
            a.i = bg.e(cursor, "insert_timestamp_millis").longValue();
            a.j = (a) bg.a(cursor, "status", a.class);
            a.k = (b) bg.a(cursor, "type", b.class);
            a.l = bg.e(cursor, "update_timestamp_millis").longValue();
            a.m = bg.e(cursor, "failed_timestamp_millis").longValue();
            if (z) {
                b(a);
                a(a, z);
            }
            return a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected final Map<EventTracking.a, List<EventTracking>> b(A a) {
            if (a.p) {
                return a.h;
            }
            Map<EventTracking.a, List<EventTracking>> mapB = this.a.b((String) a.t);
            a.h = mapB;
            a.p = true;
            return mapB;
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected final V a(A a, boolean z) {
            if (a.q) {
                return a.n;
            }
            V v = (V) b_().a((String) a.t, z);
            a.n = v;
            a.q = true;
            return v;
        }
    }
}
