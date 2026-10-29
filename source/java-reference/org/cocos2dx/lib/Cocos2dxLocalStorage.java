package org.cocos2dx.lib;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.amazon.ags.constants.NativeCallKeys;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;

/* JADX INFO: loaded from: classes2.dex */
public class Cocos2dxLocalStorage {
    private static final int DATABASE_VERSION = 1;
    private static final String TAG = "Cocos2dxLocalStorage";
    private static String DATABASE_NAME = "jsb.sqlite";
    private static String TABLE_NAME = IMBrowserActivity.EXPANDDATA;
    private static DBOpenHelper mDatabaseOpenHelper = null;
    private static SQLiteDatabase mDatabase = null;

    public static boolean init(String dbName, String tableName) {
        if (Cocos2dxActivity.getContext() == null) {
            return false;
        }
        DATABASE_NAME = dbName;
        TABLE_NAME = tableName;
        mDatabaseOpenHelper = new DBOpenHelper(Cocos2dxActivity.getContext());
        mDatabase = mDatabaseOpenHelper.getWritableDatabase();
        return true;
    }

    public static void destory() {
        if (mDatabase != null) {
            mDatabase.close();
        }
    }

    public static void setItem(String key, String value) {
        try {
            String sql = "replace into " + TABLE_NAME + "(key,value)values(?,?)";
            SQLiteDatabase sQLiteDatabase = mDatabase;
            Object[] objArr = {key, value};
            if (sQLiteDatabase instanceof SQLiteDatabase) {
                SQLiteInstrumentation.execSQL(sQLiteDatabase, sql, objArr);
            } else {
                sQLiteDatabase.execSQL(sql, objArr);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getItem(String key) {
        String ret = null;
        try {
            String sql = "select value from " + TABLE_NAME + " where key=?";
            SQLiteDatabase sQLiteDatabase = mDatabase;
            String[] strArr = {key};
            Cursor c = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.rawQuery(sql, strArr) : SQLiteInstrumentation.rawQuery(sQLiteDatabase, sql, strArr);
            while (c.moveToNext()) {
                if (ret != null) {
                    Log.e(TAG, "The key contains more than one value.");
                    break;
                }
                ret = c.getString(c.getColumnIndex(NativeCallKeys.VALUE));
            }
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ret == null ? "" : ret;
    }

    public static void removeItem(String key) {
        try {
            String sql = "delete from " + TABLE_NAME + " where key=?";
            SQLiteDatabase sQLiteDatabase = mDatabase;
            Object[] objArr = {key};
            if (sQLiteDatabase instanceof SQLiteDatabase) {
                SQLiteInstrumentation.execSQL(sQLiteDatabase, sql, objArr);
            } else {
                sQLiteDatabase.execSQL(sql, objArr);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static class DBOpenHelper extends SQLiteOpenHelper {
        DBOpenHelper(Context context) {
            super(context, Cocos2dxLocalStorage.DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase db) {
            String str = "CREATE TABLE IF NOT EXISTS " + Cocos2dxLocalStorage.TABLE_NAME + "(key TEXT PRIMARY KEY,value TEXT);";
            if (db instanceof SQLiteDatabase) {
                SQLiteInstrumentation.execSQL(db, str);
            } else {
                db.execSQL(str);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            Log.w(Cocos2dxLocalStorage.TAG, "Upgrading database from version " + oldVersion + " to " + newVersion + ", which will destroy all old data");
        }
    }
}
