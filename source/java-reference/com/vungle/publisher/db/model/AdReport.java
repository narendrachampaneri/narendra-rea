package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.vungle.log.Logger;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import com.vungle.publisher.db.DatabaseHelper;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.AdPlay;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.AdReportEvent;
import com.vungle.publisher.db.model.Video;
import com.vungle.publisher.de;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class AdReport<T extends AdReport<T, P, E, A, V, R>, P extends AdPlay<T, P, E, A, V, R>, E extends AdReportEvent<T, P, E, A, V, R>, A extends Ad<A, V, R>, V extends Video<A, V, R>, R extends RequestAdResponse> extends bi<Integer> {
    protected A a;
    protected String b;
    protected String c;
    protected Long d;
    protected boolean e;
    protected String f;
    protected a g;
    protected Long h;
    protected Integer i;
    protected Long j;
    protected Long k;
    protected Map<String, AdReportExtra> l;
    protected List<P> m;
    protected boolean n;

    @Inject
    AdReportExtra.Factory o;

    /* JADX INFO: compiled from: vungle */
    public enum a {
        open,
        failed,
        playing,
        reportable
    }

    protected abstract AdPlay.Factory<T, P, E, A, V, R> a();

    protected AdReport() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final String b() {
        return "ad_report";
    }

    protected final String d() {
        return this.a == null ? this.b : this.a.d();
    }

    protected final void a(String str) {
        this.b = str;
    }

    public final A e() {
        return this.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(Map<String, String> map) {
        HashMap map2;
        AdReportExtra.Factory factory = this.o;
        Integer num = (Integer) this.t;
        if (map != null) {
            HashMap map3 = new HashMap();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                AdReportExtra adReportExtraC_ = factory.c_();
                adReportExtraC_.a = num;
                adReportExtraC_.b = key;
                adReportExtraC_.c = value;
                map3.put(key, adReportExtraC_);
            }
            map2 = map3;
        } else {
            map2 = null;
        }
        this.l = map2;
        int size = map2 == null ? 0 : map2.size();
        if (size <= 0) {
            Logger.d(Logger.DATABASE_TAG, "no new extras for " + y());
            return;
        }
        Logger.d(Logger.DATABASE_TAG, size + " new extras for " + y());
        this.n = true;
        B();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Map<String, AdReportExtra> f() throws Throwable {
        Map<String, AdReportExtra> map = this.l;
        if (map == null) {
            Map<String, AdReportExtra> mapB = this.o.b((Integer) this.t);
            this.l = mapB;
            return mapB;
        }
        return map;
    }

    public final boolean g() {
        return this.e;
    }

    public final void b(boolean z) {
        this.e = z;
    }

    public final String h() {
        return this.c;
    }

    public final void b(String str) {
        this.c = str;
    }

    public final void c(String str) {
        this.f = str;
    }

    public final String i() {
        return this.f;
    }

    public final void a(a aVar) {
        Logger.d(Logger.REPORT_TAG, "setting ad_report status " + aVar + " for " + y());
        this.g = aVar;
    }

    public final Integer j() {
        return this.i;
    }

    public final void a(Integer num) {
        Logger.d(Logger.REPORT_TAG, "setting video duration millis " + num + " for " + y());
        this.i = num;
        m();
    }

    public final int k() {
        if (this.k == null) {
            Logger.w(Logger.DATABASE_TAG, "unable to calculate ad duration because view start millis was null");
            return -1;
        }
        if (this.j == null) {
            Logger.w(Logger.DATABASE_TAG, "unable to calculate ad duration because view end millis was null");
            return -1;
        }
        return (int) (this.j.longValue() - this.k.longValue());
    }

    public final void a(Long l) {
        Logger.d(Logger.REPORT_TAG, "setting ad end millis " + l + " for " + y());
        this.j = l;
    }

    public final void b(Long l) {
        a(l);
        m();
    }

    public final Long l() {
        return this.k;
    }

    public final void c(Long l) {
        Logger.d(Logger.REPORT_TAG, "setting ad start millis " + l + " for " + y());
        this.k = l;
    }

    public final P q() {
        List<P> listA = A();
        P p = (P) a().a(this);
        p.r();
        listA.add(p);
        return p;
    }

    public final P[] t() {
        List<P> listA = A();
        return (P[]) ((AdPlay[]) listA.toArray(a().c(listA.size())));
    }

    private List<P> A() {
        List<P> list = this.m;
        if (list == null) {
            List<P> listB = a().b(this);
            this.m = listB;
            return listB;
        }
        return list;
    }

    @Override // com.vungle.publisher.bi
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public final Integer r() throws SQLException {
        Integer num = (Integer) super.r();
        B();
        return num;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void B() {
        if (this.n) {
            Map<String, AdReportExtra> map = this.l;
            if (this.t == 0) {
                Logger.d(Logger.DATABASE_TAG, "delaying inserting extras for uninserted " + y());
                return;
            }
            Logger.d(Logger.DATABASE_TAG, "replacing extras for " + y());
            this.o.a((Integer) this.t);
            if (map != null && !map.isEmpty()) {
                AdReportExtra.Factory.a((bi[]) map.values().toArray(AdReportExtra.Factory.a(map.size())));
            }
            this.n = false;
            return;
        }
        Logger.v(Logger.DATABASE_TAG, "no new extras to insert for " + y());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public ContentValues a(boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put("ad_id", d());
            Long lValueOf = Long.valueOf(jCurrentTimeMillis);
            this.d = lValueOf;
            contentValues.put("insert_timestamp_millis", lValueOf);
        }
        contentValues.put("incentivized_publisher_app_user_id", this.c);
        contentValues.put("is_incentivized", Boolean.valueOf(this.e));
        contentValues.put("placement", this.f);
        contentValues.put("status", de.a(this.g));
        Long lValueOf2 = Long.valueOf(jCurrentTimeMillis);
        this.h = lValueOf2;
        contentValues.put("update_timestamp_millis", lValueOf2);
        contentValues.put("video_duration_millis", this.i);
        contentValues.put("view_end_millis", this.j);
        contentValues.put("view_start_millis", this.k);
        return contentValues;
    }

    @Override // com.vungle.publisher.bi
    public StringBuilder p() {
        StringBuilder sbP = super.p();
        bi.a(sbP, "ad_id", d(), false);
        bi.a(sbP, "insert_timestamp_millis", this.d, false);
        bi.a(sbP, "incentivized_publisher_app_user_id", this.c, false);
        bi.a(sbP, "is_incentivized", Boolean.valueOf(this.e), false);
        bi.a(sbP, "placement", this.f, false);
        bi.a(sbP, "status", this.g, false);
        bi.a(sbP, "update_timestamp_millis", this.h, false);
        bi.a(sbP, "video_duration_millis", this.i, false);
        bi.a(sbP, "view_end_millis", this.j, false);
        bi.a(sbP, "view_start_millis", this.k, false);
        bi.a(sbP, "plays", this.m == null ? "not fetched" : Integer.valueOf(this.m.size()), false);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        public DatabaseHelper a;

        @Inject
        LocalAdReport.Factory b;

        @Inject
        StreamingAdReport.Factory c;

        Factory() {
        }

        public final List<AdReport<?, ?, ?, ?, ?, ?>> a() {
            ArrayList arrayList = new ArrayList();
            Iterator<LocalAdReport> it = this.b.d_().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            Iterator<StreamingAdReport> it2 = this.c.d_().iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            return arrayList;
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class BaseFactory<T extends AdReport<T, P, E, A, V, R>, P extends AdPlay<T, P, E, A, V, R>, E extends AdReportEvent<T, P, E, A, V, R>, A extends Ad<A, V, R>, V extends Video<A, V, R>, R extends RequestAdResponse> extends bi.a<T, Integer> {

        @Inject
        AdReportExtra.Factory a;

        protected abstract Ad.Factory<A, V, R> a();

        protected abstract AdPlay.Factory<T, P, E, A, V, R> b();

        protected abstract Ad.b c();

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public /* bridge */ /* synthetic */ bi a(bi biVar, Cursor cursor) {
            return a((AdReport) biVar, cursor, false);
        }

        protected BaseFactory() {
        }

        protected final List<T> d_() {
            List<T> listA = a("status = ? AND ad_id IN (SELECT id FROM ad WHERE type = ?)", new String[]{a.reportable.toString(), c().toString()}, "insert_timestamp_millis ASC");
            Iterator<T> it = listA.iterator();
            while (it.hasNext()) {
                a((AdReport) it.next(), (Ad) null, true);
            }
            return listA;
        }

        public final T a(A a) {
            T t = (T) b(a);
            if (t == null) {
                T tC_ = c_();
                tC_.a = a;
                tC_.g = a.open;
                Logger.d(Logger.DATABASE_TAG, "creating new " + tC_.y());
                tC_.r();
                return tC_;
            }
            return t;
        }

        public final T b(A a) {
            String[] strArr = {a.open.toString()};
            if (a == null) {
                throw new IllegalArgumentException("null ad");
            }
            String strD = a.d();
            if (strD == null) {
                throw new IllegalArgumentException("null ad_id");
            }
            String[] strArr2 = new String[2];
            strArr2[0] = strD;
            for (int i = 0; i <= 0; i++) {
                strArr2[1] = strArr[0];
            }
            List<T> listA = a("ad_id = ? AND status = ?", strArr2, "insert_timestamp_millis DESC");
            String str = "ad_id = ? AND status = ?, with params: " + de.a(strArr2);
            int size = listA.size();
            switch (size) {
                case 0:
                    return null;
                case 1:
                    T t = (T) a((AdReport) listA.get(0), (Ad) a, false);
                    Logger.d(Logger.DATABASE_TAG, "fetched " + t.y());
                    return t;
                default:
                    Logger.w(Logger.DATABASE_TAG, size + " ad_report records for " + str);
                    return null;
            }
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [I, java.lang.Integer] */
        protected T a(T t, Cursor cursor, boolean z) {
            t.t = bg.d(cursor, AnalyticsEvent.EVENT_ID);
            t.a(bg.f(cursor, "ad_id"));
            t.c = bg.f(cursor, "incentivized_publisher_app_user_id");
            t.e = bg.a(cursor, "is_incentivized").booleanValue();
            t.d = bg.e(cursor, "insert_timestamp_millis");
            t.f = bg.f(cursor, "placement");
            t.g = (a) bg.a(cursor, "status", a.class);
            t.h = bg.e(cursor, "update_timestamp_millis");
            t.i = bg.d(cursor, "video_duration_millis");
            t.j = bg.e(cursor, "view_end_millis");
            t.k = bg.e(cursor, "view_start_millis");
            return t;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private T a(T t, A a, boolean z) {
            if (a == null) {
                t.a = a().a(t.d());
            } else {
                t.a = a;
            }
            if (z) {
                t.m = b().b(t);
                t.l = this.a.b((Integer) t.t);
            }
            return t;
        }
    }
}
