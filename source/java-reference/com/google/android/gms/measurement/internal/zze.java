package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Pair;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.amazon.identity.auth.device.endpoint.AbstractOauthTokenRequest;
import com.amazon.identity.auth.device.endpoint.AbstractTokenRequest;
import com.amazon.insights.delivery.DefaultDeliveryClient;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.android.gms.internal.zzpz;
import com.google.android.gms.internal.zzqb;
import com.google.android.gms.internal.zzsm;
import com.google.android.gms.internal.zzsn;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class zze extends zzz {
    private static final Map<String, String> zzaVB = new ArrayMap(13);
    private final zzc zzaVC;
    private final zzaf zzaVD;

    public static class zza {
        long zzaVE;
        long zzaVF;
        long zzaVG;
    }

    interface zzb {
        boolean zza(long j, zzqb.zzb zzbVar);

        void zzc(zzqb.zze zzeVar);
    }

    private class zzc extends SQLiteOpenHelper {
        zzc(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        }

        @WorkerThread
        private void zza(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, Map<String, String> map) throws SQLiteException {
            if (!zza(sQLiteDatabase, str)) {
                if (sQLiteDatabase instanceof SQLiteDatabase) {
                    SQLiteInstrumentation.execSQL(sQLiteDatabase, str2);
                } else {
                    sQLiteDatabase.execSQL(str2);
                }
            }
            try {
                zza(sQLiteDatabase, str, str3, map);
            } catch (SQLiteException e) {
                zze.this.zzAo().zzCE().zzj("Failed to verify columns on table that was just created", str);
                throw e;
            }
        }

        @WorkerThread
        private void zza(SQLiteDatabase sQLiteDatabase, String str, String str2, Map<String, String> map) throws SQLiteException {
            Set<String> setZzb = zzb(sQLiteDatabase, str);
            for (String str3 : str2.split(AppInfo.DELIM)) {
                if (!setZzb.remove(str3)) {
                    throw new SQLiteException("Table " + str + " is missing required column: " + str3);
                }
            }
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    if (!setZzb.remove(entry.getKey())) {
                        String value = entry.getValue();
                        if (sQLiteDatabase instanceof SQLiteDatabase) {
                            SQLiteInstrumentation.execSQL(sQLiteDatabase, value);
                        } else {
                            sQLiteDatabase.execSQL(value);
                        }
                    }
                }
            }
            if (!setZzb.isEmpty()) {
                throw new SQLiteException("Table " + str + " table has extra columns");
            }
        }

        /* JADX WARN: Code duplicated, block: B:20:0x004e  */
        @WorkerThread
        private boolean zza(SQLiteDatabase sQLiteDatabase, String str) throws Throwable {
            Cursor cursorQuery;
            boolean zMoveToFirst;
            Cursor cursor = null;
            try {
                try {
                    String[] strArr = {AnalyticAttribute.EVENT_NAME_ATTRIBUTE};
                    String[] strArr2 = {str};
                    cursorQuery = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.query("SQLITE_MASTER", strArr, "name=?", strArr2, null, null, null) : SQLiteInstrumentation.query(sQLiteDatabase, "SQLITE_MASTER", strArr, "name=?", strArr2, null, null, null);
                    try {
                        zMoveToFirst = cursorQuery.moveToFirst();
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                    } catch (SQLiteException e) {
                        e = e;
                        zze.this.zzAo().zzCF().zze("Error querying for table", str, e);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        zMoveToFirst = false;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursorQuery = null;
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
            return zMoveToFirst;
        }

        @WorkerThread
        private Set<String> zzb(SQLiteDatabase sQLiteDatabase, String str) {
            HashSet hashSet = new HashSet();
            String str2 = "SELECT * FROM " + str + " LIMIT 0";
            Cursor cursorRawQuery = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.rawQuery(str2, null) : SQLiteInstrumentation.rawQuery(sQLiteDatabase, str2, null);
            try {
                Collections.addAll(hashSet, cursorRawQuery.getColumnNames());
                return hashSet;
            } finally {
                cursorRawQuery.close();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        @WorkerThread
        public SQLiteDatabase getWritableDatabase() {
            if (!zze.this.zzaVD.zzv(zze.this.zzCp().zzBN())) {
                throw new SQLiteException("Database open failed");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e) {
                zze.this.zzaVD.start();
                zze.this.zzAo().zzCE().zzfg("Opening the database failed, dropping and recreating it");
                zze.this.getContext().getDatabasePath(zze.this.zzjQ()).delete();
                try {
                    SQLiteDatabase writableDatabase = super.getWritableDatabase();
                    zze.this.zzaVD.clear();
                    return writableDatabase;
                } catch (SQLiteException e2) {
                    zze.this.zzAo().zzCE().zzj("Failed to open freshly created database", e2);
                    throw e2;
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        @WorkerThread
        public void onCreate(SQLiteDatabase database) {
            if (Build.VERSION.SDK_INT >= 9) {
                File file = new File(database.getPath());
                file.setReadable(false, false);
                file.setWritable(false, false);
                file.setReadable(true, true);
                file.setWritable(true, true);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        @WorkerThread
        public void onOpen(SQLiteDatabase database) {
            if (Build.VERSION.SDK_INT < 15) {
                Cursor cursorRawQuery = !(database instanceof SQLiteDatabase) ? database.rawQuery("PRAGMA journal_mode=memory", null) : SQLiteInstrumentation.rawQuery(database, "PRAGMA journal_mode=memory", null);
                try {
                    cursorRawQuery.moveToFirst();
                    cursorRawQuery.close();
                } catch (Throwable th) {
                    cursorRawQuery.close();
                    throw th;
                }
            }
            zza(database, DefaultDeliveryClient.EVENTS_DIRECTORY, "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp", null);
            zza(database, "user_attributes", "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,set_timestamp,value", null);
            zza(database, "apps", "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;", "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp", zze.zzaVB);
            zza(database, "queue", "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,bundle_end_timestamp,data", null);
            zza(database, "raw_events_metadata", "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));", "app_id,metadata_fingerprint,metadata", null);
            zza(database, "raw_events", "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,name,timestamp,metadata_fingerprint,data", null);
            zza(database, "event_filters", "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));", "app_id,audience_id,filter_id,event_name,data", null);
            zza(database, "property_filters", "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));", "app_id,audience_id,filter_id,property_name,data", null);
            zza(database, "audience_filter_values", "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));", "app_id,audience_id,current_results", null);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        @WorkerThread
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        }
    }

    static {
        zzaVB.put(AbstractTokenRequest.APP_VERSION, "ALTER TABLE apps ADD COLUMN app_version TEXT;");
        zzaVB.put("app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;");
        zzaVB.put("gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;");
        zzaVB.put("dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;");
        zzaVB.put("measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;");
        zzaVB.put("last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;");
        zzaVB.put("day", "ALTER TABLE apps ADD COLUMN day INTEGER;");
        zzaVB.put("daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;");
        zzaVB.put("daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;");
        zzaVB.put("daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;");
        zzaVB.put("remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;");
        zzaVB.put("config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;");
        zzaVB.put("failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;");
    }

    zze(zzw zzwVar) {
        super(zzwVar);
        this.zzaVD = new zzaf(zzjl());
        this.zzaVC = new zzc(getContext(), zzjQ());
    }

    private boolean zzCw() {
        return getContext().getDatabasePath(zzjQ()).exists();
    }

    @WorkerThread
    @TargetApi(11)
    static int zza(Cursor cursor, int i) {
        if (Build.VERSION.SDK_INT >= 11) {
            return cursor.getType(i);
        }
        CursorWindow window = ((SQLiteCursor) cursor).getWindow();
        int position = cursor.getPosition();
        if (window.isNull(position, i)) {
            return 0;
        }
        if (window.isLong(position, i)) {
            return 1;
        }
        if (window.isFloat(position, i)) {
            return 2;
        }
        if (window.isString(position, i)) {
            return 3;
        }
        return window.isBlob(position, i) ? 4 : -1;
    }

    @WorkerThread
    private long zza(String str, String[] strArr, long j) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.rawQuery(str, strArr) : SQLiteInstrumentation.rawQuery(writableDatabase, str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    j = cursorRawQuery.getLong(0);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                } else if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                zzAo().zzCE().zze("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    @WorkerThread
    private void zza(String str, zzpz.zza zzaVar) {
        boolean z = false;
        zzjv();
        zzjk();
        com.google.android.gms.common.internal.zzx.zzcM(str);
        com.google.android.gms.common.internal.zzx.zzz(zzaVar);
        com.google.android.gms.common.internal.zzx.zzz(zzaVar.zzaZt);
        com.google.android.gms.common.internal.zzx.zzz(zzaVar.zzaZs);
        if (zzaVar.zzaZr == null) {
            zzAo().zzCF().zzfg("Audience with no ID");
            return;
        }
        int iIntValue = zzaVar.zzaZr.intValue();
        for (zzpz.zzb zzbVar : zzaVar.zzaZt) {
            if (zzbVar.zzaZv == null) {
                zzAo().zzCF().zze("Event filter with no ID. Audience definition ignored. appId, audienceId", str, zzaVar.zzaZr);
                return;
            }
        }
        for (zzpz.zze zzeVar : zzaVar.zzaZs) {
            if (zzeVar.zzaZv == null) {
                zzAo().zzCF().zze("Property filter with no ID. Audience definition ignored. appId, audienceId", str, zzaVar.zzaZr);
                return;
            }
        }
        boolean z2 = true;
        for (zzpz.zzb zzbVar2 : zzaVar.zzaZt) {
            if (!zza(str, iIntValue, zzbVar2)) {
                z2 = false;
                break;
            }
        }
        if (!z2) {
            z = z2;
            break;
        }
        zzpz.zze[] zzeVarArr = zzaVar.zzaZs;
        int length = zzeVarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = z2;
                break;
            } else if (!zza(str, iIntValue, zzeVarArr[i])) {
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        zzB(str, iIntValue);
    }

    @WorkerThread
    private boolean zza(String str, int i, zzpz.zzb zzbVar) {
        zzjv();
        zzjk();
        com.google.android.gms.common.internal.zzx.zzcM(str);
        com.google.android.gms.common.internal.zzx.zzz(zzbVar);
        if (TextUtils.isEmpty(zzbVar.zzaZw)) {
            zzAo().zzCF().zze("Event filter had no event name. Audience definition ignored. audienceId, filterId", Integer.valueOf(i), String.valueOf(zzbVar.zzaZv));
            return false;
        }
        try {
            byte[] bArr = new byte[zzbVar.getSerializedSize()];
            zzsn zzsnVarZzE = zzsn.zzE(bArr);
            zzbVar.writeTo(zzsnVarZzE);
            zzsnVarZzE.zzJo();
            ContentValues contentValues = new ContentValues();
            contentValues.put(AbstractOauthTokenRequest.APP_APP_ID_PARAM, str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", zzbVar.zzaZv);
            contentValues.put("event_name", zzbVar.zzaZw);
            contentValues.put(IMBrowserActivity.EXPANDDATA, bArr);
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                if ((!(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.insertWithOnConflict("event_filters", null, contentValues, 5) : SQLiteInstrumentation.insertWithOnConflict(writableDatabase, "event_filters", null, contentValues, 5)) == -1) {
                    zzAo().zzCE().zzfg("Failed to insert event filter (got -1)");
                }
                return true;
            } catch (SQLiteException e) {
                zzAo().zzCE().zzj("Error storing event filter", e);
                return false;
            }
        } catch (IOException e2) {
            zzAo().zzCE().zzj("Configuration loss. Failed to serialize event filter", e2);
            return false;
        }
    }

    @WorkerThread
    private boolean zza(String str, int i, zzpz.zze zzeVar) {
        zzjv();
        zzjk();
        com.google.android.gms.common.internal.zzx.zzcM(str);
        com.google.android.gms.common.internal.zzx.zzz(zzeVar);
        if (TextUtils.isEmpty(zzeVar.zzaZL)) {
            zzAo().zzCF().zze("Property filter had no property name. Audience definition ignored. audienceId, filterId", Integer.valueOf(i), String.valueOf(zzeVar.zzaZv));
            return false;
        }
        try {
            byte[] bArr = new byte[zzeVar.getSerializedSize()];
            zzsn zzsnVarZzE = zzsn.zzE(bArr);
            zzeVar.writeTo(zzsnVarZzE);
            zzsnVarZzE.zzJo();
            ContentValues contentValues = new ContentValues();
            contentValues.put(AbstractOauthTokenRequest.APP_APP_ID_PARAM, str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", zzeVar.zzaZv);
            contentValues.put("property_name", zzeVar.zzaZL);
            contentValues.put(IMBrowserActivity.EXPANDDATA, bArr);
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                if ((!(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.insertWithOnConflict("property_filters", null, contentValues, 5) : SQLiteInstrumentation.insertWithOnConflict(writableDatabase, "property_filters", null, contentValues, 5)) != -1) {
                    return true;
                }
                zzAo().zzCE().zzfg("Failed to insert property filter (got -1)");
                return false;
            } catch (SQLiteException e) {
                zzAo().zzCE().zzj("Error storing property filter", e);
                return false;
            }
        } catch (IOException e2) {
            zzAo().zzCE().zzj("Configuration loss. Failed to serialize property filter", e2);
            return false;
        }
    }

    @WorkerThread
    private long zzb(String str, String[] strArr) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.rawQuery(str, strArr) : SQLiteInstrumentation.rawQuery(writableDatabase, str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = cursorRawQuery.getLong(0);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                zzAo().zzCE().zze("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String zzjQ() {
        if (zzCp().zzkr() && !zzCp().zzks()) {
            zzAo().zzCG().zzfg("Using secondary database");
            return zzCp().zzkS();
        }
        return zzCp().zzkR();
    }

    @WorkerThread
    public void beginTransaction() {
        zzjv();
        getWritableDatabase().beginTransaction();
    }

    @WorkerThread
    public void endTransaction() {
        zzjv();
        getWritableDatabase().endTransaction();
    }

    @WorkerThread
    SQLiteDatabase getWritableDatabase() {
        zzjk();
        try {
            return this.zzaVC.getWritableDatabase();
        } catch (SQLiteException e) {
            zzAo().zzCF().zzj("Error opening database", e);
            throw e;
        }
    }

    @WorkerThread
    public void setTransactionSuccessful() {
        zzjv();
        getWritableDatabase().setTransactionSuccessful();
    }

    @WorkerThread
    public void zzA(String str, int i) {
        com.google.android.gms.common.internal.zzx.zzcM(str);
        zzjk();
        zzjv();
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr = {str, str, String.valueOf(i)};
            if (writableDatabase instanceof SQLiteDatabase) {
                SQLiteInstrumentation.execSQL(writableDatabase, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);", strArr);
            } else {
                writableDatabase.execSQL("delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);", strArr);
            }
        } catch (SQLiteException e) {
            zzAo().zzCE().zze("Error pruning currencies", str, e);
        }
    }

    void zzB(String str, int i) {
        zzjv();
        zzjk();
        com.google.android.gms.common.internal.zzx.zzcM(str);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String[] strArr = {str, String.valueOf(i)};
        if (writableDatabase instanceof SQLiteDatabase) {
            SQLiteInstrumentation.delete(writableDatabase, "property_filters", "app_id=? and audience_id=?", strArr);
        } else {
            writableDatabase.delete("property_filters", "app_id=? and audience_id=?", strArr);
        }
        String[] strArr2 = {str, String.valueOf(i)};
        if (writableDatabase instanceof SQLiteDatabase) {
            SQLiteInstrumentation.delete(writableDatabase, "event_filters", "app_id=? and audience_id=?", strArr2);
        } else {
            writableDatabase.delete("event_filters", "app_id=? and audience_id=?", strArr2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0085  */
    zzqb.zzf zzC(String str, int i) {
        Cursor cursorQuery;
        Cursor cursor = null;
        zzjv();
        zzjk();
        com.google.android.gms.common.internal.zzx.zzcM(str);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            try {
                String[] strArr = {"current_results"};
                String[] strArr2 = {str, String.valueOf(i)};
                cursorQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.query("audience_filter_values", strArr, "app_id=? AND audience_id=?", strArr2, null, null, null) : SQLiteInstrumentation.query(writableDatabase, "audience_filter_values", strArr, "app_id=? AND audience_id=?", strArr2, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    zzsm zzsmVarZzD = zzsm.zzD(cursorQuery.getBlob(0));
                    zzqb.zzf zzfVar = new zzqb.zzf();
                    try {
                        zzfVar.mergeFrom(zzsmVarZzD);
                    } catch (IOException e) {
                        zzAo().zzCE().zze("Failed to merge filter results", str, e);
                    }
                    if (cursorQuery == null) {
                        return zzfVar;
                    }
                    cursorQuery.close();
                    return zzfVar;
                } catch (SQLiteException e2) {
                    e = e2;
                    zzAo().zzCE().zzj("Database error querying filter results", e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    public String zzCq() {
        Cursor cursorRawQuery;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            cursorRawQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.rawQuery("select app_id from queue where app_id not in (select app_id from apps where measurement_enabled=0) order by rowid limit 1;", null) : SQLiteInstrumentation.rawQuery(writableDatabase, "select app_id from queue where app_id not in (select app_id from apps where measurement_enabled=0) order by rowid limit 1;", null);
            try {
                try {
                    if (!cursorRawQuery.moveToFirst()) {
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        return null;
                    }
                    String string = cursorRawQuery.getString(0);
                    if (cursorRawQuery == null) {
                        return string;
                    }
                    cursorRawQuery.close();
                    return string;
                } catch (SQLiteException e) {
                    e = e;
                    zzAo().zzCE().zzj("Database error getting next bundle app id", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorRawQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorRawQuery = null;
        }
        th = th;
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        throw th;
    }

    @WorkerThread
    void zzCr() {
        zzjk();
        zzjv();
        if (zzCw()) {
            long j = zzCo().zzaXm.get();
            long jElapsedRealtime = zzjl().elapsedRealtime();
            if (Math.abs(jElapsedRealtime - j) > zzCp().zzBR()) {
                zzCo().zzaXm.set(jElapsedRealtime);
                zzCs();
            }
        }
    }

    @WorkerThread
    void zzCs() {
        zzjk();
        zzjv();
        if (zzCw()) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr = {String.valueOf(zzjl().currentTimeMillis()), String.valueOf(zzCp().zzBQ())};
            int iDelete = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", strArr) : SQLiteInstrumentation.delete(writableDatabase, "queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", strArr);
            if (iDelete > 0) {
                zzAo().zzCK().zzj("Deleted stale rows. rowsDeleted", Integer.valueOf(iDelete));
            }
        }
    }

    @WorkerThread
    public long zzCt() {
        return zza("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    @WorkerThread
    public long zzCu() {
        return zza("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    public boolean zzCv() {
        return zzb("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0097  */
    @WorkerThread
    public zzi zzI(String str, String str2) {
        Cursor cursor;
        Cursor cursor2 = null;
        com.google.android.gms.common.internal.zzx.zzcM(str);
        com.google.android.gms.common.internal.zzx.zzcM(str2);
        zzjk();
        zzjv();
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr = {"lifetime_count", "current_bundle_count", "last_fire_timestamp"};
            String[] strArr2 = {str, str2};
            Cursor cursorQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.query(DefaultDeliveryClient.EVENTS_DIRECTORY, strArr, "app_id=? and name=?", strArr2, null, null, null) : SQLiteInstrumentation.query(writableDatabase, DefaultDeliveryClient.EVENTS_DIRECTORY, strArr, "app_id=? and name=?", strArr2, null, null, null);
            try {
                if (!cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                zzi zziVar = new zzi(str, str2, cursorQuery.getLong(0), cursorQuery.getLong(1), cursorQuery.getLong(2));
                if (cursorQuery.moveToNext()) {
                    zzAo().zzCE().zzfg("Got multiple records for event aggregates, expected one");
                }
                if (cursorQuery == null) {
                    return zziVar;
                }
                cursorQuery.close();
                return zziVar;
            } catch (SQLiteException e) {
                e = e;
                cursor = cursorQuery;
                try {
                    zzAo().zzCE().zzd("Error querying events", str, str2, e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursorQuery;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @WorkerThread
    public void zzJ(String str, String str2) {
        com.google.android.gms.common.internal.zzx.zzcM(str);
        com.google.android.gms.common.internal.zzx.zzcM(str2);
        zzjk();
        zzjv();
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr = {str, str2};
            zzAo().zzCK().zzj("Deleted user attribute rows:", Integer.valueOf(!(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.delete("user_attributes", "app_id=? and name=?", strArr) : SQLiteInstrumentation.delete(writableDatabase, "user_attributes", "app_id=? and name=?", strArr)));
        } catch (SQLiteException e) {
            zzAo().zzCE().zzd("Error deleting user attribute", str, str2, e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x008d  */
    @WorkerThread
    public zzai zzK(String str, String str2) throws Throwable {
        Cursor cursor;
        Cursor cursor2 = null;
        com.google.android.gms.common.internal.zzx.zzcM(str);
        com.google.android.gms.common.internal.zzx.zzcM(str2);
        zzjk();
        zzjv();
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr = {"set_timestamp", NativeCallKeys.VALUE};
            String[] strArr2 = {str, str2};
            Cursor cursorQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.query("user_attributes", strArr, "app_id=? and name=?", strArr2, null, null, null) : SQLiteInstrumentation.query(writableDatabase, "user_attributes", strArr, "app_id=? and name=?", strArr2, null, null, null);
            try {
                if (!cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                zzai zzaiVar = new zzai(str, str2, cursorQuery.getLong(0), zzb(cursorQuery, 1));
                if (cursorQuery.moveToNext()) {
                    zzAo().zzCE().zzfg("Got multiple records for user property, expected one");
                }
                if (cursorQuery == null) {
                    return zzaiVar;
                }
                cursorQuery.close();
                return zzaiVar;
            } catch (SQLiteException e) {
                e = e;
                cursor = cursorQuery;
                try {
                    zzAo().zzCE().zzd("Error querying user property", str, str2, e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursorQuery;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00b8  */
    Map<Integer, List<zzpz.zzb>> zzL(String str, String str2) {
        Cursor cursorQuery;
        Cursor cursor = null;
        zzjv();
        zzjk();
        com.google.android.gms.common.internal.zzx.zzcM(str);
        com.google.android.gms.common.internal.zzx.zzcM(str2);
        ArrayMap arrayMap = new ArrayMap();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            try {
                String[] strArr = {"audience_id", IMBrowserActivity.EXPANDDATA};
                String[] strArr2 = {str, str2};
                cursorQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.query("event_filters", strArr, "app_id=? AND event_name=?", strArr2, null, null, null) : SQLiteInstrumentation.query(writableDatabase, "event_filters", strArr, "app_id=? AND event_name=?", strArr2, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        Map<Integer, List<zzpz.zzb>> mapEmptyMap = Collections.emptyMap();
                        if (cursorQuery == null) {
                            return mapEmptyMap;
                        }
                        cursorQuery.close();
                        return mapEmptyMap;
                    }
                    do {
                        zzsm zzsmVarZzD = zzsm.zzD(cursorQuery.getBlob(1));
                        zzpz.zzb zzbVar = new zzpz.zzb();
                        try {
                            zzbVar.mergeFrom(zzsmVarZzD);
                            int i = cursorQuery.getInt(0);
                            List arrayList = (List) arrayMap.get(Integer.valueOf(i));
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                arrayMap.put(Integer.valueOf(i), arrayList);
                            }
                            arrayList.add(zzbVar);
                        } catch (IOException e) {
                            zzAo().zzCE().zze("Failed to merge filter", str, e);
                        }
                    } while (cursorQuery.moveToNext());
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayMap;
                } catch (SQLiteException e2) {
                    e = e2;
                    zzAo().zzCE().zzj("Database error querying filters", e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00b8  */
    Map<Integer, List<zzpz.zze>> zzM(String str, String str2) {
        Cursor cursorQuery;
        Cursor cursor = null;
        zzjv();
        zzjk();
        com.google.android.gms.common.internal.zzx.zzcM(str);
        com.google.android.gms.common.internal.zzx.zzcM(str2);
        ArrayMap arrayMap = new ArrayMap();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            try {
                String[] strArr = {"audience_id", IMBrowserActivity.EXPANDDATA};
                String[] strArr2 = {str, str2};
                cursorQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.query("property_filters", strArr, "app_id=? AND property_name=?", strArr2, null, null, null) : SQLiteInstrumentation.query(writableDatabase, "property_filters", strArr, "app_id=? AND property_name=?", strArr2, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        Map<Integer, List<zzpz.zze>> mapEmptyMap = Collections.emptyMap();
                        if (cursorQuery == null) {
                            return mapEmptyMap;
                        }
                        cursorQuery.close();
                        return mapEmptyMap;
                    }
                    do {
                        zzsm zzsmVarZzD = zzsm.zzD(cursorQuery.getBlob(1));
                        zzpz.zze zzeVar = new zzpz.zze();
                        try {
                            zzeVar.mergeFrom(zzsmVarZzD);
                            int i = cursorQuery.getInt(0);
                            List arrayList = (List) arrayMap.get(Integer.valueOf(i));
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                arrayMap.put(Integer.valueOf(i), arrayList);
                            }
                            arrayList.add(zzeVar);
                        } catch (IOException e) {
                            zzAo().zzCE().zze("Failed to merge filter", str, e);
                        }
                    } while (cursorQuery.moveToNext());
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayMap;
                } catch (SQLiteException e2) {
                    e = e2;
                    zzAo().zzCE().zzj("Database error querying filters", e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    public void zzZ(long j) {
        zzjk();
        zzjv();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String[] strArr = {String.valueOf(j)};
        if ((!(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.delete("queue", "rowid=?", strArr) : SQLiteInstrumentation.delete(writableDatabase, "queue", "rowid=?", strArr)) != 1) {
            zzAo().zzCE().zzfg("Deleted fewer rows from queue than expected");
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x012f  */
    @WorkerThread
    public zza zza(long j, String str, boolean z, boolean z2) throws Throwable {
        Cursor cursorQuery;
        com.google.android.gms.common.internal.zzx.zzcM(str);
        zzjk();
        zzjv();
        String[] strArr = {str};
        zza zzaVar = new zza();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                String[] strArr2 = {"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count"};
                String[] strArr3 = {str};
                cursorQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.query("apps", strArr2, "app_id=?", strArr3, null, null, null) : SQLiteInstrumentation.query(writableDatabase, "apps", strArr2, "app_id=?", strArr3, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        zzAo().zzCF().zzj("Not updating daily counts, app is not known", str);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return zzaVar;
                    }
                    if (cursorQuery.getLong(0) == j) {
                        zzaVar.zzaVF = cursorQuery.getLong(1);
                        zzaVar.zzaVE = cursorQuery.getLong(2);
                        zzaVar.zzaVG = cursorQuery.getLong(3);
                    }
                    zzaVar.zzaVF++;
                    if (z) {
                        zzaVar.zzaVE++;
                    }
                    if (z2) {
                        zzaVar.zzaVG++;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("day", Long.valueOf(j));
                    contentValues.put("daily_public_events_count", Long.valueOf(zzaVar.zzaVE));
                    contentValues.put("daily_events_count", Long.valueOf(zzaVar.zzaVF));
                    contentValues.put("daily_conversions_count", Long.valueOf(zzaVar.zzaVG));
                    if (writableDatabase instanceof SQLiteDatabase) {
                        SQLiteInstrumentation.update(writableDatabase, "apps", contentValues, "app_id=?", strArr);
                    } else {
                        writableDatabase.update("apps", contentValues, "app_id=?", strArr);
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return zzaVar;
                } catch (SQLiteException e) {
                    e = e;
                    zzAo().zzCE().zzj("Error updating daily counts", e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return zzaVar;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    void zza(ContentValues contentValues, String str, Object obj) {
        com.google.android.gms.common.internal.zzx.zzcM(str);
        com.google.android.gms.common.internal.zzx.zzz(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else {
            if (!(obj instanceof Float)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put(str, (Float) obj);
        }
    }

    @WorkerThread
    public void zza(zzqb.zze zzeVar) {
        zzjk();
        zzjv();
        com.google.android.gms.common.internal.zzx.zzz(zzeVar);
        com.google.android.gms.common.internal.zzx.zzcM(zzeVar.appId);
        com.google.android.gms.common.internal.zzx.zzz(zzeVar.zzbaq);
        zzCr();
        long jCurrentTimeMillis = zzjl().currentTimeMillis();
        if (zzeVar.zzbaq.longValue() < jCurrentTimeMillis - zzCp().zzBQ() || zzeVar.zzbaq.longValue() > zzCp().zzBQ() + jCurrentTimeMillis) {
            zzAo().zzCF().zze("Storing bundle outside of the max uploading time span. now, timestamp", Long.valueOf(jCurrentTimeMillis), zzeVar.zzbaq);
        }
        try {
            byte[] bArr = new byte[zzeVar.getSerializedSize()];
            zzsn zzsnVarZzE = zzsn.zzE(bArr);
            zzeVar.writeTo(zzsnVarZzE);
            zzsnVarZzE.zzJo();
            byte[] bArrZzg = zzCk().zzg(bArr);
            zzAo().zzCK().zzj("Saving bundle, size", Integer.valueOf(bArrZzg.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put(AbstractOauthTokenRequest.APP_APP_ID_PARAM, zzeVar.appId);
            contentValues.put("bundle_end_timestamp", zzeVar.zzbaq);
            contentValues.put(IMBrowserActivity.EXPANDDATA, bArrZzg);
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                if ((!(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.insert("queue", null, contentValues) : SQLiteInstrumentation.insert(writableDatabase, "queue", null, contentValues)) == -1) {
                    zzAo().zzCE().zzfg("Failed to insert bundle (got -1)");
                }
            } catch (SQLiteException e) {
                zzAo().zzCE().zzj("Error storing bundle", e);
            }
        } catch (IOException e2) {
            zzAo().zzCE().zzj("Data loss. Failed to serialize bundle", e2);
        }
    }

    @WorkerThread
    public void zza(com.google.android.gms.measurement.internal.zza zzaVar) {
        com.google.android.gms.common.internal.zzx.zzz(zzaVar);
        zzjk();
        zzjv();
        ContentValues contentValues = new ContentValues();
        contentValues.put(AbstractOauthTokenRequest.APP_APP_ID_PARAM, zzaVar.zzwK());
        contentValues.put("app_instance_id", zzaVar.zzBj());
        contentValues.put("gmp_app_id", zzaVar.zzBk());
        contentValues.put("resettable_device_id_hash", zzaVar.zzBl());
        contentValues.put("last_bundle_index", Long.valueOf(zzaVar.zzBr()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzaVar.zzBm()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzaVar.zzBn()));
        contentValues.put(AbstractTokenRequest.APP_VERSION, zzaVar.zzli());
        contentValues.put("app_store", zzaVar.zzBo());
        contentValues.put("gmp_version", Long.valueOf(zzaVar.zzBp()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzaVar.zzBq()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzaVar.zzAr()));
        contentValues.put("day", Long.valueOf(zzaVar.zzBv()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzaVar.zzBw()));
        contentValues.put("daily_events_count", Long.valueOf(zzaVar.zzBx()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzaVar.zzBy()));
        contentValues.put("config_fetched_time", Long.valueOf(zzaVar.zzBs()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzaVar.zzBt()));
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if ((!(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.insertWithOnConflict("apps", null, contentValues, 5) : SQLiteInstrumentation.insertWithOnConflict(writableDatabase, "apps", null, contentValues, 5)) == -1) {
                zzAo().zzCE().zzfg("Failed to insert/update app (got -1)");
            }
        } catch (SQLiteException e) {
            zzAo().zzCE().zzj("Error storing app", e);
        }
    }

    public void zza(zzh zzhVar, long j) {
        zzjk();
        zzjv();
        com.google.android.gms.common.internal.zzx.zzz(zzhVar);
        com.google.android.gms.common.internal.zzx.zzcM(zzhVar.zzaUa);
        zzqb.zzb zzbVar = new zzqb.zzb();
        zzbVar.zzbag = Long.valueOf(zzhVar.zzaVN);
        zzbVar.zzbae = new zzqb.zzc[zzhVar.zzaVO.size()];
        int i = 0;
        for (String str : zzhVar.zzaVO) {
            zzqb.zzc zzcVar = new zzqb.zzc();
            zzbVar.zzbae[i] = zzcVar;
            zzcVar.name = str;
            zzCk().zza(zzcVar, zzhVar.zzaVO.get(str));
            i++;
        }
        try {
            byte[] bArr = new byte[zzbVar.getSerializedSize()];
            zzsn zzsnVarZzE = zzsn.zzE(bArr);
            zzbVar.writeTo(zzsnVarZzE);
            zzsnVarZzE.zzJo();
            zzAo().zzCK().zze("Saving event, name, data size", zzhVar.mName, Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put(AbstractOauthTokenRequest.APP_APP_ID_PARAM, zzhVar.zzaUa);
            contentValues.put(AnalyticAttribute.EVENT_NAME_ATTRIBUTE, zzhVar.mName);
            contentValues.put("timestamp", Long.valueOf(zzhVar.zzaez));
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put(IMBrowserActivity.EXPANDDATA, bArr);
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                if ((!(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.insert("raw_events", null, contentValues) : SQLiteInstrumentation.insert(writableDatabase, "raw_events", null, contentValues)) == -1) {
                    zzAo().zzCE().zzfg("Failed to insert raw event (got -1)");
                }
            } catch (SQLiteException e) {
                zzAo().zzCE().zzj("Error storing raw event", e);
            }
        } catch (IOException e2) {
            zzAo().zzCE().zzj("Data loss. Failed to serialize event params/data", e2);
        }
    }

    @WorkerThread
    public void zza(zzi zziVar) {
        com.google.android.gms.common.internal.zzx.zzz(zziVar);
        zzjk();
        zzjv();
        ContentValues contentValues = new ContentValues();
        contentValues.put(AbstractOauthTokenRequest.APP_APP_ID_PARAM, zziVar.zzaUa);
        contentValues.put(AnalyticAttribute.EVENT_NAME_ATTRIBUTE, zziVar.mName);
        contentValues.put("lifetime_count", Long.valueOf(zziVar.zzaVP));
        contentValues.put("current_bundle_count", Long.valueOf(zziVar.zzaVQ));
        contentValues.put("last_fire_timestamp", Long.valueOf(zziVar.zzaVR));
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if ((!(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.insertWithOnConflict(DefaultDeliveryClient.EVENTS_DIRECTORY, null, contentValues, 5) : SQLiteInstrumentation.insertWithOnConflict(writableDatabase, DefaultDeliveryClient.EVENTS_DIRECTORY, null, contentValues, 5)) == -1) {
                zzAo().zzCE().zzfg("Failed to insert/update event aggregates (got -1)");
            }
        } catch (SQLiteException e) {
            zzAo().zzCE().zzj("Error storing event aggregates", e);
        }
    }

    void zza(String str, int i, zzqb.zzf zzfVar) {
        zzjv();
        zzjk();
        com.google.android.gms.common.internal.zzx.zzcM(str);
        com.google.android.gms.common.internal.zzx.zzz(zzfVar);
        try {
            byte[] bArr = new byte[zzfVar.getSerializedSize()];
            zzsn zzsnVarZzE = zzsn.zzE(bArr);
            zzfVar.writeTo(zzsnVarZzE);
            zzsnVarZzE.zzJo();
            ContentValues contentValues = new ContentValues();
            contentValues.put(AbstractOauthTokenRequest.APP_APP_ID_PARAM, str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("current_results", bArr);
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                if ((!(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.insertWithOnConflict("audience_filter_values", null, contentValues, 5) : SQLiteInstrumentation.insertWithOnConflict(writableDatabase, "audience_filter_values", null, contentValues, 5)) == -1) {
                    zzAo().zzCE().zzfg("Failed to insert filter results (got -1)");
                }
            } catch (SQLiteException e) {
                zzAo().zzCE().zzj("Error storing filter results", e);
            }
        } catch (IOException e2) {
            zzAo().zzCE().zzj("Configuration loss. Failed to serialize filter results", e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x01d9: MOVE (r11 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:85:0x01d9 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v3, types: [boolean] */
    public void zza(String str, long j, zzb zzbVar) throws Throwable {
        Cursor cursorQuery;
        ?? IsEmpty;
        Cursor cursor;
        String str2;
        Cursor cursor2;
        com.google.android.gms.common.internal.zzx.zzz(zzbVar);
        zzjk();
        zzjv();
        try {
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                IsEmpty = TextUtils.isEmpty(str);
                try {
                    if (IsEmpty != 0) {
                        String[] strArr = {String.valueOf(j)};
                        Cursor cursorRawQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.rawQuery("select app_id, metadata_fingerprint from raw_events where app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;", strArr) : SQLiteInstrumentation.rawQuery(writableDatabase, "select app_id, metadata_fingerprint from raw_events where app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;", strArr);
                        if (!cursorRawQuery.moveToFirst()) {
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                                return;
                            }
                            return;
                        } else {
                            str = cursorRawQuery.getString(0);
                            String string = cursorRawQuery.getString(1);
                            cursorRawQuery.close();
                            str2 = string;
                            cursor2 = cursorRawQuery;
                        }
                    } else {
                        String[] strArr2 = {str};
                        Cursor cursorRawQuery2 = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.rawQuery("select metadata_fingerprint from raw_events where app_id = ? order by rowid limit 1;", strArr2) : SQLiteInstrumentation.rawQuery(writableDatabase, "select metadata_fingerprint from raw_events where app_id = ? order by rowid limit 1;", strArr2);
                        if (!cursorRawQuery2.moveToFirst()) {
                            if (cursorRawQuery2 != null) {
                                cursorRawQuery2.close();
                                return;
                            }
                            return;
                        } else {
                            String string2 = cursorRawQuery2.getString(0);
                            cursorRawQuery2.close();
                            str2 = string2;
                            cursor2 = cursorRawQuery2;
                        }
                    }
                    try {
                        String[] strArr3 = {TtmlNode.TAG_METADATA};
                        String[] strArr4 = {str, str2};
                        cursorQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.query("raw_events_metadata", strArr3, "app_id=? and metadata_fingerprint=?", strArr4, null, null, "rowid", "2") : SQLiteInstrumentation.query(writableDatabase, "raw_events_metadata", strArr3, "app_id=? and metadata_fingerprint=?", strArr4, null, null, "rowid", "2");
                        try {
                            if (!cursorQuery.moveToFirst()) {
                                zzAo().zzCE().zzfg("Raw event metadata record is missing");
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                    return;
                                }
                                return;
                            }
                            zzsm zzsmVarZzD = zzsm.zzD(cursorQuery.getBlob(0));
                            zzqb.zze zzeVar = new zzqb.zze();
                            try {
                                zzeVar.mergeFrom(zzsmVarZzD);
                                if (cursorQuery.moveToNext()) {
                                    zzAo().zzCF().zzfg("Get multiple raw event metadata records, expected one");
                                }
                                cursorQuery.close();
                                zzbVar.zzc(zzeVar);
                                String[] strArr5 = {"rowid", AnalyticAttribute.EVENT_NAME_ATTRIBUTE, "timestamp", IMBrowserActivity.EXPANDDATA};
                                String[] strArr6 = {str, str2};
                                Cursor cursorQuery2 = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.query("raw_events", strArr5, "app_id=? and metadata_fingerprint=?", strArr6, null, null, "rowid", null) : SQLiteInstrumentation.query(writableDatabase, "raw_events", strArr5, "app_id=? and metadata_fingerprint=?", strArr6, null, null, "rowid", null);
                                if (!cursorQuery2.moveToFirst()) {
                                    zzAo().zzCF().zzfg("Raw event data disappeared while in transaction");
                                    if (cursorQuery2 != null) {
                                        cursorQuery2.close();
                                        return;
                                    }
                                    return;
                                }
                                do {
                                    long j2 = cursorQuery2.getLong(0);
                                    zzsm zzsmVarZzD2 = zzsm.zzD(cursorQuery2.getBlob(3));
                                    zzqb.zzb zzbVar2 = new zzqb.zzb();
                                    try {
                                        zzbVar2.mergeFrom(zzsmVarZzD2);
                                        zzbVar2.name = cursorQuery2.getString(1);
                                        zzbVar2.zzbaf = Long.valueOf(cursorQuery2.getLong(2));
                                        if (!zzbVar.zza(j2, zzbVar2)) {
                                            if (cursorQuery2 != null) {
                                                cursorQuery2.close();
                                                return;
                                            }
                                            return;
                                        }
                                    } catch (IOException e) {
                                        zzAo().zzCE().zze("Data loss. Failed to merge raw event", str, e);
                                    }
                                } while (cursorQuery2.moveToNext());
                                if (cursorQuery2 != null) {
                                    cursorQuery2.close();
                                }
                            } catch (IOException e2) {
                                zzAo().zzCE().zze("Data loss. Failed to merge raw event metadata", str, e2);
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                            }
                        } catch (SQLiteException e3) {
                            e = e3;
                            IsEmpty = cursorQuery;
                            zzAo().zzCE().zzj("Data loss. Error selecting raw event", e);
                            if (IsEmpty != 0) {
                                IsEmpty.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            throw th;
                        }
                    } catch (SQLiteException e4) {
                        e = e4;
                        IsEmpty = cursor2;
                    } catch (Throwable th2) {
                        th = th2;
                        cursorQuery = cursor2;
                    }
                } catch (SQLiteException e5) {
                    e = e5;
                }
            } catch (Throwable th3) {
                th = th3;
                cursorQuery = cursor;
            }
        } catch (SQLiteException e6) {
            e = e6;
            IsEmpty = 0;
        } catch (Throwable th4) {
            th = th4;
            cursorQuery = null;
        }
    }

    @WorkerThread
    public boolean zza(zzai zzaiVar) {
        com.google.android.gms.common.internal.zzx.zzz(zzaiVar);
        zzjk();
        zzjv();
        if (zzK(zzaiVar.zzaUa, zzaiVar.mName) == null) {
            if (zzaj.zzfq(zzaiVar.mName)) {
                if (zzb("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzaiVar.zzaUa}) >= zzCp().zzBL()) {
                    return false;
                }
            } else if (zzb("select count(1) from user_attributes where app_id=?", new String[]{zzaiVar.zzaUa}) >= zzCp().zzBM()) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(AbstractOauthTokenRequest.APP_APP_ID_PARAM, zzaiVar.zzaUa);
        contentValues.put(AnalyticAttribute.EVENT_NAME_ATTRIBUTE, zzaiVar.mName);
        contentValues.put("set_timestamp", Long.valueOf(zzaiVar.zzaZp));
        zza(contentValues, NativeCallKeys.VALUE, zzaiVar.zzNc);
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if ((!(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.insertWithOnConflict("user_attributes", null, contentValues, 5) : SQLiteInstrumentation.insertWithOnConflict(writableDatabase, "user_attributes", null, contentValues, 5)) == -1) {
                zzAo().zzCE().zzfg("Failed to insert/update user property (got -1)");
            }
        } catch (SQLiteException e) {
            zzAo().zzCE().zzj("Error storing user property", e);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005c  */
    /* JADX WARN: Code duplicated, block: B:24:0x005f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0065  */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0038, code lost:
    
        r0 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String zzaa(long j) {
        Cursor cursorRawQuery;
        String string;
        zzjk();
        zzjv();
        try {
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                String[] strArr = {String.valueOf(j)};
                cursorRawQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.rawQuery("select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;", strArr) : SQLiteInstrumentation.rawQuery(writableDatabase, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;", strArr);
                try {
                    if (cursorRawQuery.moveToFirst()) {
                        string = cursorRawQuery.getString(0);
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                    } else {
                        zzAo().zzCK().zzfg("No expired configs for apps with pending events");
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        string = null;
                    }
                } catch (SQLiteException e) {
                    e = e;
                    zzAo().zzCE().zzj("Error selecting expired configs", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                        string = null;
                    } else {
                        string = null;
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorRawQuery = null;
            zzAo().zzCE().zzj("Error selecting expired configs", e);
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
                string = null;
            } else {
                string = null;
            }
        } catch (Throwable th2) {
            th = th2;
            cursorRawQuery = null;
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
        return string;
    }

    public long zzb(zzqb.zze zzeVar) throws IOException {
        zzjk();
        zzjv();
        com.google.android.gms.common.internal.zzx.zzz(zzeVar);
        com.google.android.gms.common.internal.zzx.zzcM(zzeVar.appId);
        try {
            byte[] bArr = new byte[zzeVar.getSerializedSize()];
            zzsn zzsnVarZzE = zzsn.zzE(bArr);
            zzeVar.writeTo(zzsnVarZzE);
            zzsnVarZzE.zzJo();
            long jZzr = zzCk().zzr(bArr);
            ContentValues contentValues = new ContentValues();
            contentValues.put(AbstractOauthTokenRequest.APP_APP_ID_PARAM, zzeVar.appId);
            contentValues.put("metadata_fingerprint", Long.valueOf(jZzr));
            contentValues.put(TtmlNode.TAG_METADATA, bArr);
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                if (writableDatabase instanceof SQLiteDatabase) {
                    SQLiteInstrumentation.insertWithOnConflict(writableDatabase, "raw_events_metadata", null, contentValues, 4);
                } else {
                    writableDatabase.insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
                }
                return jZzr;
            } catch (SQLiteException e) {
                zzAo().zzCE().zzj("Error storing raw event metadata", e);
                throw e;
            }
        } catch (IOException e2) {
            zzAo().zzCE().zzj("Data loss. Failed to serialize event metadata", e2);
            throw e2;
        }
    }

    @WorkerThread
    Object zzb(Cursor cursor, int i) {
        int iZza = zza(cursor, i);
        switch (iZza) {
            case 0:
                zzAo().zzCE().zzfg("Loaded invalid null value from database");
                return null;
            case 1:
                return Long.valueOf(cursor.getLong(i));
            case 2:
                return Float.valueOf(cursor.getFloat(i));
            case 3:
                return cursor.getString(i);
            case 4:
                zzAo().zzCE().zzfg("Loaded invalid blob type value, ignoring it");
                return null;
            default:
                zzAo().zzCE().zzj("Loaded invalid unknown value type, ignoring it", Integer.valueOf(iZza));
                return null;
        }
    }

    @WorkerThread
    void zzb(String str, zzpz.zza[] zzaVarArr) {
        zzjv();
        zzjk();
        com.google.android.gms.common.internal.zzx.zzcM(str);
        com.google.android.gms.common.internal.zzx.zzz(zzaVarArr);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            zzfb(str);
            for (zzpz.zza zzaVar : zzaVarArr) {
                zza(str, zzaVar);
            }
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    @WorkerThread
    public void zzd(String str, byte[] bArr) {
        com.google.android.gms.common.internal.zzx.zzcM(str);
        zzjk();
        zzjv();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr = {str};
            if ((!(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.update("apps", contentValues, "app_id = ?", strArr) : SQLiteInstrumentation.update(writableDatabase, "apps", contentValues, "app_id = ?", strArr)) == 0) {
                zzAo().zzCE().zzfg("Failed to update remote config (got 0)");
            }
        } catch (SQLiteException e) {
            zzAo().zzCE().zzj("Error storing remote config", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a9  */
    @WorkerThread
    public List<zzai> zzeX(String str) {
        Cursor cursor;
        Cursor cursor2 = null;
        com.google.android.gms.common.internal.zzx.zzcM(str);
        zzjk();
        zzjv();
        ArrayList arrayList = new ArrayList();
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr = {AnalyticAttribute.EVENT_NAME_ATTRIBUTE, "set_timestamp", NativeCallKeys.VALUE};
            String[] strArr2 = {str};
            String strValueOf = String.valueOf(zzCp().zzBM());
            Cursor cursorQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.query("user_attributes", strArr, "app_id=?", strArr2, null, null, "rowid", strValueOf) : SQLiteInstrumentation.query(writableDatabase, "user_attributes", strArr, "app_id=?", strArr2, null, null, "rowid", strValueOf);
            try {
                if (!cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayList;
                }
                do {
                    String string = cursorQuery.getString(0);
                    long j = cursorQuery.getLong(1);
                    Object objZzb = zzb(cursorQuery, 2);
                    if (objZzb == null) {
                        zzAo().zzCE().zzfg("Read invalid user property value, ignoring it");
                    } else {
                        arrayList.add(new zzai(str, string, j, objZzb));
                    }
                } while (cursorQuery.moveToNext());
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayList;
            } catch (SQLiteException e) {
                e = e;
                cursor = cursorQuery;
                try {
                    zzAo().zzCE().zze("Error querying user properties", str, e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursorQuery;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @WorkerThread
    public com.google.android.gms.measurement.internal.zza zzeY(String str) {
        Cursor cursorQuery;
        com.google.android.gms.common.internal.zzx.zzcM(str);
        zzjk();
        zzjv();
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr = {"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", AbstractTokenRequest.APP_VERSION, "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time"};
            String[] strArr2 = {str};
            cursorQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.query("apps", strArr, "app_id=?", strArr2, null, null, null) : SQLiteInstrumentation.query(writableDatabase, "apps", strArr, "app_id=?", strArr2, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    com.google.android.gms.measurement.internal.zza zzaVar = new com.google.android.gms.measurement.internal.zza(this.zzaTV, str);
                    zzaVar.zzeM(cursorQuery.getString(0));
                    zzaVar.zzeN(cursorQuery.getString(1));
                    zzaVar.zzeO(cursorQuery.getString(2));
                    zzaVar.zzS(cursorQuery.getLong(3));
                    zzaVar.zzO(cursorQuery.getLong(4));
                    zzaVar.zzP(cursorQuery.getLong(5));
                    zzaVar.setAppVersion(cursorQuery.getString(6));
                    zzaVar.zzeP(cursorQuery.getString(7));
                    zzaVar.zzQ(cursorQuery.getLong(8));
                    zzaVar.zzR(cursorQuery.getLong(9));
                    zzaVar.setMeasurementEnabled((cursorQuery.isNull(10) ? 1 : cursorQuery.getInt(10)) != 0);
                    zzaVar.zzV(cursorQuery.getLong(11));
                    zzaVar.zzW(cursorQuery.getLong(12));
                    zzaVar.zzX(cursorQuery.getLong(13));
                    zzaVar.zzY(cursorQuery.getLong(14));
                    zzaVar.zzT(cursorQuery.getLong(15));
                    zzaVar.zzU(cursorQuery.getLong(16));
                    zzaVar.zzBi();
                    if (cursorQuery.moveToNext()) {
                        zzAo().zzCE().zzfg("Got multiple records for app, expected one");
                    }
                    if (cursorQuery == null) {
                        return zzaVar;
                    }
                    cursorQuery.close();
                    return zzaVar;
                } catch (SQLiteException e) {
                    e = e;
                    zzAo().zzCE().zze("Error querying app", str, e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        th = th;
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        throw th;
    }

    public long zzeZ(String str) {
        com.google.android.gms.common.internal.zzx.zzcM(str);
        zzjk();
        zzjv();
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr = {str, String.valueOf(zzCp().zzeW(str))};
            return !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", strArr) : SQLiteInstrumentation.delete(writableDatabase, "raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", strArr);
        } catch (SQLiteException e) {
            zzAo().zzCE().zzj("Error deleting over the limit events", e);
            return 0L;
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0076  */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x007b: MOVE (r8 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:31:0x007b */
    @WorkerThread
    public byte[] zzfa(String str) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor;
        Cursor cursor2 = null;
        com.google.android.gms.common.internal.zzx.zzcM(str);
        zzjk();
        zzjv();
        try {
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                String[] strArr = {"remote_config"};
                String[] strArr2 = {str};
                cursorQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.query("apps", strArr, "app_id=?", strArr2, null, null, null) : SQLiteInstrumentation.query(writableDatabase, "apps", strArr, "app_id=?", strArr2, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    byte[] blob = cursorQuery.getBlob(0);
                    if (cursorQuery.moveToNext()) {
                        zzAo().zzCE().zzfg("Got multiple records for app config, expected one");
                    }
                    if (cursorQuery == null) {
                        return blob;
                    }
                    cursorQuery.close();
                    return blob;
                } catch (SQLiteException e) {
                    e = e;
                    zzAo().zzCE().zze("Error querying remote config", str, e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    @WorkerThread
    void zzfb(String str) {
        zzjv();
        zzjk();
        com.google.android.gms.common.internal.zzx.zzcM(str);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String[] strArr = {str};
        if (writableDatabase instanceof SQLiteDatabase) {
            SQLiteInstrumentation.delete(writableDatabase, "property_filters", "app_id=?", strArr);
        } else {
            writableDatabase.delete("property_filters", "app_id=?", strArr);
        }
        String[] strArr2 = {str};
        if (writableDatabase instanceof SQLiteDatabase) {
            SQLiteInstrumentation.delete(writableDatabase, "event_filters", "app_id=?", strArr2);
        } else {
            writableDatabase.delete("event_filters", "app_id=?", strArr2);
        }
    }

    public void zzfc(String str) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            String[] strArr = {str, str};
            if (writableDatabase instanceof SQLiteDatabase) {
                SQLiteInstrumentation.execSQL(writableDatabase, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)", strArr);
            } else {
                writableDatabase.execSQL("delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)", strArr);
            }
        } catch (SQLiteException e) {
            zzAo().zzCE().zzj("Failed to remove unused event metadata", e);
        }
    }

    public long zzfd(String str) {
        com.google.android.gms.common.internal.zzx.zzcM(str);
        return zza("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    @Override // com.google.android.gms.measurement.internal.zzz
    protected void zziJ() {
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00e5  */
    @WorkerThread
    public List<Pair<zzqb.zze, Long>> zzn(String str, int i, int i2) {
        Cursor cursorQuery;
        Cursor cursor;
        List<Pair<zzqb.zze, Long>> listEmptyList;
        int length;
        zzjk();
        zzjv();
        com.google.android.gms.common.internal.zzx.zzac(i > 0);
        com.google.android.gms.common.internal.zzx.zzac(i2 > 0);
        com.google.android.gms.common.internal.zzx.zzcM(str);
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr = {"rowid", IMBrowserActivity.EXPANDDATA};
            String[] strArr2 = {str};
            String strValueOf = String.valueOf(i);
            cursorQuery = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.query("queue", strArr, "app_id=?", strArr2, null, null, "rowid", strValueOf) : SQLiteInstrumentation.query(writableDatabase, "queue", strArr, "app_id=?", strArr2, null, null, "rowid", strValueOf);
            try {
                if (cursorQuery.moveToFirst()) {
                    listEmptyList = new ArrayList<>();
                    int i3 = 0;
                    while (true) {
                        long j = cursorQuery.getLong(0);
                        try {
                            byte[] bArrZzp = zzCk().zzp(cursorQuery.getBlob(1));
                            if (!listEmptyList.isEmpty() && bArrZzp.length + i3 > i2) {
                                break;
                            }
                            zzsm zzsmVarZzD = zzsm.zzD(bArrZzp);
                            zzqb.zze zzeVar = new zzqb.zze();
                            try {
                                zzeVar.mergeFrom(zzsmVarZzD);
                                length = bArrZzp.length + i3;
                                listEmptyList.add(Pair.create(zzeVar, Long.valueOf(j)));
                            } catch (IOException e) {
                                zzAo().zzCE().zze("Failed to merge queued bundle", str, e);
                                length = i3;
                            }
                            if (!cursorQuery.moveToNext() || length > i2) {
                                break;
                            }
                            i3 = length;
                        } catch (IOException e2) {
                            zzAo().zzCE().zze("Failed to unzip queued bundle", str, e2);
                            length = i3;
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } else {
                    listEmptyList = Collections.emptyList();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            } catch (SQLiteException e3) {
                e = e3;
                cursor = cursorQuery;
                try {
                    zzAo().zzCE().zze("Error querying bundles", str, e);
                    listEmptyList = Collections.emptyList();
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    cursorQuery = cursor;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            e = e4;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
        return listEmptyList;
    }

    public void zzz(List<Long> list) {
        com.google.android.gms.common.internal.zzx.zzz(list);
        zzjk();
        zzjv();
        StringBuilder sb = new StringBuilder("rowid in (");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                break;
            }
            if (i2 != 0) {
                sb.append(AppInfo.DELIM);
            }
            sb.append(list.get(i2).longValue());
            i = i2 + 1;
        }
        sb.append(")");
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String string = sb.toString();
        int iDelete = !(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.delete("raw_events", string, null) : SQLiteInstrumentation.delete(writableDatabase, "raw_events", string, null);
        if (iDelete != list.size()) {
            zzAo().zzCE().zze("Deleted fewer rows from raw events table than expected", Integer.valueOf(iDelete), Integer.valueOf(list.size()));
        }
    }
}
