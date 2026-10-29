package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.amazon.ags.constants.NativeCallKeys;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import com.vungle.log.Logger;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class AdReportExtra extends bi<Integer> {
    Integer a;
    public String b;
    public String c;

    @Inject
    Factory d;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final String b() {
        return "ad_report_extra";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put("ad_report_id", this.a);
        }
        contentValues.put(AnalyticAttribute.EVENT_NAME_ATTRIBUTE, this.b);
        contentValues.put(NativeCallKeys.VALUE, this.c);
        return contentValues;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final StringBuilder p() {
        StringBuilder sbP = super.p();
        bi.a(sbP, "ad_report_id", this.a, false);
        bi.a(sbP, AnalyticAttribute.EVENT_NAME_ATTRIBUTE, this.b, false);
        bi.a(sbP, NativeCallKeys.VALUE, this.c, false);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends bi.a<AdReportExtra, Integer> {

        @Inject
        Provider<AdReportExtra> a;

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ int a(List list) {
            return super.a(list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r0v1, types: [I, java.lang.Integer] */
        @Override // com.vungle.publisher.bi.a
        public final /* synthetic */ bi a(bi biVar, Cursor cursor) {
            AdReportExtra adReportExtra = (AdReportExtra) biVar;
            adReportExtra.t = bg.d(cursor, AnalyticsEvent.EVENT_ID);
            adReportExtra.a = bg.d(cursor, "ad_report_id");
            adReportExtra.b = bg.f(cursor, AnalyticAttribute.EVENT_NAME_ATTRIBUTE);
            adReportExtra.c = bg.f(cursor, NativeCallKeys.VALUE);
            return adReportExtra;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new AdReportExtra[i];
        }

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ List d() {
            return super.d();
        }

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ List d(int i) {
            return super.d(i);
        }

        final int a(Integer num) {
            SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
            String[] strArr = {String.valueOf(num)};
            int iDelete = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.delete("ad_report_extra", "ad_report_id = ?", strArr) : SQLiteInstrumentation.delete(writableDatabase, "ad_report_extra", "ad_report_id = ?", strArr);
            Logger.v(Logger.DATABASE_TAG, "deleted " + iDelete + " ad_report_extra records for adReportId: " + num);
            return iDelete;
        }

        final Map<String, AdReportExtra> b(Integer num) throws Throwable {
            HashMap map;
            Cursor cursor = null;
            if (num == null) {
                Logger.w(Logger.DATABASE_TAG, "failed to fetch ad_report_extra records by ad_report_id " + num);
                return null;
            }
            try {
                Logger.d(Logger.DATABASE_TAG, "fetching ad_report_extra records by ad_report_id " + num);
                SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
                String[] strArr = {String.valueOf(num)};
                Cursor cursorQuery = !(readableDatabase instanceof SQLiteDatabase) ? readableDatabase.query("ad_report_extra", null, "ad_report_id = ?", strArr, null, null, null) : SQLiteInstrumentation.query(readableDatabase, "ad_report_extra", null, "ad_report_id = ?", strArr, null, null, null);
                try {
                    int count = cursorQuery.getCount();
                    Logger.v(Logger.DATABASE_TAG, count + " ad_report_extra for ad_report_id " + num);
                    if (count > 0) {
                        map = new HashMap();
                        while (cursorQuery.moveToNext()) {
                            AdReportExtra adReportExtraC_ = c_();
                            b(adReportExtraC_, cursorQuery);
                            map.put(adReportExtraC_.b, adReportExtraC_);
                        }
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
            return "ad_report_extra";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.vungle.publisher.bi.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AdReportExtra c_() {
            return this.a.get();
        }

        protected static AdReportExtra[] a(int i) {
            return new AdReportExtra[i];
        }
    }
}
