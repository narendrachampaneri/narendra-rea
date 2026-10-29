package com.amazon.identity.auth.device.datastore;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.amazon.identity.auth.device.dataobject.AuthorizationToken;
import com.amazon.identity.auth.device.dataobject.AuthorizationTokenFactory;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.amazon.identity.auth.device.utils.MAPUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AuthorizationTokenDataSource extends AbstractDataSource<AuthorizationToken> {
    private static AuthorizationTokenDataSource INSTANCE;
    private static final String LOG_TAG = AuthorizationTokenDataSource.class.getName();
    private static final String[] ALL_COLUMNS = AuthorizationToken.ALL_COLUMNS;

    private AuthorizationTokenDataSource(SQLiteDatabase database) {
        super(database);
    }

    public static synchronized AuthorizationTokenDataSource getInstance(Context context) {
        if (INSTANCE == null) {
            INSTANCE = new AuthorizationTokenDataSource(MAPUtils.getMAPdatabase(context));
        }
        return INSTANCE;
    }

    public List<AuthorizationToken> findByAppId(String appId) {
        return findAllRowsBySingleColumn(ALL_COLUMNS[AuthorizationToken.COL_INDEX.APP_ID.colId], appId);
    }

    public AuthorizationToken findById(long id) {
        return findByRowId(id);
    }

    public AuthorizationToken findByPrimaryKey(long id) {
        return findByRowId(id);
    }

    public int deleteByAppId(String appId) {
        return deleteRowsBySingleColumn(ALL_COLUMNS[AuthorizationToken.COL_INDEX.APP_ID.colId], appId);
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public String getLogTag() {
        return LOG_TAG;
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public AuthorizationToken cursorToObject(Cursor cursor) {
        if (cursor == null || cursor.getCount() == 0) {
            return null;
        }
        try {
            AuthorizationToken.AUTHZ_TOKEN_TYPE type = AuthorizationToken.AUTHZ_TOKEN_TYPE.values()[cursor.getInt(getColumnIndex(cursor, AuthorizationToken.COL_INDEX.TYPE.colId))];
            AuthorizationToken to_return = AuthorizationTokenFactory.getAuthorizationToken(type);
            to_return.setId(cursor.getLong(getColumnIndex(cursor, AuthorizationToken.COL_INDEX.ID.colId)));
            to_return.setAppFamilyId(cursor.getString(getColumnIndex(cursor, AuthorizationToken.COL_INDEX.APP_ID.colId)));
            to_return.setTokenValue(cursor.getString(getColumnIndex(cursor, AuthorizationToken.COL_INDEX.TOKEN.colId)));
            to_return.setCreationTime(DatabaseHelper.ISO8601.parse(cursor.getString(getColumnIndex(cursor, AuthorizationToken.COL_INDEX.CREATION_TIME.colId))));
            to_return.setExpirationTime(DatabaseHelper.ISO8601.parse(cursor.getString(getColumnIndex(cursor, AuthorizationToken.COL_INDEX.EXPIRATION_TIME.colId))));
            to_return.setMiscData(cursor.getBlob(getColumnIndex(cursor, AuthorizationToken.COL_INDEX.MISC_DATA.colId)));
            to_return.setDirectedId(cursor.getString(getColumnIndex(cursor, AuthorizationToken.COL_INDEX.DIRECTED_ID.colId)));
            return to_return;
        } catch (Exception e) {
            MAPLog.e(LOG_TAG, "" + e.getMessage(), e);
            return null;
        }
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public String getTableName() {
        return DatabaseHelper.authorizationTokenTable;
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public String[] getAllColumns() {
        return ALL_COLUMNS;
    }
}
