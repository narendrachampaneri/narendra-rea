package com.google.android.gms.ads.internal.purchase;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.gms.internal.zzhb;
import com.google.android.gms.internal.zzin;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
@zzhb
public class zzh {
    private static zzh zzFX;
    private final zza zzFW;
    private static final String zzFV = String.format(Locale.US, "CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)", "InAppPurchase", "purchase_id", "product_id", "developer_payload", "record_time");
    private static final Object zzpV = new Object();

    public class zza extends SQLiteOpenHelper {
        public zza(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 4);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase db) {
            String str = zzh.zzFV;
            if (db instanceof SQLiteDatabase) {
                SQLiteInstrumentation.execSQL(db, str);
            } else {
                db.execSQL(str);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            zzin.zzaJ("Database updated from version " + oldVersion + " to version " + newVersion);
            if (db instanceof SQLiteDatabase) {
                SQLiteInstrumentation.execSQL(db, "DROP TABLE IF EXISTS InAppPurchase");
            } else {
                db.execSQL("DROP TABLE IF EXISTS InAppPurchase");
            }
            onCreate(db);
        }
    }

    zzh(Context context) {
        this.zzFW = new zza(context, "google_inapp_purchase.db");
    }

    public static zzh zzy(Context context) {
        zzh zzhVar;
        synchronized (zzpV) {
            if (zzFX == null) {
                zzFX = new zzh(context);
            }
            zzhVar = zzFX;
        }
        return zzhVar;
    }

    public int getRecordCount() {
        Cursor cursorRawQuery = null;
        synchronized (zzpV) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            try {
                if (writableDatabase == null) {
                    return 0;
                }
                try {
                    cursorRawQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.rawQuery("select count(*) from InAppPurchase", null) : SQLiteInstrumentation.rawQuery(writableDatabase, "select count(*) from InAppPurchase", null);
                    if (cursorRawQuery.moveToFirst()) {
                        int i = cursorRawQuery.getInt(0);
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        return i;
                    }
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                } catch (SQLiteException e) {
                    zzin.zzaK("Error getting record count" + e.getMessage());
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                }
                return 0;
            } catch (Throwable th) {
                if (0 != 0) {
                    cursorRawQuery.close();
                }
                throw th;
            }
        }
    }

    public SQLiteDatabase getWritableDatabase() {
        try {
            return this.zzFW.getWritableDatabase();
        } catch (SQLiteException e) {
            zzin.zzaK("Error opening writable conversion tracking database");
            return null;
        }
    }

    public zzf zza(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        return new zzf(cursor.getLong(0), cursor.getString(1), cursor.getString(2));
    }

    public void zza(zzf zzfVar) {
        if (zzfVar == null) {
            return;
        }
        synchronized (zzpV) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return;
            }
            String str = String.format(Locale.US, "%s = %d", "purchase_id", Long.valueOf(zzfVar.zzFP));
            if (writableDatabase instanceof SQLiteDatabase) {
                SQLiteInstrumentation.delete(writableDatabase, "InAppPurchase", str, null);
            } else {
                writableDatabase.delete("InAppPurchase", str, null);
            }
        }
    }

    public void zzb(zzf zzfVar) {
        if (zzfVar == null) {
            return;
        }
        synchronized (zzpV) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("product_id", zzfVar.zzFR);
            contentValues.put("developer_payload", zzfVar.zzFQ);
            contentValues.put("record_time", Long.valueOf(SystemClock.elapsedRealtime()));
            zzfVar.zzFP = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.insert("InAppPurchase", null, contentValues) : SQLiteInstrumentation.insert(writableDatabase, "InAppPurchase", null, contentValues);
            if (getRecordCount() > HlsChunkSource.DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS) {
                zzfY();
            }
        }
    }

    public void zzfY() {
        Cursor cursorQuery;
        Cursor cursor = null;
        synchronized (zzpV) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            try {
                if (writableDatabase == null) {
                    return;
                }
                try {
                    cursorQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.query("InAppPurchase", null, null, null, null, null, "record_time ASC", "1") : SQLiteInstrumentation.query(writableDatabase, "InAppPurchase", null, null, null, null, null, "record_time ASC", "1");
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.moveToFirst()) {
                                zza(zza(cursorQuery));
                            }
                        } catch (SQLiteException e) {
                            e = e;
                            zzin.zzaK("Error remove oldest record" + e.getMessage());
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    cursorQuery = null;
                } catch (Throwable th) {
                    th = th;
                    if (0 != 0) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x007b A[Catch: all -> 0x0074, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0004, B:6:0x000f, B:9:0x0012, B:11:0x0018, B:21:0x0045, B:22:0x0048, B:37:0x007b, B:38:0x007e, B:30:0x0070), top: B:43:0x0004 }] */
    public List<zzf> zzg(long j) {
        Cursor cursorQuery;
        synchronized (zzpV) {
            LinkedList linkedList = new LinkedList();
            if (j <= 0) {
                return linkedList;
            }
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return linkedList;
            }
            try {
                String strValueOf = String.valueOf(j);
                cursorQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.query("InAppPurchase", null, null, null, null, null, "record_time ASC", strValueOf) : SQLiteInstrumentation.query(writableDatabase, "InAppPurchase", null, null, null, null, null, "record_time ASC", strValueOf);
                try {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            do {
                                linkedList.add(zza(cursorQuery));
                            } while (cursorQuery.moveToNext());
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                    } catch (SQLiteException e) {
                        e = e;
                        zzin.zzaK("Error extracing purchase info: " + e.getMessage());
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursorQuery = null;
            } catch (Throwable th2) {
                th = th2;
                cursorQuery = null;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
            return linkedList;
        }
    }
}
