package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.amazon.ags.constants.NativeCallKeys;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.AdPlay;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.AdReportEvent;
import com.vungle.publisher.db.model.Video;
import com.vungle.publisher.de;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class AdReportEvent<T extends AdReport<T, P, E, A, V, R>, P extends AdPlay<T, P, E, A, V, R>, E extends AdReportEvent<T, P, E, A, V, R>, A extends Ad<A, V, R>, V extends Video<A, V, R>, R extends RequestAdResponse> extends bi<Integer> {
    P a;
    public a b;
    public long c;
    public String d;
    private String e;

    /* JADX INFO: compiled from: vungle */
    public enum a {
        back,
        close,
        custom,
        download,
        cta,
        muted,
        preRollCta,
        preRollWatch("watch"),
        replay,
        unmuted("un-muted"),
        videoerror,
        videoreset,
        volume,
        volumedown,
        volumeup;

        private final String p;

        a() {
            this(null);
        }

        a(String str) {
            this.p = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.p == null ? name() : this.p;
        }
    }

    protected AdReportEvent() {
    }

    private Integer d() {
        if (this.a == null) {
            return null;
        }
        return (Integer) this.a.s();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final String b() {
        return "ad_report_event";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.c = jCurrentTimeMillis;
            contentValues.put("insert_timestamp_millis", Long.valueOf(jCurrentTimeMillis));
            contentValues.put("play_id", d());
            contentValues.put("event", de.a(this.b));
            contentValues.put(NativeCallKeys.VALUE, this.d);
        }
        return contentValues;
    }

    @Override // com.vungle.publisher.bi
    public String toString() {
        String str = this.e;
        if (str == null) {
            String string = super.toString();
            this.e = string;
            return string;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final StringBuilder p() {
        StringBuilder sbP = super.p();
        bi.a(sbP, "play_id", d(), false);
        bi.a(sbP, "event", this.b, false);
        bi.a(sbP, "insert_timestamp_millis", Long.valueOf(this.c), false);
        bi.a(sbP, NativeCallKeys.VALUE, this.d, false);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class Factory<T extends AdReport<T, P, E, A, V, R>, P extends AdPlay<T, P, E, A, V, R>, E extends AdReportEvent<T, P, E, A, V, R>, A extends Ad<A, V, R>, V extends Video<A, V, R>, R extends RequestAdResponse> extends bi.a<E, Integer> {
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r0v4, types: [I, java.lang.Integer] */
        @Override // com.vungle.publisher.bi.a
        public final /* synthetic */ bi a(bi biVar, Cursor cursor) {
            AdReportEvent adReportEvent = (AdReportEvent) biVar;
            adReportEvent.b = (a) bg.a(cursor, "event", a.class);
            adReportEvent.t = bg.d(cursor, AnalyticsEvent.EVENT_ID);
            adReportEvent.c = bg.e(cursor, "insert_timestamp_millis").longValue();
            adReportEvent.d = bg.f(cursor, NativeCallKeys.VALUE);
            return adReportEvent;
        }

        protected Factory() {
        }

        protected final E a(P p, a aVar, Object obj) {
            if (p == null) {
                throw new IllegalArgumentException("null ad_play");
            }
            if (aVar == null) {
                throw new IllegalArgumentException("null event");
            }
            E eC_ = c_();
            eC_.a = p;
            eC_.b = aVar;
            eC_.d = obj == null ? null : obj.toString();
            return eC_;
        }

        protected final List<E> a(P p) {
            if (p == null) {
                throw new IllegalArgumentException("null ad_play");
            }
            Integer num = (Integer) p.s();
            if (num == null) {
                throw new IllegalArgumentException("null play_id");
            }
            List<E> listA = a("play_id = ?", new String[]{num.toString()}, "insert_timestamp_millis ASC");
            Iterator<E> it = listA.iterator();
            while (it.hasNext()) {
                it.next().a = p;
            }
            return listA;
        }
    }
}
