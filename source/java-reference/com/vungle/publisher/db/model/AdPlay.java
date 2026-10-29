package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.vungle.log.Logger;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.AdPlay;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.AdReportEvent;
import com.vungle.publisher.db.model.Video;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class AdPlay<T extends AdReport<T, P, E, A, V, R>, P extends AdPlay<T, P, E, A, V, R>, E extends AdReportEvent<T, P, E, A, V, R>, A extends Ad<A, V, R>, V extends Video<A, V, R>, R extends RequestAdResponse> extends bi<Integer> {
    public T a;
    public Integer b;
    public Long c;
    List<E> d;

    protected abstract AdReportEvent.Factory<T, P, E, A, V, R> a();

    protected AdPlay() {
    }

    public final E a(AdReportEvent.a aVar, Object obj) {
        List<E> listE = e();
        Logger.d(Logger.REPORT_TAG, "adding report event " + aVar + (obj == null ? "" : ", value " + obj + " for " + y()));
        E e = (E) a().a(this, aVar, obj);
        e.r();
        listE.add(e);
        return e;
    }

    public final E[] d() {
        List<E> listE = e();
        return (E[]) ((AdReportEvent[]) listE.toArray(a().c(listE.size())));
    }

    private List<E> e() {
        List<E> list = this.d;
        if (list == null) {
            List<E> listA = a().a(this);
            this.d = listA;
            return listA;
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final String b() {
        return "ad_play";
    }

    private Integer f() {
        if (this.a == null) {
            return null;
        }
        return (Integer) this.a.s();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put("report_id", f());
            contentValues.put("start_millis", this.c);
        } else {
            contentValues.put("watched_millis", this.b);
        }
        return contentValues;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final StringBuilder p() {
        StringBuilder sbP = super.p();
        bi.a(sbP, "report_id", f(), false);
        bi.a(sbP, "start_millis", this.c, false);
        bi.a(sbP, "watched_millis", this.b, false);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class Factory<T extends AdReport<T, P, E, A, V, R>, P extends AdPlay<T, P, E, A, V, R>, E extends AdReportEvent<T, P, E, A, V, R>, A extends Ad<A, V, R>, V extends Video<A, V, R>, R extends RequestAdResponse> extends bi.a<P, Integer> {
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r0v1, types: [I, java.lang.Integer] */
        @Override // com.vungle.publisher.bi.a
        public final /* synthetic */ bi a(bi biVar, Cursor cursor) {
            AdPlay adPlay = (AdPlay) biVar;
            adPlay.t = bg.d(cursor, AnalyticsEvent.EVENT_ID);
            adPlay.b = bg.d(cursor, "watched_millis");
            adPlay.c = bg.e(cursor, "start_millis");
            return adPlay;
        }

        protected Factory() {
        }

        protected final P a(T t) {
            P pC_ = c_();
            pC_.a = t;
            return pC_;
        }

        protected final List<P> b(T t) {
            if (t == null) {
                throw new IllegalArgumentException("null ad_report");
            }
            Integer num = (Integer) t.s();
            if (num == null) {
                throw new IllegalArgumentException("null report_id");
            }
            List<P> listA = a("report_id = ?", new String[]{num.toString()}, "start_millis ASC", null);
            Iterator<P> it = listA.iterator();
            while (it.hasNext()) {
                it.next().a = t;
            }
            return listA;
        }
    }
}
