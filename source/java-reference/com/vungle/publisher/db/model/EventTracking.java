package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import com.vungle.log.Logger;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class EventTracking extends bi<Integer> {
    String a;
    a b;
    String c;

    @Inject
    Factory d;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.d;
    }

    /* JADX INFO: compiled from: vungle */
    public enum a {
        error,
        mute,
        play_percentage_0(0.0f),
        play_percentage_25(0.25f),
        play_percentage_50(0.5f),
        play_percentage_75(0.75f),
        play_percentage_80(0.8f),
        play_percentage_100(0.99f),
        postroll_click,
        postroll_view,
        unmute,
        video_click,
        video_close,
        video_pause,
        video_resume;

        public final float p;

        a() {
            this(-1.0f);
        }

        a(float f) {
            this.p = f;
        }
    }

    EventTracking() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final String b() {
        return "event_tracking";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.bi
    public final ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(AnalyticsEvent.EVENT_ID, (Integer) this.t);
        contentValues.put("ad_id", this.a);
        contentValues.put("event", this.b.toString());
        contentValues.put("url", this.c);
        return contentValues;
    }

    @Override // com.vungle.publisher.bi
    public final StringBuilder p() {
        StringBuilder sbP = super.p();
        bi.a(sbP, "ad_id", this.a, false);
        bi.a(sbP, "event", this.b, false);
        bi.a(sbP, "url", this.c, false);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class Factory extends bi.a<EventTracking, Integer> {

        @Inject
        Provider<EventTracking> a;

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r0v1, types: [I, java.lang.Integer] */
        @Override // com.vungle.publisher.bi.a
        public final /* synthetic */ bi a(bi biVar, Cursor cursor) {
            EventTracking eventTracking = (EventTracking) biVar;
            eventTracking.t = bg.d(cursor, AnalyticsEvent.EVENT_ID);
            eventTracking.a = bg.f(cursor, "ad_id");
            eventTracking.b = (a) bg.a(cursor, "event", a.class);
            eventTracking.c = bg.f(cursor, "url");
            return eventTracking;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new EventTracking[i];
        }

        Factory() {
        }

        final Map<a, List<EventTracking>> a(String str, RequestAdResponse.ThirdPartyAdTracking thirdPartyAdTracking) {
            a aVar;
            if (thirdPartyAdTracking == null) {
                return null;
            }
            HashMap map = new HashMap();
            a(str, map, a.error, thirdPartyAdTracking.g());
            a(str, map, a.mute, thirdPartyAdTracking.h());
            RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint[] playCheckpointArrJ = thirdPartyAdTracking.j();
            if (playCheckpointArrJ != null && playCheckpointArrJ.length > 0) {
                for (RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint playCheckpoint : playCheckpointArrJ) {
                    Float f = playCheckpoint.a;
                    if (f != null) {
                        float fFloatValue = f.floatValue();
                        if (fFloatValue == 0.0f) {
                            aVar = a.play_percentage_0;
                        } else if (fFloatValue == 0.25d) {
                            aVar = a.play_percentage_25;
                        } else if (fFloatValue == 0.5d) {
                            aVar = a.play_percentage_50;
                        } else if (fFloatValue == 0.75d) {
                            aVar = a.play_percentage_75;
                        } else if (fFloatValue == 1.0f) {
                            aVar = a.play_percentage_100;
                        } else {
                            Logger.w(Logger.DATABASE_TAG, "invalid play percent: " + fFloatValue);
                            aVar = null;
                        }
                        if (aVar != null) {
                            a(str, map, aVar, playCheckpoint.b);
                        }
                    }
                }
            }
            a(str, map, a.postroll_click, thirdPartyAdTracking.d());
            a(str, map, a.postroll_view, thirdPartyAdTracking.k());
            a(str, map, a.video_click, thirdPartyAdTracking.e());
            a(str, map, a.video_close, thirdPartyAdTracking.f());
            a(str, map, a.video_pause, thirdPartyAdTracking.i());
            a(str, map, a.video_resume, thirdPartyAdTracking.l());
            a(str, map, a.unmute, thirdPartyAdTracking.m());
            return map;
        }

        private void a(String str, Map<a, List<EventTracking>> map, a aVar, String[] strArr) {
            ArrayList arrayList;
            EventTracking eventTracking;
            if (strArr != null && strArr.length > 0) {
                if (strArr == null || strArr.length <= 0) {
                    arrayList = null;
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    for (String str2 : strArr) {
                        if (aVar == null || str2 == null) {
                            eventTracking = null;
                        } else {
                            eventTracking = this.a.get();
                            eventTracking.a = str;
                            eventTracking.b = aVar;
                            eventTracking.c = str2;
                        }
                        if (eventTracking != null) {
                            arrayList2.add(eventTracking);
                        }
                    }
                    arrayList = arrayList2;
                }
                if (arrayList == null || arrayList.isEmpty()) {
                    arrayList = null;
                }
                if (arrayList != null && !arrayList.isEmpty()) {
                    map.put(aVar, arrayList);
                }
            }
        }

        final void a(String str) {
            SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
            String[] strArr = {str};
            Logger.v(Logger.DATABASE_TAG, "deleted " + (!(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.delete("event_tracking", "ad_id = ?", strArr) : SQLiteInstrumentation.delete(writableDatabase, "event_tracking", "ad_id = ?", strArr)) + " expired event_tracking records for adId: " + str);
        }

        static void a(Map<a, List<EventTracking>> map) {
            if (map != null) {
                for (List<EventTracking> list : map.values()) {
                    if (list != null) {
                        Iterator<EventTracking> it = list.iterator();
                        while (it.hasNext()) {
                            it.next().r();
                        }
                    }
                }
            }
        }

        final Map<a, List<EventTracking>> b(String str) {
            HashMap map;
            Cursor cursor = null;
            if (str == null) {
                Logger.w(Logger.DATABASE_TAG, "failed to fetch event_tracking records by ad_id: " + str);
                return null;
            }
            try {
                Logger.d(Logger.DATABASE_TAG, "fetching event_tracking records by ad_id: " + str);
                SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
                String[] strArr = {str};
                Cursor cursorQuery = !(readableDatabase instanceof SQLiteDatabase) ? readableDatabase.query("event_tracking", null, "ad_id = ?", strArr, null, null, null) : SQLiteInstrumentation.query(readableDatabase, "event_tracking", null, "ad_id = ?", strArr, null, null, null);
                try {
                    int count = cursorQuery.getCount();
                    Logger.v(Logger.DATABASE_TAG, count + " event_tracking for ad_id: " + str);
                    if (count > 0) {
                        HashMap map2 = new HashMap();
                        while (cursorQuery.moveToNext()) {
                            EventTracking eventTrackingC_ = c_();
                            b(eventTrackingC_, cursorQuery);
                            if (eventTrackingC_ != null) {
                                a aVar = eventTrackingC_.b;
                                List<EventTracking> arrayList = map2.get(aVar);
                                if (arrayList == null) {
                                    arrayList = new ArrayList<>();
                                    map2.put(aVar, arrayList);
                                }
                                arrayList.add(eventTrackingC_);
                            }
                        }
                        map = map2;
                    } else {
                        map = null;
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        return map;
                    }
                    return map;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final String e_() {
            return "event_tracking";
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.vungle.publisher.bi.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public EventTracking c_() {
            return this.a.get();
        }
    }
}
