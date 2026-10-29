package com.amazon.ags.storage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.Log;
import com.amazon.ags.html5.factory.ServiceFactory;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class SQLiteOfflineDataCache extends SQLiteOpenHelper implements OfflineDataCache {
    private static final String PRIMARY_KEY_COL = "primary_key";
    private static final String SECONDARY_KEY_COL = "secondary_key";
    private static final String TAG = "GC_" + SQLiteOfflineDataCache.class.getSimpleName();
    private static final String TEXT_COL = "text";
    private final String m_DatabaseTableName;

    public SQLiteOfflineDataCache(Context context, String databaseTableName, int version) {
        super(context, databaseTableName, (SQLiteDatabase.CursorFactory) null, version);
        this.m_DatabaseTableName = databaseTableName;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db) {
        String createTable = "CREATE TABLE " + this.m_DatabaseTableName + " (" + PRIMARY_KEY_COL + " TEXT PRIMARY KEY ON CONFLICT REPLACE, " + SECONDARY_KEY_COL + " TEXT, text TEXT);";
        String str = String.format(createTable, this.m_DatabaseTableName);
        if (db instanceof SQLiteDatabase) {
            SQLiteInstrumentation.execSQL(db, str);
        } else {
            db.execSQL(str);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        dropTable(db);
        onCreate(db);
    }

    @Override // com.amazon.ags.storage.OfflineDataCache
    public synchronized JSONObject getCacheItem(String primaryKey) {
        JSONObject jSONObjectInit;
        List<String> requestedItems = new ArrayList<>();
        requestedItems.add(primaryKey);
        if (TextUtils.isEmpty(primaryKey)) {
            throw new IllegalArgumentException("primaryKey is not valid");
        }
        SQLiteDatabase db = null;
        Cursor cursor = null;
        try {
            try {
                if (ServiceFactory.isDebugLoggingEnabled()) {
                    Log.d(TAG, "getCacheItem - primaryKey(" + primaryKey + ")");
                }
                db = getReadableDatabase();
                db.acquireReference();
                String str = this.m_DatabaseTableName;
                String[] strArr = {"text"};
                String str2 = "primary_key='" + primaryKey + "'";
                cursor = !(db instanceof SQLiteDatabase) ? db.query(str, strArr, str2, null, null, null, null) : SQLiteInstrumentation.query(db, str, strArr, str2, null, null, null, null);
                if (cursor == null || !cursor.moveToFirst()) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (db != null) {
                        db.releaseReference();
                        db.close();
                    }
                    jSONObjectInit = null;
                } else {
                    String text = cursor.getString(0);
                    jSONObjectInit = JSONObjectInstrumentation.init(text);
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (db != null) {
                        db.releaseReference();
                        db.close();
                    }
                }
            } catch (SQLiteException e) {
                Log.w(TAG, "getCacheItem - Failed to open SQL database: " + e.toString());
                jSONObjectInit = null;
                if (cursor != null) {
                    cursor.close();
                }
                if (db != null) {
                    db.releaseReference();
                    db.close();
                }
            } catch (IllegalStateException e2) {
                Log.w(TAG, "getCacheItem - Failed to acquire reference to database: " + e2.toString());
                jSONObjectInit = null;
                if (cursor != null) {
                    cursor.close();
                }
                if (db != null) {
                    db.releaseReference();
                    db.close();
                }
            } catch (JSONException e3) {
                Log.w(TAG, "getCacheItem - Failed to parse JSON: " + e3.toString());
                jSONObjectInit = null;
                if (cursor != null) {
                    cursor.close();
                }
                if (db != null) {
                    db.releaseReference();
                    db.close();
                }
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            if (db != null) {
                db.releaseReference();
                db.close();
            }
            throw th;
        }
        return jSONObjectInit;
    }

    @Override // com.amazon.ags.storage.OfflineDataCache
    public synchronized List<JSONObject> queryCacheItems(String secondaryKey) {
        List<JSONObject> resultList;
        if (TextUtils.isEmpty(secondaryKey)) {
            throw new IllegalArgumentException("secondaryKey is invalid");
        }
        List<String> requestedItems = new ArrayList<>();
        requestedItems.add(secondaryKey);
        SQLiteDatabase db = null;
        Cursor cursor = null;
        try {
            try {
                try {
                    if (ServiceFactory.isDebugLoggingEnabled()) {
                        Log.d(TAG, "queryCacheItems - secondaryKey(" + secondaryKey + ")");
                    }
                    db = getReadableDatabase();
                    db.acquireReference();
                    String str = this.m_DatabaseTableName;
                    String[] strArr = {"text"};
                    String str2 = "secondary_key='" + secondaryKey + "'";
                    cursor = !(db instanceof SQLiteDatabase) ? db.query(str, strArr, str2, null, null, null, null) : SQLiteInstrumentation.query(db, str, strArr, str2, null, null, null, null);
                    if (cursor == null || !cursor.moveToFirst()) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (db != null) {
                            db.releaseReference();
                            db.close();
                        }
                        resultList = null;
                    } else {
                        resultList = new ArrayList<>(cursor.getCount());
                        while (!cursor.isAfterLast()) {
                            String text = cursor.getString(0);
                            resultList.add(JSONObjectInstrumentation.init(text));
                            cursor.moveToNext();
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (db != null) {
                            db.releaseReference();
                            db.close();
                        }
                    }
                } catch (JSONException e) {
                    Log.w(TAG, "queryCacheItems - Failed to parse JSON: " + e.toString());
                    resultList = null;
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (db != null) {
                        db.releaseReference();
                        db.close();
                    }
                }
            } catch (SQLiteException e2) {
                Log.w(TAG, "queryCacheItems - Failed to open SQL database: " + e2.toString());
                resultList = null;
                if (cursor != null) {
                    cursor.close();
                }
                if (db != null) {
                    db.releaseReference();
                    db.close();
                }
            } catch (IllegalStateException e3) {
                Log.w(TAG, "queryCacheItems - Failed to acquire reference to database: " + e3.toString());
                resultList = null;
                if (cursor != null) {
                    cursor.close();
                }
                if (db != null) {
                    db.releaseReference();
                    db.close();
                }
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            if (db != null) {
                db.releaseReference();
                db.close();
            }
            throw th;
        }
        return resultList;
    }

    @Override // com.amazon.ags.storage.OfflineDataCache
    public synchronized void setCacheItem(String primaryKey, String secondaryKey, JSONObject jsonObject) {
        if (TextUtils.isEmpty(primaryKey)) {
            throw new IllegalArgumentException("primaryKey is invalid");
        }
        if (TextUtils.isEmpty(secondaryKey)) {
            throw new IllegalArgumentException("secondaryKey is invalid");
        }
        if (jsonObject == null) {
            throw new IllegalArgumentException("jsonObject is null");
        }
        List<String> requestedItems = new ArrayList<>();
        requestedItems.add(primaryKey + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + secondaryKey);
        SQLiteDatabase db = null;
        try {
            try {
                db = getWritableDatabase();
                db.acquireReference();
                ContentValues values = new ContentValues();
                String jsonString = !(jsonObject instanceof JSONObject) ? jsonObject.toString() : JSONObjectInstrumentation.toString(jsonObject);
                if (ServiceFactory.isDebugLoggingEnabled()) {
                    Log.d(TAG, "setCacheItem - Storing primaryKey(" + primaryKey + "),secondaryKey(" + secondaryKey + ")");
                }
                values.put("text", jsonString);
                values.put(PRIMARY_KEY_COL, primaryKey);
                values.put(SECONDARY_KEY_COL, secondaryKey);
                String str = this.m_DatabaseTableName;
                long rowId = !(db instanceof SQLiteDatabase) ? db.insert(str, null, values) : SQLiteInstrumentation.insert(db, str, null, values);
                if (rowId == -1) {
                    Log.w(TAG, "setCacheItem - Failed to store item in database.");
                }
                if (db != null) {
                    db.releaseReference();
                    db.close();
                }
            } catch (SQLiteException e) {
                Log.w(TAG, "setCacheItem - Failed to open SQL database.");
                if (db != null) {
                    db.releaseReference();
                    db.close();
                }
            } catch (IllegalStateException e2) {
                Log.w(TAG, "setCacheItem - Failed to acquire reference to database: " + e2.toString());
                if (db != null) {
                    db.releaseReference();
                    db.close();
                }
            }
        } catch (Throwable th) {
            if (db != null) {
                db.releaseReference();
                db.close();
            }
            throw th;
        }
    }

    @Override // com.amazon.ags.storage.OfflineDataCache
    public void setCacheItem(OfflineCacheRequest cacheRequest) {
        if (cacheRequest == null) {
            throw new IllegalArgumentException("cacheRequest is null");
        }
        setCacheItem(cacheRequest.getPrimaryKey(), cacheRequest.getSecondaryKey(), cacheRequest.getJsonObject());
    }

    @Override // com.amazon.ags.storage.OfflineDataCache
    public synchronized void setCacheItems(List<OfflineCacheRequest> batchRequest) {
        if (batchRequest == null) {
            throw new IllegalArgumentException("batchRequest is null");
        }
        List<String> requestedItems = new ArrayList<>();
        SQLiteDatabase db = null;
        try {
            try {
                SQLiteDatabase db2 = getWritableDatabase();
                db2.acquireReference();
                db2.beginTransaction();
                try {
                    try {
                        String insertStatement = "INSERT into " + this.m_DatabaseTableName + " (" + PRIMARY_KEY_COL + AppInfo.DELIM + SECONDARY_KEY_COL + AppInfo.DELIM + "text) values(?,?,?);";
                        SQLiteStatement insert = db2.compileStatement(insertStatement);
                        for (OfflineCacheRequest request : batchRequest) {
                            requestedItems.add(request.getPrimaryKey() + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + request.getSecondaryKey());
                            insert.bindString(1, request.getPrimaryKey());
                            insert.bindString(2, request.getSecondaryKey());
                            JSONObject jsonObject = request.getJsonObject();
                            insert.bindString(3, !(jsonObject instanceof JSONObject) ? jsonObject.toString() : JSONObjectInstrumentation.toString(jsonObject));
                            insert.executeInsert();
                        }
                        db2.setTransactionSuccessful();
                        db2.endTransaction();
                    } catch (SQLiteException e) {
                        Log.w(TAG, "setCacheItems - Failed to open SQL database.");
                        db2.endTransaction();
                    }
                    if (db2 != null) {
                        db2.releaseReference();
                        db2.close();
                    }
                } catch (Throwable th) {
                    db2.endTransaction();
                    throw th;
                }
            } catch (Throwable th2) {
                if (0 != 0) {
                    db.releaseReference();
                    db.close();
                }
                throw th2;
            }
        } catch (SQLiteException e2) {
            Log.w(TAG, "setCacheItems - Failed to open SQL database.");
            if (0 != 0) {
                db.releaseReference();
                db.close();
            }
        } catch (IllegalStateException e3) {
            Log.w(TAG, "setCacheItems - Failed to acquire reference to database: " + e3.toString());
            if (0 != 0) {
                db.releaseReference();
                db.close();
            }
        }
    }

    @Override // com.amazon.ags.storage.OfflineDataCache
    public synchronized void removeCachedItem(String primaryKey) {
        if (TextUtils.isEmpty(primaryKey)) {
            throw new IllegalArgumentException("primaryKey is not valid");
        }
        List<String> requestedItems = new ArrayList<>();
        requestedItems.add(primaryKey);
        SQLiteDatabase db = null;
        try {
            try {
                try {
                    SQLiteDatabase db2 = getWritableDatabase();
                    db2.acquireReference();
                    if (ServiceFactory.isDebugLoggingEnabled()) {
                        Log.d(TAG, "removeCachedItem - Removing primaryKey(" + primaryKey + ")");
                    }
                    String deleteString = "primary_key='" + primaryKey + "'";
                    String str = this.m_DatabaseTableName;
                    if (db2 instanceof SQLiteDatabase) {
                        SQLiteInstrumentation.delete(db2, str, deleteString, null);
                    } else {
                        db2.delete(str, deleteString, null);
                    }
                    if (db2 != null) {
                        db2.releaseReference();
                        db2.close();
                    }
                } catch (SQLiteException e) {
                    Log.w(TAG, "removeCachedItem - Failed to open SQL database.");
                    if (0 != 0) {
                        db.releaseReference();
                        db.close();
                    }
                }
            } catch (IllegalStateException e2) {
                Log.w(TAG, "removeCachedItem - Failed to acquire reference to database: " + e2.toString());
                if (0 != 0) {
                    db.releaseReference();
                    db.close();
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                db.releaseReference();
                db.close();
            }
            throw th;
        }
    }

    @Override // com.amazon.ags.storage.OfflineDataCache
    public synchronized void removeCachedItems(String secondaryKey) {
        if (TextUtils.isEmpty(secondaryKey)) {
            throw new IllegalArgumentException("secondaryKey is not valid");
        }
        List<String> requestedItems = new ArrayList<>();
        requestedItems.add(secondaryKey);
        SQLiteDatabase db = null;
        try {
            try {
                db = getWritableDatabase();
                db.acquireReference();
                if (ServiceFactory.isDebugLoggingEnabled()) {
                    Log.d(TAG, "removeCachedItem - Removing secondaryKey(" + secondaryKey + ")");
                }
                String deleteString = "secondary_key='" + secondaryKey + "'";
                String str = this.m_DatabaseTableName;
                int deleted = !(db instanceof SQLiteDatabase) ? db.delete(str, deleteString, null) : SQLiteInstrumentation.delete(db, str, deleteString, null);
                if (ServiceFactory.isDebugLoggingEnabled()) {
                    Log.d(TAG, "removeCachedItem - Removed " + deleted + " items");
                }
                if (db != null) {
                    db.releaseReference();
                    db.close();
                }
            } catch (SQLiteException e) {
                Log.w(TAG, "removeCachedItems - Failed to open SQL database.");
                if (db != null) {
                    db.releaseReference();
                    db.close();
                }
            } catch (IllegalStateException e2) {
                Log.w(TAG, "removeCachedItems - Failed to acquire reference to database: " + e2.toString());
                if (db != null) {
                    db.releaseReference();
                    db.close();
                }
            }
        } catch (Throwable th) {
            if (db != null) {
                db.releaseReference();
                db.close();
            }
            throw th;
        }
    }

    @Override // com.amazon.ags.storage.OfflineDataCache
    public void clear() {
        SQLiteDatabase db = null;
        try {
            db = getWritableDatabase();
            db.acquireReference();
            String str = this.m_DatabaseTableName;
            int deleted = !(db instanceof SQLiteDatabase) ? db.delete(str, "1", null) : SQLiteInstrumentation.delete(db, str, "1", null);
            Log.d(TAG, "clearing cache for " + this.m_DatabaseTableName + " removed " + deleted + " rows");
        } catch (SQLiteException e) {
            Log.w(TAG, "clear cache - Failed to open SQL database.");
        } catch (IllegalStateException e2) {
            Log.w(TAG, "clear cache - Failed to acquire reference to database: " + e2.toString());
        } finally {
            if (db != null) {
                db.releaseReference();
                db.close();
            }
        }
    }

    private void dropTable(SQLiteDatabase db) {
        String str = "DROP TABLE IF EXISTS " + this.m_DatabaseTableName;
        if (db instanceof SQLiteDatabase) {
            SQLiteInstrumentation.execSQL(db, str);
        } else {
            db.execSQL(str);
        }
    }

    @Override // com.amazon.ags.storage.OfflineDataCache
    public void batchRemoveCachedItems(List<String> secondaryKeys) {
        List<String> requestedItems = new ArrayList<>();
        requestedItems.addAll(secondaryKeys);
        SQLiteDatabase db = null;
        try {
            try {
                SQLiteDatabase db2 = getWritableDatabase();
                db2.acquireReference();
                db2.beginTransaction();
                try {
                    try {
                        for (String secondaryKey : secondaryKeys) {
                            if (!TextUtils.isEmpty(secondaryKey)) {
                                Log.d(TAG, "batchRemoveCachedItems - Removing secondaryKey(" + secondaryKey + ")");
                                String deleteString = "secondary_key='" + secondaryKey + "'";
                                String str = this.m_DatabaseTableName;
                                int deleted = !(db2 instanceof SQLiteDatabase) ? db2.delete(str, deleteString, null) : SQLiteInstrumentation.delete(db2, str, deleteString, null);
                                Log.d(TAG, "batchRemoveCachedItems - Removed " + deleted + " items");
                            }
                        }
                        db2.setTransactionSuccessful();
                        db2.endTransaction();
                    } catch (SQLiteException e) {
                        Log.w(TAG, "batchRemoveCachedItems - Failed to open SQL database.");
                        db2.endTransaction();
                    }
                    if (db2 != null) {
                        db2.releaseReference();
                        db2.close();
                    }
                } catch (Throwable th) {
                    db2.endTransaction();
                    throw th;
                }
            } catch (Throwable th2) {
                if (0 != 0) {
                    db.releaseReference();
                    db.close();
                }
                throw th2;
            }
        } catch (SQLiteException e2) {
            Log.w(TAG, "batchRemoveCachedItems - Failed to open SQL database.");
            if (0 != 0) {
                db.releaseReference();
                db.close();
            }
        } catch (IllegalStateException e3) {
            Log.w(TAG, "batchRemoveCachedItems - Failed to acquire reference to database: " + e3.toString());
            if (0 != 0) {
                db.releaseReference();
                db.close();
            }
        }
    }

    @Override // com.amazon.ags.storage.OfflineDataCache
    public List<JSONObject> getAllCacheItems() {
        SQLiteDatabase db = null;
        Cursor cursor = null;
        List<JSONObject> jsonList = new ArrayList<>();
        try {
            try {
                db = getReadableDatabase();
                String str = "SELECT * FROM " + this.m_DatabaseTableName;
                cursor = !(db instanceof SQLiteDatabase) ? db.rawQuery(str, null) : SQLiteInstrumentation.rawQuery(db, str, null);
                if (cursor != null && cursor.moveToFirst()) {
                    do {
                        String text2 = cursor.getString(2);
                        jsonList.add(JSONObjectInstrumentation.init(text2));
                    } while (cursor.moveToNext());
                }
            } catch (SQLiteException e) {
                Log.e(TAG, "getAllCacheItems - Failed to open SQL database: " + e.toString());
                return null;
            } catch (JSONException e2) {
                Log.e(TAG, "getAllCacheItems - Failed to parse JSON: " + e2.toString());
                return null;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
            if (db != null) {
                db.close();
            }
        }
    }
}
