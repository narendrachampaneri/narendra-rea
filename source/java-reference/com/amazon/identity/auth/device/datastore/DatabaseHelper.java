package com.amazon.identity.auth.device.datastore;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface;
import com.amazon.identity.auth.device.authorization.ThirdPartyServiceHelper;
import com.amazon.identity.auth.device.dataobject.RequestedScope;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class DatabaseHelper extends SQLiteOpenHelper {
    public static final String MAP_DB_NAME = "MAPDataStore.db";
    private static final int MAP_DB_VERSION = 6;
    private static final int THIRD_PARTY_VER_2_1_X = 5;
    private static final int THIRD_PARTY_VER_2_2_X = 6;
    private static final int THIRD_PARTY_VER_2_X = 4;
    public static final String appInfoTable = "AppInfo";
    public static final String appInfo_AllowedScopes = "AllowedScopes";
    public static final String appInfo_AppFamilyId = "AppFamilyId";
    public static final String appInfo_AppVariantId = "AppVariantId";
    public static final String appInfo_ClientId = "ClientId";
    public static final String appInfo_GrantedPermissions = "GrantedPermissions";
    public static final String appInfo_PackageName = "PackageName";
    public static final String appInfo_Payload = "Payload";
    public static final String authorizationCode = "Code";
    public static final String authorizationCodeTable = "AuthorizationCode";
    public static final String authorizationCode_AppId = "AppId";
    public static final String authorizationCode_AuthorizationTokenId = "AuthorizationTokenId";
    public static final String authorizationCode_Id = "Id";
    public static final String authorizationTokenTable = "AuthorizationToken";
    public static final String authorizationToken_AppId = "AppId";
    public static final String authorizationToken_CreationTime = "CreationTime";
    public static final String authorizationToken_DirectedId = "directedId";
    public static final String authorizationToken_ExpirationTime = "ExpirationTime";
    public static final String authorizationToken_Id = "Id";
    public static final String authorizationToken_MiscData = "MiscData";
    public static final String authorizationToken_Token = "Token";
    public static final String authorizationToken_Type = "type";
    public static final String profileTable = "Profile";
    public static final String profile_AppId = "AppId";
    public static final String profile_Data = "Data";
    public static final String profile_ExpirationTime = "ExpirationTime";
    public static final String profile_Id = "Id";
    public static final String requestedScopeTable = "RequestedScope";
    public static final String requestedScope_AppId = "AppId";
    public static final String requestedScope_AuthorizationAccessTokenId = "AtzAccessTokenId";
    public static final String requestedScope_AuthorizationRefreshTokenId = "AtzRefreshTokenId";
    public static final String requestedScope_DirectedId = "DirectedId";
    public static final String requestedScope_Scope = "Scope";
    private static final String LOG_TAG = DatabaseHelper.class.getName();
    private static final long SECOND_MILLIS = TimeUnit.MILLISECONDS.convert(1, TimeUnit.SECONDS);
    public static final SimpleDateFormat ISO8601 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);

    public DatabaseHelper(Context context) {
        super(context, MAP_DB_NAME, (SQLiteDatabase.CursorFactory) null, 6);
        MAPLog.pii(LOG_TAG, "DatabaseHelper created", "MAP_DB_NAME=MAPDataStore.db, MAP_DB_VERSION=6");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db) {
        MAPLog.i(LOG_TAG, "onCreate called");
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE TABLE IF NOT EXISTS AppInfo (AppFamilyId TEXT NOT NULL, PackageName TEXT NOT NULL, AllowedScopes TEXT, GrantedPermissions TEXT, ClientId TEXT NOT NULL, AppVariantId TEXT,Payload TEXT,UNIQUE (PackageName), PRIMARY KEY (AppVariantId))");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE TABLE IF NOT EXISTS AppInfo (AppFamilyId TEXT NOT NULL, PackageName TEXT NOT NULL, AllowedScopes TEXT, GrantedPermissions TEXT, ClientId TEXT NOT NULL, AppVariantId TEXT,Payload TEXT,UNIQUE (PackageName), PRIMARY KEY (AppVariantId))");
        }
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE INDEX IF NOT EXISTS app_info_index_pkg_name ON AppInfo (PackageName)");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE INDEX IF NOT EXISTS app_info_index_pkg_name ON AppInfo (PackageName)");
        }
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE INDEX IF NOT EXISTS app_info_index_app_variant_id ON AppInfo (AppVariantId)");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE INDEX IF NOT EXISTS app_info_index_app_variant_id ON AppInfo (AppVariantId)");
        }
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE TABLE IF NOT EXISTS RequestedScope (Scope TEXT NOT NULL, AppId TEXT NOT NULL, DirectedId TEXT, AtzAccessTokenId INTEGER NOT NULL, AtzRefreshTokenId INTEGER NOT NULL, PRIMARY KEY (Scope,AppId,AtzAccessTokenId,AtzRefreshTokenId))");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE TABLE IF NOT EXISTS RequestedScope (Scope TEXT NOT NULL, AppId TEXT NOT NULL, DirectedId TEXT, AtzAccessTokenId INTEGER NOT NULL, AtzRefreshTokenId INTEGER NOT NULL, PRIMARY KEY (Scope,AppId,AtzAccessTokenId,AtzRefreshTokenId))");
        }
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE INDEX IF NOT EXISTS requested_scope_index_scope ON RequestedScope (Scope)");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE INDEX IF NOT EXISTS requested_scope_index_scope ON RequestedScope (Scope)");
        }
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE INDEX IF NOT EXISTS requested_scope_index_app_id ON RequestedScope (AppId)");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE INDEX IF NOT EXISTS requested_scope_index_app_id ON RequestedScope (AppId)");
        }
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE INDEX IF NOT EXISTS requested_scope_index_atz_access_token_id ON RequestedScope (AtzAccessTokenId)");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE INDEX IF NOT EXISTS requested_scope_index_atz_access_token_id ON RequestedScope (AtzAccessTokenId)");
        }
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE INDEX IF NOT EXISTS requested_scope_index_atz_refresh_token_id ON RequestedScope (AtzRefreshTokenId)");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE INDEX IF NOT EXISTS requested_scope_index_atz_refresh_token_id ON RequestedScope (AtzRefreshTokenId)");
        }
        String str = "CREATE TRIGGER IF NOT EXISTS requested_scope_valid_atz_access_token_id BEFORE INSERT ON RequestedScope FOR EACH ROW BEGIN SELECT CASE WHEN (new.AtzAccessTokenId != " + RequestedScope.OUTCOME.UNKNOWN.longVal + " AND new." + requestedScope_AuthorizationAccessTokenId + " != " + RequestedScope.OUTCOME.REJECTED.longVal + " AND new." + requestedScope_AuthorizationAccessTokenId + " < " + RequestedScope.OUTCOME.GRANTED_LOCALLY.longVal + ") THEN RAISE(ABORT, 'Invalid authorization token ID') END; END;";
        if (db instanceof SQLiteDatabase) {
            SQLiteInstrumentation.execSQL(db, str);
        } else {
            db.execSQL(str);
        }
        String str2 = "CREATE TRIGGER IF NOT EXISTS requested_scope_valid_atz_refresh_token_id BEFORE INSERT ON RequestedScope FOR EACH ROW BEGIN SELECT CASE WHEN (new.AtzRefreshTokenId != " + RequestedScope.OUTCOME.UNKNOWN.longVal + " AND new." + requestedScope_AuthorizationRefreshTokenId + " != " + RequestedScope.OUTCOME.REJECTED.longVal + " AND new." + requestedScope_AuthorizationRefreshTokenId + " < " + RequestedScope.OUTCOME.GRANTED_LOCALLY.longVal + ") THEN RAISE(ABORT, 'Invalid authorization token ID') END; END;";
        if (db instanceof SQLiteDatabase) {
            SQLiteInstrumentation.execSQL(db, str2);
        } else {
            db.execSQL(str2);
        }
        MAPLog.d(LOG_TAG, "Attempting to create authorizationTokenTable TABLE");
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE TABLE IF NOT EXISTS AuthorizationToken (Id INTEGER PRIMARY KEY AUTOINCREMENT, AppId TEXT NOT NULL, Token TEXT NOT NULL, CreationTime DATETIME NOT NULL, ExpirationTime DATETIME NOT NULL, MiscData BLOB, type INTEGER NOT NULL, directedId TEXT )");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE TABLE IF NOT EXISTS AuthorizationToken (Id INTEGER PRIMARY KEY AUTOINCREMENT, AppId TEXT NOT NULL, Token TEXT NOT NULL, CreationTime DATETIME NOT NULL, ExpirationTime DATETIME NOT NULL, MiscData BLOB, type INTEGER NOT NULL, directedId TEXT )");
        }
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE INDEX IF NOT EXISTS authz_token_index_app_id ON AuthorizationToken (AppId)");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE INDEX IF NOT EXISTS authz_token_index_app_id ON AuthorizationToken (AppId)");
        }
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE TABLE IF NOT EXISTS AuthorizationCode (Id INTEGER PRIMARY KEY AUTOINCREMENT, Code TEXT NOT NULL, AppId TEXT NOT NULL, AuthorizationTokenId INTEGER NOT NULL )");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE TABLE IF NOT EXISTS AuthorizationCode (Id INTEGER PRIMARY KEY AUTOINCREMENT, Code TEXT NOT NULL, AppId TEXT NOT NULL, AuthorizationTokenId INTEGER NOT NULL )");
        }
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE INDEX IF NOT EXISTS authz_code_index_app_id ON AuthorizationCode (AppId)");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE INDEX IF NOT EXISTS authz_code_index_app_id ON AuthorizationCode (AppId)");
        }
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE INDEX IF NOT EXISTS authz_code_index_token_id ON AuthorizationCode (AuthorizationTokenId)");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE INDEX IF NOT EXISTS authz_code_index_token_id ON AuthorizationCode (AuthorizationTokenId)");
        }
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE TABLE IF NOT EXISTS Profile (Id INTEGER PRIMARY KEY AUTOINCREMENT, ExpirationTime DATETIME NOT NULL, AppId TEXT NOT NULL, Data TEXT NOT NULL )");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE TABLE IF NOT EXISTS Profile (Id INTEGER PRIMARY KEY AUTOINCREMENT, ExpirationTime DATETIME NOT NULL, AppId TEXT NOT NULL, Data TEXT NOT NULL )");
        }
        if (!(db instanceof SQLiteDatabase)) {
            db.execSQL("CREATE INDEX IF NOT EXISTS profile_index_app_id ON Profile (AppId)");
        } else {
            SQLiteInstrumentation.execSQL(db, "CREATE INDEX IF NOT EXISTS profile_index_app_id ON Profile (AppId)");
        }
    }

    public boolean doesColumnExist(SQLiteDatabase db, String tableName, String columnName) {
        MAPLog.i(LOG_TAG, "Checking if COL=" + columnName + " in table=" + tableName + " exists");
        if (TextUtils.isEmpty(columnName) || TextUtils.isEmpty(tableName) || db == null || !db.isOpen()) {
            MAPLog.i(LOG_TAG, "Column does NOT exist");
            return false;
        }
        try {
            String query = "select * from sqlite_master where name = '" + tableName + "' and sql like '%" + columnName + "%' ";
            Cursor cursor = !(db instanceof SQLiteDatabase) ? db.rawQuery(query, null) : SQLiteInstrumentation.rawQuery(db, query, null);
            if (cursor == null) {
                MAPLog.i(LOG_TAG, "Column does NOT exist");
                return false;
            }
            if (cursor.moveToFirst()) {
                MAPLog.i(LOG_TAG, "Column does exist");
                return true;
            }
            cursor.close();
            MAPLog.i(LOG_TAG, "Column does NOT exist");
            return false;
        } catch (SQLiteException e) {
            MAPLog.i(LOG_TAG, "SQLiteException: " + e.getMessage());
            MAPLog.i(LOG_TAG, "Column does NOT exist");
            return false;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        MAPLog.i(LOG_TAG, "onUpgrade called old=" + oldVersion + " new=" + newVersion);
        if (oldVersion < 4 && newVersion >= 4) {
            MAPLog.i(LOG_TAG, "Doing upgrades for 4");
            if (!(db instanceof SQLiteDatabase)) {
                db.execSQL("DROP TABLE IF EXISTS AuthorizationToken");
            } else {
                SQLiteInstrumentation.execSQL(db, "DROP TABLE IF EXISTS AuthorizationToken");
            }
            if (!(db instanceof SQLiteDatabase)) {
                db.execSQL("DROP TABLE IF EXISTS RequestedScope");
            } else {
                SQLiteInstrumentation.execSQL(db, "DROP TABLE IF EXISTS RequestedScope");
            }
            if (!(db instanceof SQLiteDatabase)) {
                db.execSQL("DROP TABLE IF EXISTS AppInfo");
            } else {
                SQLiteInstrumentation.execSQL(db, "DROP TABLE IF EXISTS AppInfo");
            }
            if (!(db instanceof SQLiteDatabase)) {
                db.execSQL("DROP INDEX IF EXISTS RequestedScope.requested_scope_index_directed_id");
            } else {
                SQLiteInstrumentation.execSQL(db, "DROP INDEX IF EXISTS RequestedScope.requested_scope_index_directed_id");
            }
            if (!(db instanceof SQLiteDatabase)) {
                db.execSQL("DROP INDEX IF EXISTS RequestedScope.requested_scope_index_atz_token_id");
            } else {
                SQLiteInstrumentation.execSQL(db, "DROP INDEX IF EXISTS RequestedScope.requested_scope_index_atz_token_id");
            }
            if (!(db instanceof SQLiteDatabase)) {
                db.execSQL("DROP TRIGGER IF EXISTS requested_scope_valid_atz_token_id");
            } else {
                SQLiteInstrumentation.execSQL(db, "DROP TRIGGER IF EXISTS requested_scope_valid_atz_token_id");
            }
        }
        if (oldVersion < 5 && newVersion >= 5) {
            MAPLog.i(LOG_TAG, "Doing upgrades for 5");
        }
        if (oldVersion < 6 && newVersion >= 6) {
            MAPLog.i(LOG_TAG, "Doing upgrades for 6");
            if (!(db instanceof SQLiteDatabase)) {
                db.execSQL("DROP TABLE IF EXISTS AppInfo");
            } else {
                SQLiteInstrumentation.execSQL(db, "DROP TABLE IF EXISTS AppInfo");
            }
        }
        if (newVersion > 6) {
            throw new IllegalStateException("Database version was updated, but no upgrade was done");
        }
        onCreate(db);
    }

    public static Date truncateFractionalSeconds(Date date) {
        if (date == null) {
            return null;
        }
        date.setTime((date.getTime() / SECOND_MILLIS) * SECOND_MILLIS);
        return date;
    }

    public static void clearAuthorizationState(Context context) {
        MAPLog.i(LOG_TAG, "Clearing Authorization Locally");
        AppInfoDataSource.getInstance(context).deleteAllRows();
        AuthorizationTokenDataSource.getInstance(context).deleteAllRows();
        RequestedScopeDataSource.getInstance(context).deleteAllRows();
        ProfileDataSource.getInstance(context).deleteAllRows();
    }

    public static void clearServiceAuthorizationState(Context context) throws AuthError {
        new Bundle();
        try {
            try {
                AmazonAuthorizationServiceInterface service = ThirdPartyServiceHelper.getRemoteAndroidService(context);
                if (service != null) {
                    MAPLog.i(LOG_TAG, "Clearing Authorization via Service");
                    Bundle result = service.clearAuthorizationState(null, context.getPackageName());
                    if (result != null && result.containsKey(AuthError.AUTH_ERROR_EXECEPTION)) {
                        throw AuthError.extractError(result);
                    }
                }
                ThirdPartyServiceHelper.unbind(context);
            } catch (RemoteException e) {
                ThirdPartyServiceHelper.clearCachedService(context);
                throw new AuthError("Clearing Authorization RemoteException", e, AuthError.ERROR_TYPE.ERROR_UNKNOWN);
            }
        } catch (Throwable th) {
            ThirdPartyServiceHelper.unbind(context);
            throw th;
        }
    }
}
