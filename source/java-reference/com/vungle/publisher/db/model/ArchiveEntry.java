package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import com.vungle.log.Logger;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class ArchiveEntry extends bi<Integer> {
    LocalArchive a;
    String b;
    Integer c;

    @Inject
    Factory d;

    @Inject
    LocalArchive.Factory e;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.d;
    }

    protected ArchiveEntry() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final String b() {
        return "archive_entry";
    }

    private Integer d() {
        if (this.a == null) {
            return null;
        }
        return this.a.D();
    }

    @Override // com.vungle.publisher.bi, com.vungle.publisher.bl
    public final int m() throws Throwable {
        if (this.t == 0) {
            Integer numD = d();
            String str = this.b;
            Logger.d(Logger.DATABASE_TAG, "updating archive_entry by viewable_id " + numD + ", relative_path " + str);
            SQLiteDatabase writableDatabase = this.u.getWritableDatabase();
            ContentValues contentValuesA = a(false);
            String[] strArr = {String.valueOf(numD), str};
            int iUpdateWithOnConflict = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.updateWithOnConflict("archive_entry", contentValuesA, "viewable_id = ? AND relative_path = ?", strArr, 3) : SQLiteInstrumentation.updateWithOnConflict(writableDatabase, "archive_entry", contentValuesA, "viewable_id = ? AND relative_path = ?", strArr, 3);
            w();
            return iUpdateWithOnConflict;
        }
        return super.m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.bi
    public final ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (this.t != 0) {
            contentValues.put(AnalyticsEvent.EVENT_ID, (Integer) this.t);
        }
        contentValues.put("viewable_id", d());
        contentValues.put("relative_path", this.b);
        contentValues.put("size", this.c);
        return contentValues;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final StringBuilder p() {
        StringBuilder sbP = super.p();
        bi.a(sbP, "viewable_id", d(), false);
        bi.a(sbP, "relative_path", this.b, false);
        bi.a(sbP, "size", this.c, false);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends bi.a<ArchiveEntry, Integer> {

        @Inject
        Provider<ArchiveEntry> a;

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ int a(List list) {
            return super.a(list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r0v1, types: [I, java.lang.Integer] */
        @Override // com.vungle.publisher.bi.a
        public final /* synthetic */ bi a(bi biVar, Cursor cursor) {
            ArchiveEntry archiveEntry = (ArchiveEntry) biVar;
            archiveEntry.t = bg.d(cursor, AnalyticsEvent.EVENT_ID);
            archiveEntry.b = bg.f(cursor, "relative_path");
            archiveEntry.c = bg.d(cursor, "size");
            return archiveEntry;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new ArchiveEntry[i];
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
            if (num == null) {
                throw new IllegalArgumentException("null viewable_id");
            }
            SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
            String[] strArr = {String.valueOf(num)};
            int iDelete = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.delete("archive_entry", "viewable_id = ?", strArr) : SQLiteInstrumentation.delete(writableDatabase, "archive_entry", "viewable_id = ?", strArr);
            Logger.d(Logger.DATABASE_TAG, "deleted " + iDelete + " archive_entry rows for viewable_id " + num);
            return iDelete;
        }

        final ArchiveEntry[] a(LocalArchive localArchive) throws Throwable {
            Cursor cursorQuery;
            if (localArchive == null) {
                throw new IllegalArgumentException("null archive");
            }
            Integer numD = localArchive.D();
            if (numD == null) {
                throw new IllegalArgumentException("null viewable_id");
            }
            try {
                Logger.d(Logger.DATABASE_TAG, "fetching archive_entry records by viewable_id " + numD);
                SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
                String[] strArr = {String.valueOf(numD)};
                cursorQuery = !(readableDatabase instanceof SQLiteDatabase) ? readableDatabase.query("archive_entry", null, "viewable_id = ?", strArr, null, null, null) : SQLiteInstrumentation.query(readableDatabase, "archive_entry", null, "viewable_id = ?", strArr, null, null, null);
                try {
                    ArchiveEntry[] archiveEntryArr = new ArchiveEntry[cursorQuery.getCount()];
                    int i = 0;
                    while (cursorQuery.moveToNext()) {
                        ArchiveEntry archiveEntryC_ = c_();
                        b(archiveEntryC_, cursorQuery);
                        archiveEntryC_.a = localArchive;
                        archiveEntryArr[i] = archiveEntryC_;
                        Logger.v(Logger.DATABASE_TAG, "fetched " + archiveEntryC_);
                        i++;
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return archiveEntryArr;
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final String e_() {
            return "archive_entry";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.vungle.publisher.bi.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ArchiveEntry c_() {
            return this.a.get();
        }
    }
}
