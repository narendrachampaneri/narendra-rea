package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class EventTrackingHttpLogEntry extends bi<Integer> {
    public String a;
    public String b;
    public EventTracking.a c;
    public long d;
    public Integer e;
    public Long f;
    public String g;

    @Inject
    Factory h;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.h;
    }

    EventTrackingHttpLogEntry() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final String b() {
        return "event_tracking_http_log";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put(AnalyticsEvent.EVENT_ID, s());
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.d = jCurrentTimeMillis;
            contentValues.put("insert_timestamp_millis", Long.valueOf(jCurrentTimeMillis));
        }
        contentValues.put("ad_id", this.a);
        contentValues.put("delivery_id", this.b);
        contentValues.put("event", this.c.toString());
        contentValues.put("response_code", this.e);
        contentValues.put("response_timestamp_millis", this.f);
        contentValues.put("url", this.g);
        return contentValues;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final StringBuilder p() {
        StringBuilder sbP = super.p();
        bi.a(sbP, "ad_id", this.a, false);
        bi.a(sbP, "delivery_id", this.b, false);
        bi.a(sbP, "event", this.c, false);
        bi.a(sbP, "response_code", this.e, false);
        bi.a(sbP, "response_timestamp_millis", this.f, false);
        bi.a(sbP, "url", this.g, false);
        bi.a(sbP, "insert_timestamp_millis", Long.valueOf(this.d), false);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends bi.a<EventTrackingHttpLogEntry, Integer> {

        @Inject
        Provider<EventTrackingHttpLogEntry> a;

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ int a(List list) {
            return super.a(list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r0v8, types: [I, java.lang.Integer] */
        @Override // com.vungle.publisher.bi.a
        public final /* synthetic */ bi a(bi biVar, Cursor cursor) {
            EventTrackingHttpLogEntry eventTrackingHttpLogEntry = (EventTrackingHttpLogEntry) biVar;
            eventTrackingHttpLogEntry.a = bg.f(cursor, "ad_id");
            eventTrackingHttpLogEntry.b = bg.f(cursor, "delivery_id");
            eventTrackingHttpLogEntry.c = (EventTracking.a) bg.a(cursor, "event", EventTracking.a.class);
            eventTrackingHttpLogEntry.t = bg.d(cursor, AnalyticsEvent.EVENT_ID);
            eventTrackingHttpLogEntry.d = bg.e(cursor, "insert_timestamp_millis").longValue();
            eventTrackingHttpLogEntry.e = bg.d(cursor, "response_code");
            eventTrackingHttpLogEntry.f = bg.e(cursor, "response_timestamp_millis");
            eventTrackingHttpLogEntry.g = bg.f(cursor, "url");
            return eventTrackingHttpLogEntry;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new EventTrackingHttpLogEntry[i];
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final String e_() {
            return "event_tracking_http_log";
        }

        @Override // com.vungle.publisher.bi.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final EventTrackingHttpLogEntry c_() {
            return this.a.get();
        }
    }
}
