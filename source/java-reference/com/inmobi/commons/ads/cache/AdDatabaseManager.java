package com.inmobi.commons.ads.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;

/* JADX INFO: loaded from: classes.dex */
public class AdDatabaseManager {
    private static AdDatabaseManager c;
    private AdDatabaseHelper a;
    private SQLiteDatabase b;
    private int d = 1000;

    protected AdDatabaseManager() {
    }

    public static synchronized AdDatabaseManager getInstance() {
        if (c == null) {
            c = new AdDatabaseManager();
            c.a = new AdDatabaseHelper(InternalSDKUtil.getContext());
        }
        return c;
    }

    protected void open() {
        try {
            this.b = this.a.getWritableDatabase();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to open ads db", e);
        }
    }

    protected void close() {
        try {
            this.b.close();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to close ads db", e);
        }
    }

    public synchronized void insertAd(AdData adData) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("timestamp", Long.valueOf(adData.getTimestamp()));
            contentValues.put(AdDatabaseHelper.COLUMN_APPID, adData.getAppId());
            contentValues.put("content", adData.getContent());
            contentValues.put(AdDatabaseHelper.COLUMN_ADTYPE, adData.getAdType());
            if (getDBSize() >= this.d) {
                open();
                SQLiteDatabase sQLiteDatabase = this.b;
                Cursor cursorRawQuery = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.rawQuery("SELECT adid FROM ad WHERE timestamp= (SELECT MIN(timestamp) FROM ad Limit 1);", null) : SQLiteInstrumentation.rawQuery(sQLiteDatabase, "SELECT adid FROM ad WHERE timestamp= (SELECT MIN(timestamp) FROM ad Limit 1);", null);
                cursorRawQuery.moveToFirst();
                long j = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                SQLiteDatabase sQLiteDatabase2 = this.b;
                String str = "adid = " + j;
                if (sQLiteDatabase2 instanceof SQLiteDatabase) {
                    SQLiteInstrumentation.delete(sQLiteDatabase2, AdDatabaseHelper.TABLE_AD, str, null);
                } else {
                    sQLiteDatabase2.delete(AdDatabaseHelper.TABLE_AD, str, null);
                }
                close();
            }
            open();
            SQLiteDatabase sQLiteDatabase3 = this.b;
            if (sQLiteDatabase3 instanceof SQLiteDatabase) {
                SQLiteInstrumentation.insert(sQLiteDatabase3, AdDatabaseHelper.TABLE_AD, null, contentValues);
            } else {
                sQLiteDatabase3.insert(AdDatabaseHelper.TABLE_AD, null, contentValues);
            }
            close();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to insert native ads to db", e);
        }
    }

    public synchronized AdData getAd(String str) {
        AdData adData;
        try {
            open();
            SQLiteDatabase sQLiteDatabase = this.b;
            String[] strArr = {str};
            Cursor cursorRawQuery = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.rawQuery("SELECT * FROM ad WHERE appid = ? Order by timestamp Limit 1;", strArr) : SQLiteInstrumentation.rawQuery(sQLiteDatabase, "SELECT * FROM ad WHERE appid = ? Order by timestamp Limit 1;", strArr);
            cursorRawQuery.moveToFirst();
            AdData adData2 = new AdData();
            adData2.setAdId(cursorRawQuery.getLong(0));
            adData2.setTimestamp(cursorRawQuery.getLong(1));
            adData2.setAppId(cursorRawQuery.getString(2));
            adData2.setContent(cursorRawQuery.getString(3));
            cursorRawQuery.close();
            SQLiteDatabase sQLiteDatabase2 = this.b;
            String str2 = "adid = " + adData2.getAdId();
            if (sQLiteDatabase2 instanceof SQLiteDatabase) {
                SQLiteInstrumentation.delete(sQLiteDatabase2, AdDatabaseHelper.TABLE_AD, str2, null);
            } else {
                sQLiteDatabase2.delete(AdDatabaseHelper.TABLE_AD, str2, null);
            }
            close();
            adData = adData2;
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to get native ads from db", e);
            adData = null;
        }
        return adData;
    }

    public synchronized int getNoOfAds(String str) {
        int count;
        try {
            open();
            SQLiteDatabase sQLiteDatabase = this.b;
            String[] strArr = {str};
            count = (!(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.rawQuery("SELECT * FROM ad WHERE appid = ?; ", strArr) : SQLiteInstrumentation.rawQuery(sQLiteDatabase, "SELECT * FROM ad WHERE appid = ?; ", strArr)).getCount();
            close();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to get native ads from db", e);
            count = 0;
        }
        return count;
    }

    public void setDBLimit(int i) {
        if (i > 0) {
            this.d = i;
        }
    }

    protected int getDBSize() {
        try {
            open();
            SQLiteDatabase sQLiteDatabase = this.b;
            int count = (!(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.rawQuery("SELECT * FROM ad; ", null) : SQLiteInstrumentation.rawQuery(sQLiteDatabase, "SELECT * FROM ad; ", null)).getCount();
            close();
            return count;
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to get native ads from db", e);
            return 0;
        }
    }

    public void removeExpiredAds(long j, String str) {
        try {
            open();
            long jCurrentTimeMillis = System.currentTimeMillis() - (1000 * j);
            SQLiteDatabase sQLiteDatabase = this.b;
            String[] strArr = {Long.toString(jCurrentTimeMillis), str};
            int iDelete = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.delete(AdDatabaseHelper.TABLE_AD, "timestamp<? AND adtype=?", strArr) : SQLiteInstrumentation.delete(sQLiteDatabase, AdDatabaseHelper.TABLE_AD, "timestamp<? AND adtype=?", strArr);
            close();
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Deleted " + iDelete + " expired ads from cache.");
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to remove expired ads from cache", e);
        }
    }
}
