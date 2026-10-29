package com.inmobi.commons.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class DatabaseHandler extends SQLiteOpenHelper {
    public static final String DATABASE_NAME = "im.db";
    private static String c = "CREATE TABLE IF NOT EXISTS ";
    private static String d = "DROP TABLE IF EXISTS ";
    private static String e = " PRIMARY KEY ";
    private static String f = " AUTOINCREMENT ";
    private static String g = " NOT NULL ";
    private static String h = "SELECT * FROM ";
    private static String i = " WHERE ";
    private static String j = " ORDER BY ";
    private static String k = "; ";
    private static String l = " Limit ?";
    private ArrayList<TableData> a;
    private SQLiteDatabase b;

    protected DatabaseHandler(Context context, ArrayList<TableData> arrayList) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
        this.a = arrayList;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            a(sQLiteDatabase);
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception Creating table", e2);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        try {
            Iterator<TableData> it = this.a.iterator();
            while (it.hasNext()) {
                String str = d + it.next().getmTableName();
                if (sQLiteDatabase instanceof SQLiteDatabase) {
                    SQLiteInstrumentation.execSQL(sQLiteDatabase, str);
                } else {
                    sQLiteDatabase.execSQL(str);
                }
            }
            onCreate(sQLiteDatabase);
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception Deleting table", e2);
        }
    }

    public void open() {
        try {
            this.b = getWritableDatabase();
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to open  db", e2);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public void close() {
        try {
            this.b.close();
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to close  db", e2);
        }
    }

    public synchronized long insert(String str, ContentValues contentValues) {
        long jInsert;
        try {
            SQLiteDatabase sQLiteDatabase = this.b;
            jInsert = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.insert(str, null, contentValues) : SQLiteInstrumentation.insert(sQLiteDatabase, str, null, contentValues);
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to insert to db", e2);
            jInsert = -1;
        }
        return jInsert;
    }

    public synchronized int delete(String str, String str2, String[] strArr) {
        int iDelete;
        try {
            SQLiteDatabase sQLiteDatabase = this.b;
            iDelete = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.delete(str, str2, strArr) : SQLiteInstrumentation.delete(sQLiteDatabase, str, str2, strArr);
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to insert to db", e2);
            iDelete = -1;
        }
        return iDelete;
    }

    public synchronized long update(String str, ContentValues contentValues, String str2, String[] strArr) {
        long jUpdate;
        try {
            SQLiteDatabase sQLiteDatabase = this.b;
            jUpdate = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.update(str, contentValues, str2, strArr) : SQLiteInstrumentation.update(sQLiteDatabase, str, contentValues, str2, strArr);
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to insert to db", e2);
            jUpdate = -1;
        }
        return jUpdate;
    }

    public synchronized Cursor getRow(String str, String str2, String[] strArr) {
        Cursor cursorRawQuery;
        if (str2 != null) {
            try {
                if (!"".equals(str2.trim())) {
                    SQLiteDatabase sQLiteDatabase = this.b;
                    String str3 = h + str + i + str2 + k;
                    cursorRawQuery = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.rawQuery(str3, strArr) : SQLiteInstrumentation.rawQuery(sQLiteDatabase, str3, strArr);
                }
                cursorRawQuery.moveToFirst();
            } catch (Exception e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to all rows", e2);
                cursorRawQuery = null;
            }
        }
        SQLiteDatabase sQLiteDatabase2 = this.b;
        String str4 = h + str + k;
        cursorRawQuery = !(sQLiteDatabase2 instanceof SQLiteDatabase) ? sQLiteDatabase2.rawQuery(str4, null) : SQLiteInstrumentation.rawQuery(sQLiteDatabase2, str4, null);
        cursorRawQuery.moveToFirst();
        return cursorRawQuery;
    }

    public synchronized Cursor getAll(String str, String str2) {
        Cursor cursorRawQuery;
        if (str2 != null) {
            try {
                if (!"".equals(str2.trim())) {
                    SQLiteDatabase sQLiteDatabase = this.b;
                    String str3 = h + str + j + str2 + k;
                    cursorRawQuery = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.rawQuery(str3, null) : SQLiteInstrumentation.rawQuery(sQLiteDatabase, str3, null);
                }
                cursorRawQuery.moveToFirst();
            } catch (Exception e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to all rows", e2);
                cursorRawQuery = null;
            }
        }
        SQLiteDatabase sQLiteDatabase2 = this.b;
        String str4 = h + str + k;
        cursorRawQuery = !(sQLiteDatabase2 instanceof SQLiteDatabase) ? sQLiteDatabase2.rawQuery(str4, null) : SQLiteInstrumentation.rawQuery(sQLiteDatabase2, str4, null);
        cursorRawQuery.moveToFirst();
        return cursorRawQuery;
    }

    public synchronized Cursor getNRows(String str, String str2, int i2) {
        Cursor cursorRawQuery;
        if (str2 != null) {
            try {
                if (!"".equals(str2.trim())) {
                    SQLiteDatabase sQLiteDatabase = this.b;
                    String str3 = h + str + j + str2 + l + k;
                    String[] strArr = {String.valueOf(i2)};
                    cursorRawQuery = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.rawQuery(str3, strArr) : SQLiteInstrumentation.rawQuery(sQLiteDatabase, str3, strArr);
                }
                cursorRawQuery.moveToFirst();
            } catch (Exception e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to all rows", e2);
                cursorRawQuery = null;
            }
        }
        SQLiteDatabase sQLiteDatabase2 = this.b;
        String str4 = h + str + k;
        cursorRawQuery = !(sQLiteDatabase2 instanceof SQLiteDatabase) ? sQLiteDatabase2.rawQuery(str4, null) : SQLiteInstrumentation.rawQuery(sQLiteDatabase2, str4, null);
        cursorRawQuery.moveToFirst();
        return cursorRawQuery;
    }

    public synchronized int getNoOfRows(String str, String str2, String[] strArr) {
        Cursor cursorRawQuery;
        int count;
        if (str2 != null) {
            try {
                if (!"".equals(str2.trim())) {
                    SQLiteDatabase sQLiteDatabase = this.b;
                    String str3 = h + str + i + str2;
                    cursorRawQuery = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.rawQuery(str3, strArr) : SQLiteInstrumentation.rawQuery(sQLiteDatabase, str3, strArr);
                }
                count = cursorRawQuery.getCount();
                cursorRawQuery.close();
            } catch (Exception e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to get number of rows", e2);
                count = 0;
            }
        }
        SQLiteDatabase sQLiteDatabase2 = this.b;
        String str4 = h + str + k;
        cursorRawQuery = !(sQLiteDatabase2 instanceof SQLiteDatabase) ? sQLiteDatabase2.rawQuery(str4, null) : SQLiteInstrumentation.rawQuery(sQLiteDatabase2, str4, null);
        count = cursorRawQuery.getCount();
        cursorRawQuery.close();
        return count;
    }

    protected synchronized int getTableSize(String str) {
        int count;
        try {
            SQLiteDatabase sQLiteDatabase = this.b;
            String str2 = h + str + k;
            Cursor cursorRawQuery = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.rawQuery(str2, null) : SQLiteInstrumentation.rawQuery(sQLiteDatabase, str2, null);
            count = cursorRawQuery.getCount();
            cursorRawQuery.close();
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to table size ", e2);
            count = 0;
        }
        return count;
    }

    public synchronized Cursor executeQuery(String str, String[] strArr) {
        Cursor cursorRawQuery;
        try {
            SQLiteDatabase sQLiteDatabase = this.b;
            cursorRawQuery = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.rawQuery(str, strArr) : SQLiteInstrumentation.rawQuery(sQLiteDatabase, str, strArr);
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to execute db query", e2);
            cursorRawQuery = null;
        }
        return cursorRawQuery;
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        String string;
        try {
            if (this.a != null && !this.a.isEmpty()) {
                for (TableData tableData : this.a) {
                    String str = tableData.getmTableName();
                    LinkedHashMap<String, ColumnData> linkedHashMap = tableData.getmColumns();
                    StringBuilder sb = new StringBuilder(c + str + " (");
                    for (String str2 : linkedHashMap.keySet()) {
                        ColumnData columnData = linkedHashMap.get(str2);
                        sb.append(" " + str2 + " " + columnData.getDataType().toString());
                        if (columnData.isPrimaryKey()) {
                            sb.append(e);
                        }
                        if (columnData.isAutoIncrement()) {
                            sb.append(f);
                        }
                        if (columnData.isMandatory()) {
                            sb.append(g);
                        }
                        sb.append(AppInfo.DELIM);
                    }
                    if (',' == sb.charAt(sb.length() - 1)) {
                        string = sb.substring(0, sb.length() - 2);
                    } else {
                        string = sb.toString();
                    }
                    String strConcat = string.concat(" );");
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Table: " + strConcat);
                    if (sQLiteDatabase instanceof SQLiteDatabase) {
                        SQLiteInstrumentation.execSQL(sQLiteDatabase, strConcat);
                    } else {
                        sQLiteDatabase.execSQL(strConcat);
                    }
                }
            }
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception creating table", e2);
        }
    }
}
