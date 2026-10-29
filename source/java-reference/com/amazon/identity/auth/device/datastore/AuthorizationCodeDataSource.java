package com.amazon.identity.auth.device.datastore;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.amazon.identity.auth.device.dataobject.AuthorizationCode;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.amazon.identity.auth.device.utils.MAPUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AuthorizationCodeDataSource extends AbstractDataSource<AuthorizationCode> {
    private static AuthorizationCodeDataSource INSTANCE;
    private static final String LOG_TAG = AuthorizationCodeDataSource.class.getName();
    private static final String[] ALL_COLUMNS = AuthorizationCode.ALL_COLUMNS;

    private AuthorizationCodeDataSource(SQLiteDatabase database) {
        super(database);
    }

    public static synchronized AuthorizationCodeDataSource getInstance(Context context) {
        if (INSTANCE == null) {
            INSTANCE = new AuthorizationCodeDataSource(MAPUtils.getMAPdatabase(context));
        }
        return INSTANCE;
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public String getLogTag() {
        return LOG_TAG;
    }

    public AuthorizationCode findById(long id) {
        return findByRowId(id);
    }

    public AuthorizationCode findByPrimaryKey(long id) {
        return findByRowId(id);
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public AuthorizationCode cursorToObject(Cursor cursor) {
        if (cursor == null || cursor.getCount() == 0) {
            return null;
        }
        try {
            AuthorizationCode to_return = new AuthorizationCode();
            to_return.setId(cursor.getLong(getColumnIndex(cursor, AuthorizationCode.COL_INDEX.ROW_ID.colId)));
            to_return.setCode(cursor.getString(getColumnIndex(cursor, AuthorizationCode.COL_INDEX.CODE.colId)));
            to_return.setAppId(cursor.getString(getColumnIndex(cursor, AuthorizationCode.COL_INDEX.APP_FAMILY_ID.colId)));
            to_return.setAuthorizationTokenId(cursor.getLong(getColumnIndex(cursor, AuthorizationCode.COL_INDEX.AUTHORIZATION_TOKEN_ID.colId)));
            return to_return;
        } catch (Exception e) {
            MAPLog.e(LOG_TAG, "" + e.getMessage(), e);
            return null;
        }
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public String getTableName() {
        return DatabaseHelper.authorizationCodeTable;
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public String[] getAllColumns() {
        return ALL_COLUMNS;
    }

    public List<AuthorizationCode> findByAppId(String appId) {
        return findAllRowsBySingleColumn(ALL_COLUMNS[AuthorizationCode.COL_INDEX.APP_FAMILY_ID.colId], appId);
    }

    public int deleteByAppId(String appId) {
        return deleteRowsBySingleColumn(ALL_COLUMNS[AuthorizationCode.COL_INDEX.APP_FAMILY_ID.colId], appId);
    }
}
