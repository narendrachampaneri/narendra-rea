package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import com.vungle.log.Logger;
import com.vungle.publisher.db.DatabaseHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class bi<I> implements bl<I> {
    public Class<I> s;
    public I t;

    @Inject
    public DatabaseHelper u;

    public abstract ContentValues a(boolean z);

    public abstract <T extends bi<I>> a<T, I> a_();

    public abstract String b();

    public static void a(StringBuilder sb, String str, Object obj) {
        a(sb, str, obj, false);
    }

    public static void a(StringBuilder sb, String str, Object obj, boolean z) {
        if (!z) {
            sb.append(", ");
        }
        sb.append(str).append(": ").append(obj);
    }

    public I s() {
        return this.t;
    }

    protected final void a(I i) {
        this.t = i;
    }

    protected static String v() {
        return AnalyticsEvent.EVENT_ID;
    }

    public boolean f_() {
        return true;
    }

    public I r() {
        I iS = s();
        if (f_() && iS != null) {
            throw new SQLException("attempt to insert with non-auto generated id " + y());
        }
        Logger.d(Logger.DATABASE_TAG, "inserting " + this);
        SQLiteDatabase writableDatabase = this.u.getWritableDatabase();
        String strB = b();
        ContentValues contentValuesA = a(true);
        long jInsertOrThrow = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.insertOrThrow(strB, null, contentValuesA) : SQLiteInstrumentation.insertOrThrow(writableDatabase, strB, null, contentValuesA);
        if (this.s == null || Integer.class.equals(this.s)) {
            this.t = (I) Integer.valueOf((int) jInsertOrThrow);
        } else if (Long.class.equals(this.s)) {
            this.t = (I) Long.valueOf(jInsertOrThrow);
        }
        Logger.v(Logger.DATABASE_TAG, "inserted " + this);
        return s();
    }

    public final void w() throws Throwable {
        a_().a(this, (String) null, (String[]) null);
    }

    public final I x() {
        I iS = s();
        if (iS == null) {
            return r();
        }
        m();
        return iS;
    }

    @Override // com.vungle.publisher.bl
    public int m() {
        I iS = s();
        if (iS == null) {
            throw new IllegalArgumentException("null " + AnalyticsEvent.EVENT_ID);
        }
        String strB = b();
        String str = AnalyticsEvent.EVENT_ID + " " + iS;
        SQLiteDatabase writableDatabase = this.u.getWritableDatabase();
        ContentValues contentValuesA = a(false);
        String[] strArr = {iS.toString()};
        int iUpdateWithOnConflict = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.updateWithOnConflict(strB, contentValuesA, "id = ?", strArr, 3) : SQLiteInstrumentation.updateWithOnConflict(writableDatabase, strB, contentValuesA, "id = ?", strArr, 3);
        switch (iUpdateWithOnConflict) {
            case 0:
                Logger.d(Logger.DATABASE_TAG, "no " + strB + " rows updated by " + str);
                return iUpdateWithOnConflict;
            case 1:
                Logger.d(Logger.DATABASE_TAG, "update successful " + y());
                return iUpdateWithOnConflict;
            default:
                Logger.w(Logger.DATABASE_TAG, "updated " + iUpdateWithOnConflict + " " + strB + " records for " + str);
                return iUpdateWithOnConflict;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int n() {
        return a_().a(s());
    }

    @Override // com.vungle.publisher.bl
    public final String y() {
        return o().append('}').toString();
    }

    public StringBuilder o() {
        StringBuilder sb = new StringBuilder();
        sb.append('{').append(z()).append(":: ");
        a(sb, AnalyticsEvent.EVENT_ID, s(), true);
        return sb;
    }

    public String z() {
        return b();
    }

    public String toString() {
        return p().append('}').toString();
    }

    public StringBuilder p() {
        return o();
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class a<T extends bi<I>, I> {

        @Inject
        public DatabaseHelper c;

        public abstract T a(T t, Cursor cursor);

        public abstract I[] b(int i);

        public abstract T[] c(int i);

        public abstract T c_();

        public abstract String e_();

        /* JADX WARN: Multi-variable type inference failed */
        public final int a(I... iArr) {
            int i = 0;
            int length = iArr == 0 ? 0 : iArr.length;
            if (length == 0) {
                Logger.d(Logger.DATABASE_TAG, "no " + e_() + " records requested for delete");
                return 0;
            }
            c_();
            boolean z = iArr instanceof String[];
            String[] strArr = z ? (String[]) iArr : new String[length];
            if (!z) {
                int length2 = iArr.length;
                int i2 = 0;
                while (i < length2) {
                    strArr[i2] = String.valueOf(iArr[i]);
                    i++;
                    i2++;
                }
            }
            SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
            String strE_ = e_();
            String str = bi.v() + " IN (" + bg.a(length) + ")";
            int iDelete = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.delete(strE_, str, strArr) : SQLiteInstrumentation.delete(writableDatabase, strE_, str, strArr);
            if (iDelete == length) {
                Logger.d(Logger.DATABASE_TAG, "deleted " + iDelete + " " + e_() + " records by " + bi.v() + " in " + de.b(iArr));
                return iDelete;
            }
            Logger.w(Logger.DATABASE_TAG, "deleted " + iDelete + " of " + length + " requested records by " + bi.v() + " in " + de.b(iArr));
            return iDelete;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int a(List<T> list) {
            Object[] objArrB;
            int i = 0;
            bi[] biVarArr = list == null ? null : (bi[]) list.toArray(c(list.size()));
            if (biVarArr != null) {
                objArrB = b(biVarArr.length);
                int length = biVarArr.length;
                int i2 = 0;
                while (i2 < length) {
                    objArrB[i] = biVarArr[i2].s();
                    i2++;
                    i++;
                }
            } else {
                objArrB = null;
            }
            return a(objArrB);
        }

        public List<T> d() {
            return a((String) null, (String[]) null, (String) null);
        }

        public List<T> d(int i) {
            return a(null, null, null, Integer.toString(i));
        }

        public final T a(I i) {
            return (T) a(i, (String) null, (String[]) null);
        }

        public final T a(I i, String str, String[] strArr) {
            bi biVarC_ = c_();
            biVarC_.a(i);
            return (T) a(biVarC_, str, strArr);
        }

        final T a(T t, String str, String[] strArr) throws Throwable {
            if (t == null) {
                throw new IllegalArgumentException("null model");
            }
            String strV = bi.v();
            Object objS = t.s();
            if (objS == null) {
                throw new IllegalArgumentException("null " + strV);
            }
            StringBuilder sbAppend = new StringBuilder().append(strV).append(" = ?");
            ArrayList arrayList = new ArrayList();
            arrayList.add(String.valueOf(objS));
            if (str != null) {
                sbAppend.append(" AND ").append(str);
                if (strArr != null) {
                    arrayList.addAll(Arrays.asList(strArr));
                }
            }
            String string = sbAppend.toString();
            List<T> listA = a(string, (String[]) arrayList.toArray(new String[arrayList.size()]), null, null);
            int size = listA.size();
            switch (size) {
                case 0:
                    return null;
                case 1:
                    return listA.get(0);
                default:
                    throw new SQLException(size + " " + e_() + " records found for query: " + string + ", parameters: " + de.a(arrayList));
            }
        }

        public final List<T> a(String str, String[] strArr, String str2) {
            return a(str, strArr, str2, null);
        }

        public final List<T> a(String str, String[] strArr, String str2, String str3) throws Throwable {
            Cursor cursor;
            try {
                String strE_ = e_();
                Logger.d(Logger.DATABASE_TAG, "fetching " + (str == null ? "all " + strE_ + " records" : strE_ + " records by " + str + " " + de.b(strArr)));
                SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
                Cursor cursorQuery = !(readableDatabase instanceof SQLiteDatabase) ? readableDatabase.query(strE_, null, str, strArr, null, null, str2, str3) : SQLiteInstrumentation.query(readableDatabase, strE_, null, str, strArr, null, null, str2, str3);
                try {
                    int count = cursorQuery.getCount();
                    Logger.v(Logger.DATABASE_TAG, (count == 0 ? "no " : "fetched " + count + " ") + strE_ + " records by " + str + " " + de.b(strArr));
                    List<T> listA = a(cursorQuery);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return listA;
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
                cursor = null;
            }
        }

        public final boolean a(String str, String[] strArr) throws Throwable {
            Cursor cursor;
            try {
                SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
                String str2 = "SELECT EXISTS (SELECT 1 FROM " + e_() + " WHERE " + str + " LIMIT 1)";
                Cursor cursorRawQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.rawQuery(str2, strArr) : SQLiteInstrumentation.rawQuery(writableDatabase, str2, strArr);
                try {
                    boolean z = cursorRawQuery.moveToFirst() && cursorRawQuery.getInt(0) != 0;
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return z;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorRawQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
            }
        }

        public final int e() {
            Cursor cursorRawQuery = null;
            try {
                SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
                String str = "SELECT COUNT(*) FROM " + e_();
                cursorRawQuery = !(readableDatabase instanceof SQLiteDatabase) ? readableDatabase.rawQuery(str, null) : SQLiteInstrumentation.rawQuery(readableDatabase, str, null);
                return cursorRawQuery.moveToFirst() ? cursorRawQuery.getInt(0) : 0;
            } finally {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            }
        }

        public static void a(T... tArr) {
            if (tArr != null) {
                for (T t : tArr) {
                    t.r();
                }
            }
        }

        private List<T> a(Cursor cursor) {
            ArrayList arrayList = new ArrayList(cursor.getCount());
            while (cursor.moveToNext()) {
                arrayList.add(b(c_(), cursor));
            }
            return arrayList;
        }

        public final T b(T t, Cursor cursor) {
            a(t, cursor);
            Logger.v(Logger.DATABASE_TAG, "fetched " + t);
            return t;
        }
    }
}
