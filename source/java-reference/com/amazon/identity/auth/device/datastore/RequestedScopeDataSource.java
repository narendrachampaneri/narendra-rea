package com.amazon.identity.auth.device.datastore;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.amazon.identity.auth.device.dataobject.RequestedScope;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.amazon.identity.auth.device.utils.MAPUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class RequestedScopeDataSource extends AbstractDataSource<RequestedScope> {
    private static RequestedScopeDataSource INSTANCE;
    private static final String LOG_TAG = RequestedScopeDataSource.class.getName();
    private static final String[] ALL_COLUMNS = RequestedScope.ALL_COLUMNS;

    private RequestedScopeDataSource(SQLiteDatabase database) {
        super(database);
    }

    public static synchronized RequestedScopeDataSource getInstance(Context context) {
        if (INSTANCE == null) {
            INSTANCE = new RequestedScopeDataSource(MAPUtils.getMAPdatabase(context));
        }
        return INSTANCE;
    }

    public List<RequestedScope> findByScope(String scopeValue) {
        return findAllRowsBySingleColumn(ALL_COLUMNS[RequestedScope.COL_INDEX.SCOPE.colId], scopeValue);
    }

    public List<RequestedScope> findByAppId(String appId) {
        return findAllRowsBySingleColumn(ALL_COLUMNS[RequestedScope.COL_INDEX.APP_FAMILY_ID.colId], appId);
    }

    public List<RequestedScope> findByDirectedId(String directedId) {
        return findAllRowsBySingleColumn(ALL_COLUMNS[RequestedScope.COL_INDEX.DIRECTED_ID.colId], directedId);
    }

    public List<RequestedScope> findByAuthorizationAccessTokenId(long atzTokenId) {
        return findAllRowsBySingleColumn(ALL_COLUMNS[RequestedScope.COL_INDEX.AUTHORIZATION_ACCESS_TOKEN_ID.colId], "" + atzTokenId);
    }

    public List<RequestedScope> findByAuthorizationRefreshTokenId(long atzTokenId) {
        return findAllRowsBySingleColumn(ALL_COLUMNS[RequestedScope.COL_INDEX.AUTHORIZATION_REFRESH_TOKEN_ID.colId], "" + atzTokenId);
    }

    public RequestedScope findByPrimaryKey(String scopeValue, String appId, String directedId) {
        String[] selectionFields = {ALL_COLUMNS[RequestedScope.COL_INDEX.SCOPE.colId], ALL_COLUMNS[RequestedScope.COL_INDEX.APP_FAMILY_ID.colId], ALL_COLUMNS[RequestedScope.COL_INDEX.DIRECTED_ID.colId]};
        String[] selectionValues = {scopeValue, appId, directedId};
        return findOneRow(selectionFields, selectionValues);
    }

    public int deleteByScope(String scopeValue) {
        return deleteRowsBySingleColumn(ALL_COLUMNS[RequestedScope.COL_INDEX.SCOPE.colId], scopeValue);
    }

    public int deleteByAppId(String appId) {
        return deleteRowsBySingleColumn(ALL_COLUMNS[RequestedScope.COL_INDEX.APP_FAMILY_ID.colId], appId);
    }

    public int deleteByDirectedId(String directedId) {
        return deleteRowsBySingleColumn(ALL_COLUMNS[RequestedScope.COL_INDEX.DIRECTED_ID.colId], directedId);
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public String getLogTag() {
        return LOG_TAG;
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public RequestedScope cursorToObject(Cursor cursor) {
        if (cursor == null || cursor.getCount() == 0) {
            return null;
        }
        try {
            RequestedScope to_return = new RequestedScope();
            to_return.setRowId(cursor.getLong(getColumnIndex(cursor, RequestedScope.COL_INDEX.ROW_ID.colId)));
            to_return.setScopeValue(cursor.getString(getColumnIndex(cursor, RequestedScope.COL_INDEX.SCOPE.colId)));
            to_return.setAppFamilyId(cursor.getString(getColumnIndex(cursor, RequestedScope.COL_INDEX.APP_FAMILY_ID.colId)));
            to_return.setDirectedId(cursor.getString(getColumnIndex(cursor, RequestedScope.COL_INDEX.DIRECTED_ID.colId)));
            to_return.setAuthorizationAccessTokenId(cursor.getLong(getColumnIndex(cursor, RequestedScope.COL_INDEX.AUTHORIZATION_ACCESS_TOKEN_ID.colId)));
            to_return.setAuthorizationRefreshTokenId(cursor.getLong(getColumnIndex(cursor, RequestedScope.COL_INDEX.AUTHORIZATION_REFRESH_TOKEN_ID.colId)));
            return to_return;
        } catch (Exception e) {
            MAPLog.e(LOG_TAG, "" + e.getMessage(), e);
            return null;
        }
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public String getTableName() {
        return DatabaseHelper.requestedScopeTable;
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public String[] getAllColumns() {
        return ALL_COLUMNS;
    }
}
