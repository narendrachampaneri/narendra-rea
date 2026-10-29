package com.amazon.ags.storage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class SQLiteOfflineEventStorage extends SQLiteOpenHelper implements OfflineEventStorage {
    private static final int DATABASE_VERSION = 2;
    private static final String PRIMARY_KEY_NAME = "id";
    private static final String TABLE_NAME = "events";
    private static final String TAG = "GC_" + SQLiteOfflineEventStorage.class.getSimpleName();
    private static final String TEXT_KEY_NAME = "text";
    private final StringObfuscator obfuscator;

    public SQLiteOfflineEventStorage(Context context, StringObfuscator obfuscator, String databaseName) {
        super(context, databaseName, (SQLiteDatabase.CursorFactory) null, 2);
        this.obfuscator = obfuscator;
    }

    @Override // com.amazon.ags.storage.OfflineEventStorage
    public final synchronized OfflineEventId storeEvent(JSONObject event) throws OfflineEventException {
        OfflineEventId offlineEventId;
        SQLiteDatabase db = null;
        Cursor cursor = null;
        try {
            try {
                try {
                    try {
                        SQLiteDatabase db2 = getWritableDatabase();
                        String eventString = !(event instanceof JSONObject) ? event.toString() : JSONObjectInstrumentation.toString(event);
                        if (this.obfuscator != null && (eventString = this.obfuscator.obfuscate(eventString)) == null) {
                            Log.e(TAG, "Failed to obfuscate text: " + eventString);
                            throw new OfflineEventException("Failed to obfuscate text.");
                        }
                        Log.d(TAG, "Storing event: " + eventString);
                        ContentValues values = new ContentValues();
                        values.put("text", eventString);
                        long rowId = !(db2 instanceof SQLiteDatabase) ? db2.insert("events", null, values) : SQLiteInstrumentation.insert(db2, "events", null, values);
                        if (rowId == -1) {
                            Log.e(TAG, "Failed to store event in database.");
                            throw new OfflineEventException("Failed to store event to database.");
                        }
                        String[] strArr = {"id"};
                        String str = "rowid = " + rowId;
                        Cursor cursor2 = !(db2 instanceof SQLiteDatabase) ? db2.query("events", strArr, str, null, null, null, null) : SQLiteInstrumentation.query(db2, "events", strArr, str, null, null, null, null);
                        if (cursor2 != null && cursor2.moveToFirst()) {
                            long id = cursor2.getLong(0);
                            offlineEventId = new OfflineEventId(id);
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            if (db2 != null) {
                                db2.close();
                            }
                        } else {
                            Log.e(TAG, "Failed to get cursor to inserted item");
                            throw new OfflineEventException("Failed to get cursor to inserted item");
                        }
                    } catch (SQLiteException e) {
                        Log.e(TAG, "Failed to open SQL database.");
                        throw new OfflineEventException(e);
                    }
                } catch (IllegalStateException e2) {
                    Log.e(TAG, "SQL database is in an invalid state: " + e2.toString());
                    throw new OfflineEventException(e2);
                }
            } catch (Throwable throwable) {
                Log.e(TAG, "Unexepected error/exception: " + throwable.toString());
                throw new OfflineEventException(throwable);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            if (0 != 0) {
                db.close();
            }
            throw th;
        }
        return offlineEventId;
    }

    @Override // com.amazon.ags.storage.OfflineEventStorage
    public final synchronized void removeEvent(OfflineEventId id) {
        SQLiteDatabase db = null;
        try {
            try {
                try {
                    Log.d(TAG, "Removing event: " + id.getId());
                    SQLiteDatabase db2 = getWritableDatabase();
                    String str = "id=" + id.getId();
                    if (db2 instanceof SQLiteDatabase) {
                        SQLiteInstrumentation.delete(db2, "events", str, null);
                    } else {
                        db2.delete("events", str, null);
                    }
                    if (db2 != null) {
                        db2.close();
                    }
                } catch (SQLiteException e) {
                    Log.e(TAG, "Failed to open SQL database: " + e.toString());
                    if (0 != 0) {
                        db.close();
                    }
                }
            } catch (IllegalStateException e2) {
                Log.e(TAG, "SQL database is in an invalid state: " + e2.toString());
                if (0 != 0) {
                    db.close();
                }
            } catch (Throwable throwable) {
                Log.e(TAG, "Unexepected error/exception: " + throwable.toString());
                if (0 != 0) {
                    db.close();
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                db.close();
            }
            throw th;
        }
    }

    @Override // com.amazon.ags.storage.OfflineEventStorage
    public final synchronized OfflineEventId peekEvent() {
        OfflineEventId offlineEventId;
        SQLiteDatabase db = null;
        Cursor cursor = null;
        try {
            try {
                try {
                    SQLiteDatabase db2 = getWritableDatabase();
                    Cursor cursor2 = !(db2 instanceof SQLiteDatabase) ? db2.rawQuery("SELECT MIN(id) FROM events", null) : SQLiteInstrumentation.rawQuery(db2, "SELECT MIN(id) FROM events", null);
                    if (cursor2 == null || !cursor2.moveToFirst()) {
                        offlineEventId = OfflineEventId.Invalid;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        if (db2 != null) {
                            db2.close();
                        }
                    } else {
                        long id = cursor2.getLong(0);
                        if (id == 0) {
                            offlineEventId = OfflineEventId.Invalid;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            if (db2 != null) {
                                db2.close();
                            }
                        } else {
                            offlineEventId = new OfflineEventId(id);
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            if (db2 != null) {
                                db2.close();
                            }
                        }
                    }
                } catch (SQLiteException e) {
                    Log.e(TAG, "Failed to open SQL database: " + e.toString());
                    offlineEventId = OfflineEventId.Invalid;
                    if (0 != 0) {
                        cursor.close();
                    }
                    if (0 != 0) {
                        db.close();
                    }
                }
            } catch (IllegalStateException e2) {
                Log.e(TAG, "SQL database is in an invalid state: " + e2.toString());
                offlineEventId = OfflineEventId.Invalid;
                if (0 != 0) {
                    cursor.close();
                }
                if (0 != 0) {
                    db.close();
                }
            } catch (Throwable throwable) {
                Log.e(TAG, "Unexepected error/exception: " + throwable.toString());
                offlineEventId = OfflineEventId.Invalid;
                if (0 != 0) {
                    cursor.close();
                }
                if (0 != 0) {
                    db.close();
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            if (0 != 0) {
                db.close();
            }
            throw th;
        }
        return offlineEventId;
    }

    @Override // com.amazon.ags.storage.OfflineEventStorage
    public final synchronized JSONObject getEvent(OfflineEventId id) throws OfflineEventException {
        JSONObject jSONObjectInit;
        SQLiteDatabase db = null;
        Cursor cursor = null;
        try {
            try {
                try {
                    try {
                        Log.d(TAG, "getEvent() event id: " + id.getId());
                        SQLiteDatabase db2 = getWritableDatabase();
                        String[] strArr = {"text"};
                        String str = "id = " + id.getId();
                        Cursor cursor2 = !(db2 instanceof SQLiteDatabase) ? db2.query("events", strArr, str, null, null, null, null) : SQLiteInstrumentation.query(db2, "events", strArr, str, null, null, null, null);
                        if (cursor2 != null && cursor2.moveToFirst()) {
                            String text = cursor2.getString(0);
                            if (this.obfuscator != null && (text = this.obfuscator.unobfuscate(text)) == null) {
                                Log.e(TAG, "Failed to unobfuscate text.");
                                throw new OfflineEventException("Failed to unobfuscate text.");
                            }
                            jSONObjectInit = JSONObjectInstrumentation.init(text);
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            if (db2 != null) {
                                db2.close();
                            }
                        } else {
                            throw new OfflineEventException("Failed to get text for id: " + id.getId());
                        }
                    } catch (SQLiteException e) {
                        Log.e(TAG, "Failed to open SQL database: " + e.toString());
                        throw new OfflineEventException(e);
                    }
                } catch (IllegalStateException e2) {
                    Log.e(TAG, "SQL database is in an invalid state: " + e2.toString());
                    throw new OfflineEventException(e2);
                }
            } catch (JSONException e3) {
                Log.e(TAG, "Failed to parse JSON: " + e3.toString());
                throw new OfflineEventException(e3);
            } catch (Throwable throwable) {
                Log.e(TAG, "Unexepected error/exception: " + throwable.toString());
                throw new OfflineEventException(throwable);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            if (0 != 0) {
                db.close();
            }
            throw th;
        }
        return jSONObjectInit;
    }

    @Override // com.amazon.ags.storage.OfflineEventStorage
    public final synchronized List<OfflineEventStorage.OfflineEventJSONTuple> getAllEvents() throws Throwable {
        SQLiteDatabase db = null;
        Cursor cursor = null;
        try {
            try {
                List<OfflineEventStorage.OfflineEventJSONTuple> eventsList = new ArrayList<>();
                try {
                    db = getReadableDatabase();
                    cursor = !(db instanceof SQLiteDatabase) ? db.rawQuery("SELECT * FROM events", null) : SQLiteInstrumentation.rawQuery(db, "SELECT * FROM events", null);
                    if (cursor != null && cursor.moveToFirst() && this.obfuscator != null) {
                        do {
                            long eventId = cursor.getLong(0);
                            String text = this.obfuscator.unobfuscate(cursor.getString(1));
                            if (text == null) {
                                Log.e(TAG, "Failed to unobfuscate text.");
                                throw new OfflineEventException("Failed to unobfuscate text.");
                            }
                            Log.d(TAG, "GT: eventId: " + eventId + ", text: " + text);
                            eventsList.add(new OfflineEventStorage.OfflineEventJSONTuple(new OfflineEventId(eventId), JSONObjectInstrumentation.init(text)));
                        } while (cursor.moveToNext());
                    }
                    if (cursor != null) {
                        try {
                            cursor.close();
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                    if (db != null) {
                        db.close();
                    }
                    return eventsList;
                } catch (SQLiteException e) {
                    e = e;
                    Log.e(TAG, "Failed to open SQL database: " + e.toString());
                    throw new OfflineEventException(e);
                } catch (IllegalStateException e2) {
                    e = e2;
                    Log.e(TAG, "SQL database is in an invalid state: " + e.toString());
                    throw new OfflineEventException(e);
                } catch (JSONException e3) {
                    e = e3;
                    Log.e(TAG, "Failed to parse JSON: " + e.toString());
                    throw new OfflineEventException(e);
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        try {
                            cursor.close();
                        } catch (Throwable th3) {
                            th = th3;
                            throw th;
                        }
                    }
                    if (db != null) {
                        db.close();
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (SQLiteException e4) {
            e = e4;
        } catch (IllegalStateException e5) {
            e = e5;
        } catch (JSONException e6) {
            e = e6;
        } catch (Throwable th5) {
            throwable = th5;
        }
    }

    @Override // com.amazon.ags.storage.OfflineEventStorage
    public final synchronized int getSize() {
        int count;
        SQLiteDatabase db = null;
        Cursor cursor = null;
        try {
            try {
                try {
                    try {
                        db = getReadableDatabase();
                        cursor = !(db instanceof SQLiteDatabase) ? db.rawQuery("SELECT * FROM events", null) : SQLiteInstrumentation.rawQuery(db, "SELECT * FROM events", null);
                        count = cursor.getCount();
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (db != null) {
                            db.close();
                        }
                    } catch (Throwable throwable) {
                        Log.e(TAG, "Unexepected error/exception: " + throwable.toString());
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (db != null) {
                            db.close();
                        }
                        count = -1;
                    }
                } catch (IllegalStateException e) {
                    Log.e(TAG, "SQL database is in an invalid state: " + e.toString());
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (db != null) {
                        db.close();
                    }
                    count = -1;
                }
            } catch (SQLiteException e2) {
                Log.e(TAG, "Failed to open SQL database: " + e2.toString());
                if (cursor != null) {
                    cursor.close();
                }
                if (db != null) {
                    db.close();
                }
                count = -1;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            if (0 != 0) {
                db.close();
            }
            throw th;
        }
        return count;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase db) {
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE TABLE events(id INTEGER PRIMARY KEY AUTOINCREMENT, text TEXT)");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE TABLE events(id INTEGER PRIMARY KEY AUTOINCREMENT, text TEXT)");
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("DROP TABLE IF EXISTS events");
        } else {
            SQLiteInstrumentation.execSQL(db, "DROP TABLE IF EXISTS events");
        }
        onCreate(db);
    }

    @Override // com.amazon.ags.storage.OfflineEventStorage
    public final synchronized void removeAllEvents() {
        SQLiteDatabase db = null;
        try {
            try {
                Log.d(TAG, "Removing all events");
                SQLiteDatabase db2 = getWritableDatabase();
                if (!(db2 instanceof SQLiteDatabase)) {
                    db2.execSQL("DELETE FROM events");
                } else {
                    SQLiteInstrumentation.execSQL(db2, "DELETE FROM events");
                }
                if (db2 != null) {
                    db2.close();
                }
            } catch (SQLiteException e) {
                Log.e(TAG, "Failed to open SQL database: " + e.toString());
                if (0 != 0) {
                    db.close();
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                db.close();
            }
            throw th;
        }
    }
}
