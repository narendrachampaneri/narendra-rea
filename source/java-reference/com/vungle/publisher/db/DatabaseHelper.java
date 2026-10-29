package com.vungle.publisher.db;

import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import com.vungle.log.Logger;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.bv;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.file.CacheManager;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class DatabaseHelper extends SQLiteOpenHelper {
    private static final String[] e = {AdDatabaseHelper.TABLE_AD, "viewable", "archive_entry", "event_tracking", "ad_report", "ad_play", "ad_report_event", "ad_report_extra", "event_tracking_http_log", "logged_exceptions"};

    @Inject
    CacheManager a;

    @Inject
    EventBus b;

    @Inject
    bv c;

    @Inject
    public ScheduledPriorityExecutor d;

    @Inject
    public DatabaseHelper(Context context) {
        super(context, "vungle", (SQLiteDatabase.CursorFactory) null, 8);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase database) {
        Logger.d(Logger.DATABASE_TAG, "creating database: vungle");
        Logger.d(Logger.DATABASE_TAG, "creating table: ad");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE ad (id STRING PRIMARY KEY, advertising_app_vungle_id INTEGER, call_to_action_final_url STRING, call_to_action_url STRING, delivery_id STRING NOT NULL, status STRING NOT NULL, type STRING NOT NULL, delete_local_content_attempts INTEGER, expiration_timestamp_seconds INTEGER, parent_path STRING, prepare_retry_count INTEGER, received_timestamp_millis INTEGER, insert_timestamp_millis INTEGER NOT NULL, update_timestamp_millis INTEGER NOT NULL, failed_timestamp_millis INTEGER NOT NULL);");
        if (!(database instanceof SQLiteDatabase)) {
            database.execSQL("CREATE TABLE ad (id STRING PRIMARY KEY, advertising_app_vungle_id INTEGER, call_to_action_final_url STRING, call_to_action_url STRING, delivery_id STRING NOT NULL, status STRING NOT NULL, type STRING NOT NULL, delete_local_content_attempts INTEGER, expiration_timestamp_seconds INTEGER, parent_path STRING, prepare_retry_count INTEGER, received_timestamp_millis INTEGER, insert_timestamp_millis INTEGER NOT NULL, update_timestamp_millis INTEGER NOT NULL, failed_timestamp_millis INTEGER NOT NULL);");
        } else {
            SQLiteInstrumentation.execSQL(database, "CREATE TABLE ad (id STRING PRIMARY KEY, advertising_app_vungle_id INTEGER, call_to_action_final_url STRING, call_to_action_url STRING, delivery_id STRING NOT NULL, status STRING NOT NULL, type STRING NOT NULL, delete_local_content_attempts INTEGER, expiration_timestamp_seconds INTEGER, parent_path STRING, prepare_retry_count INTEGER, received_timestamp_millis INTEGER, insert_timestamp_millis INTEGER NOT NULL, update_timestamp_millis INTEGER NOT NULL, failed_timestamp_millis INTEGER NOT NULL);");
        }
        Logger.d(Logger.DATABASE_TAG, "creating table: viewable");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE viewable (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, type STRING NOT NULL, url STRING NOT NULL, status STRING NOT NULL, size INTEGER, width INTEGER, height INTEGER, show_close_delay_incentivized_seconds INTEGER, show_close_delay_interstitial_seconds INTEGER, show_countdown_delay_seconds INTEGER, cta_clickable_percent REAL, enable_cta_delay_seconds INTEGER, is_cta_enabled INTEGER, is_cta_shown_on_touch INTEGER, show_cta_delay_seconds INTEGER, checksum STRING, CONSTRAINT viewable_ad_type_uk UNIQUE (ad_id, type));");
        if (!(database instanceof SQLiteDatabase)) {
            database.execSQL("CREATE TABLE viewable (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, type STRING NOT NULL, url STRING NOT NULL, status STRING NOT NULL, size INTEGER, width INTEGER, height INTEGER, show_close_delay_incentivized_seconds INTEGER, show_close_delay_interstitial_seconds INTEGER, show_countdown_delay_seconds INTEGER, cta_clickable_percent REAL, enable_cta_delay_seconds INTEGER, is_cta_enabled INTEGER, is_cta_shown_on_touch INTEGER, show_cta_delay_seconds INTEGER, checksum STRING, CONSTRAINT viewable_ad_type_uk UNIQUE (ad_id, type));");
        } else {
            SQLiteInstrumentation.execSQL(database, "CREATE TABLE viewable (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, type STRING NOT NULL, url STRING NOT NULL, status STRING NOT NULL, size INTEGER, width INTEGER, height INTEGER, show_close_delay_incentivized_seconds INTEGER, show_close_delay_interstitial_seconds INTEGER, show_countdown_delay_seconds INTEGER, cta_clickable_percent REAL, enable_cta_delay_seconds INTEGER, is_cta_enabled INTEGER, is_cta_shown_on_touch INTEGER, show_cta_delay_seconds INTEGER, checksum STRING, CONSTRAINT viewable_ad_type_uk UNIQUE (ad_id, type));");
        }
        Logger.d(Logger.DATABASE_TAG, "creating table: archive_entry");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE archive_entry (id INTEGER PRIMARY KEY AUTOINCREMENT, viewable_id INTEGER NOT NULL REFERENCES viewable(id) ON DELETE CASCADE ON UPDATE CASCADE, relative_path STRING NOT NULL, size INTEGER, CONSTRAINT archive_entry_viewable_id_path_uk UNIQUE (id, relative_path));");
        if (!(database instanceof SQLiteDatabase)) {
            database.execSQL("CREATE TABLE archive_entry (id INTEGER PRIMARY KEY AUTOINCREMENT, viewable_id INTEGER NOT NULL REFERENCES viewable(id) ON DELETE CASCADE ON UPDATE CASCADE, relative_path STRING NOT NULL, size INTEGER, CONSTRAINT archive_entry_viewable_id_path_uk UNIQUE (id, relative_path));");
        } else {
            SQLiteInstrumentation.execSQL(database, "CREATE TABLE archive_entry (id INTEGER PRIMARY KEY AUTOINCREMENT, viewable_id INTEGER NOT NULL REFERENCES viewable(id) ON DELETE CASCADE ON UPDATE CASCADE, relative_path STRING NOT NULL, size INTEGER, CONSTRAINT archive_entry_viewable_id_path_uk UNIQUE (id, relative_path));");
        }
        Logger.d(Logger.DATABASE_TAG, "creating table: event_tracking");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE event_tracking (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, event INTEGER NOT NULL, url STRING NOT NULL);");
        if (!(database instanceof SQLiteDatabase)) {
            database.execSQL("CREATE TABLE event_tracking (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, event INTEGER NOT NULL, url STRING NOT NULL);");
        } else {
            SQLiteInstrumentation.execSQL(database, "CREATE TABLE event_tracking (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, event INTEGER NOT NULL, url STRING NOT NULL);");
        }
        Logger.d(Logger.DATABASE_TAG, "creating table: ad_report");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE ad_report (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, incentivized_publisher_app_user_id STRING, is_incentivized INTEGER NOT NULL, placement STRING, status STRING NOT NULL, video_duration_millis INTEGER, view_end_millis INTEGER, view_start_millis INTEGER, download_end_millis INTEGER, insert_timestamp_millis INTEGER NOT NULL, update_timestamp_millis INTEGER NOT NULL);");
        if (!(database instanceof SQLiteDatabase)) {
            database.execSQL("CREATE TABLE ad_report (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, incentivized_publisher_app_user_id STRING, is_incentivized INTEGER NOT NULL, placement STRING, status STRING NOT NULL, video_duration_millis INTEGER, view_end_millis INTEGER, view_start_millis INTEGER, download_end_millis INTEGER, insert_timestamp_millis INTEGER NOT NULL, update_timestamp_millis INTEGER NOT NULL);");
        } else {
            SQLiteInstrumentation.execSQL(database, "CREATE TABLE ad_report (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, incentivized_publisher_app_user_id STRING, is_incentivized INTEGER NOT NULL, placement STRING, status STRING NOT NULL, video_duration_millis INTEGER, view_end_millis INTEGER, view_start_millis INTEGER, download_end_millis INTEGER, insert_timestamp_millis INTEGER NOT NULL, update_timestamp_millis INTEGER NOT NULL);");
        }
        Logger.d(Logger.DATABASE_TAG, "creating table: ad_play");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE ad_play (id INTEGER PRIMARY KEY AUTOINCREMENT, report_id INTEGER NOT NULL REFERENCES ad_report(id) ON DELETE CASCADE ON UPDATE CASCADE, start_millis INTEGER, watched_millis INTEGER);");
        if (!(database instanceof SQLiteDatabase)) {
            database.execSQL("CREATE TABLE ad_play (id INTEGER PRIMARY KEY AUTOINCREMENT, report_id INTEGER NOT NULL REFERENCES ad_report(id) ON DELETE CASCADE ON UPDATE CASCADE, start_millis INTEGER, watched_millis INTEGER);");
        } else {
            SQLiteInstrumentation.execSQL(database, "CREATE TABLE ad_play (id INTEGER PRIMARY KEY AUTOINCREMENT, report_id INTEGER NOT NULL REFERENCES ad_report(id) ON DELETE CASCADE ON UPDATE CASCADE, start_millis INTEGER, watched_millis INTEGER);");
        }
        Logger.d(Logger.DATABASE_TAG, "creating table: ad_report_event");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE ad_report_event (id INTEGER PRIMARY KEY AUTOINCREMENT, play_id INTEGER NOT NULL REFERENCES ad_play(id) ON DELETE CASCADE ON UPDATE CASCADE, event STRING NOT NULL, insert_timestamp_millis INTEGER NOT NULL, value STRING);");
        if (!(database instanceof SQLiteDatabase)) {
            database.execSQL("CREATE TABLE ad_report_event (id INTEGER PRIMARY KEY AUTOINCREMENT, play_id INTEGER NOT NULL REFERENCES ad_play(id) ON DELETE CASCADE ON UPDATE CASCADE, event STRING NOT NULL, insert_timestamp_millis INTEGER NOT NULL, value STRING);");
        } else {
            SQLiteInstrumentation.execSQL(database, "CREATE TABLE ad_report_event (id INTEGER PRIMARY KEY AUTOINCREMENT, play_id INTEGER NOT NULL REFERENCES ad_play(id) ON DELETE CASCADE ON UPDATE CASCADE, event STRING NOT NULL, insert_timestamp_millis INTEGER NOT NULL, value STRING);");
        }
        Logger.d(Logger.DATABASE_TAG, "creating table: ad_report_extra");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE ad_report_extra (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_report_id INTEGER NOT NULL REFERENCES ad_report(id) ON DELETE CASCADE ON UPDATE CASCADE, name STRING, value STRING, CONSTRAINT ad_report_extra_id_name_uk UNIQUE (id, name));");
        if (!(database instanceof SQLiteDatabase)) {
            database.execSQL("CREATE TABLE ad_report_extra (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_report_id INTEGER NOT NULL REFERENCES ad_report(id) ON DELETE CASCADE ON UPDATE CASCADE, name STRING, value STRING, CONSTRAINT ad_report_extra_id_name_uk UNIQUE (id, name));");
        } else {
            SQLiteInstrumentation.execSQL(database, "CREATE TABLE ad_report_extra (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_report_id INTEGER NOT NULL REFERENCES ad_report(id) ON DELETE CASCADE ON UPDATE CASCADE, name STRING, value STRING, CONSTRAINT ad_report_extra_id_name_uk UNIQUE (id, name));");
        }
        Logger.d(Logger.DATABASE_TAG, "creating table: event_tracking_http_log");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE event_tracking_http_log (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL, delivery_id STRING NOT NULL, event STRING NOT NULL, response_code INTEGER NOT NULL, response_timestamp_millis INTEGER, url STRING NOT NULL, insert_timestamp_millis INTEGER NOT NULL);");
        if (!(database instanceof SQLiteDatabase)) {
            database.execSQL("CREATE TABLE event_tracking_http_log (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL, delivery_id STRING NOT NULL, event STRING NOT NULL, response_code INTEGER NOT NULL, response_timestamp_millis INTEGER, url STRING NOT NULL, insert_timestamp_millis INTEGER NOT NULL);");
        } else {
            SQLiteInstrumentation.execSQL(database, "CREATE TABLE event_tracking_http_log (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL, delivery_id STRING NOT NULL, event STRING NOT NULL, response_code INTEGER NOT NULL, response_timestamp_millis INTEGER, url STRING NOT NULL, insert_timestamp_millis INTEGER NOT NULL);");
        }
        Logger.d(Logger.DATABASE_TAG, "creating table: logged_exceptions");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE logged_exceptions (id INTEGER PRIMARY KEY AUTOINCREMENT, stack_trace STRING, tag STRING, log_message STRING, class STRING, type INTEGER NOT NULL, android_version STRING, sdk_version STRING NOT NULL, play_services_version STRING, insert_timestamp_millis INTEGER NOT NULL);");
        if (!(database instanceof SQLiteDatabase)) {
            database.execSQL("CREATE TABLE logged_exceptions (id INTEGER PRIMARY KEY AUTOINCREMENT, stack_trace STRING, tag STRING, log_message STRING, class STRING, type INTEGER NOT NULL, android_version STRING, sdk_version STRING NOT NULL, play_services_version STRING, insert_timestamp_millis INTEGER NOT NULL);");
        } else {
            SQLiteInstrumentation.execSQL(database, "CREATE TABLE logged_exceptions (id INTEGER PRIMARY KEY AUTOINCREMENT, stack_trace STRING, tag STRING, log_message STRING, class STRING, type INTEGER NOT NULL, android_version STRING, sdk_version STRING NOT NULL, play_services_version STRING, insert_timestamp_millis INTEGER NOT NULL);");
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase database, int oldVersion, int newVersion) {
        Logger.d(Logger.DATABASE_TAG, "downgrading databse version " + oldVersion + " --> " + newVersion);
        a(database);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase database, int oldVersion, int newVersion) {
        Logger.d(Logger.DATABASE_TAG, "upgrading database version " + oldVersion + " --> " + newVersion);
        a(database);
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        for (String str : e) {
            Logger.d(Logger.DATABASE_TAG, "dropping table: " + str);
            String str2 = "DROP TABLE  IF EXISTS " + str;
            Logger.v(Logger.DATABASE_TAG, str2);
            if (sQLiteDatabase instanceof SQLiteDatabase) {
                SQLiteInstrumentation.execSQL(sQLiteDatabase, str2);
            } else {
                sQLiteDatabase.execSQL(str2);
            }
        }
        CacheManager cacheManager = this.a;
        Logger.d(Logger.FILE_TAG, "deleting ad temp directory");
        CacheManager.a(cacheManager.a.get());
        onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase database) {
        super.onOpen(database);
        Logger.d(Logger.DATABASE_TAG, "enabling foreign keys");
        if (database instanceof SQLiteDatabase) {
            SQLiteInstrumentation.execSQL(database, "PRAGMA foreign_keys = true");
        } else {
            database.execSQL("PRAGMA foreign_keys = true");
        }
    }

    final void a(String... strArr) {
        String strB = this.c.b();
        Logger.d(Logger.DATABASE_DUMP_TAG, strB + " sdk version VungleDroid/3.3.3, database version 8");
        if (strArr == null || strArr.length <= 0) {
            Logger.d(Logger.DATABASE_DUMP_TAG, strB + " dumping all tables");
            strArr = e;
        }
        SQLiteDatabase readableDatabase = getReadableDatabase();
        int length = strArr.length;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < length) {
                String str = strArr[i2];
                Logger.i(Logger.DATABASE_DUMP_TAG, strB + " dumping table " + str);
                String[] strArr2 = new String[0];
                Cursor cursorQuery = !(readableDatabase instanceof SQLiteDatabase) ? readableDatabase.query(str, null, null, strArr2, null, null, null) : SQLiteInstrumentation.query(readableDatabase, str, null, null, strArr2, null, null, null);
                StringBuilder sb = new StringBuilder();
                DatabaseUtils.dumpCursor(cursorQuery, sb);
                Logger.d(Logger.DATABASE_DUMP_TAG, sb.toString());
                i = i2 + 1;
            } else {
                return;
            }
        }
    }
}
