package com.amazon.identity.auth.device.datastore;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.amazon.identity.auth.device.utils.MAPUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AppInfoDataSource extends AbstractDataSource<AppInfo> {
    private static AppInfoDataSource INSTANCE;
    private static final String LOG_TAG = AppInfoDataSource.class.getName();
    private static final String[] ALL_COLUMNS = AppInfo.ALL_COLUMNS;

    private AppInfoDataSource(SQLiteDatabase database) {
        super(database);
    }

    public static synchronized AppInfoDataSource getInstance(Context context) {
        if (INSTANCE == null) {
            INSTANCE = new AppInfoDataSource(MAPUtils.getMAPdatabase(context));
        }
        return INSTANCE;
    }

    public AppInfo findByAppId(String appId) {
        return findOneRowBySingleColumn(ALL_COLUMNS[AppInfo.COL_INDEX.APP_FAMILY_ID.colId], appId);
    }

    public List<AppInfo> findByAppFamilyId(String appFamilyId) {
        return findAllRowsBySingleColumn(ALL_COLUMNS[AppInfo.COL_INDEX.APP_FAMILY_ID.colId], appFamilyId);
    }

    public AppInfo findByAppVariantId(String appVariantId) {
        return findOneRowBySingleColumn(ALL_COLUMNS[AppInfo.COL_INDEX.APP_VARIANT_ID.colId], appVariantId);
    }

    public AppInfo findByPackageName(String packageName) {
        return findOneRowBySingleColumn(ALL_COLUMNS[AppInfo.COL_INDEX.PACKAGE_NAME.colId], packageName);
    }

    public AppInfo findByPrimaryKey(String appVariantId) {
        return findByAppVariantId(appVariantId);
    }

    public int deleteByAppId(String appId) {
        return deleteRowsBySingleColumn(ALL_COLUMNS[AppInfo.COL_INDEX.APP_FAMILY_ID.colId], appId);
    }

    public int deleteByPackageName(String packageName) {
        return deleteRowsBySingleColumn(ALL_COLUMNS[AppInfo.COL_INDEX.PACKAGE_NAME.colId], packageName);
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public String getLogTag() {
        return LOG_TAG;
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public AppInfo cursorToObject(Cursor cursor) {
        if (cursor == null || cursor.getCount() == 0) {
            return null;
        }
        try {
            AppInfo to_return = new AppInfo();
            to_return.setRowId(cursor.getLong(getColumnIndex(cursor, AppInfo.COL_INDEX.ROW_ID.colId)));
            to_return.setAppFamilyId(cursor.getString(getColumnIndex(cursor, AppInfo.COL_INDEX.APP_FAMILY_ID.colId)));
            to_return.setAppVariantId(cursor.getString(getColumnIndex(cursor, AppInfo.COL_INDEX.APP_VARIANT_ID.colId)));
            to_return.setPackageName(cursor.getString(getColumnIndex(cursor, AppInfo.COL_INDEX.PACKAGE_NAME.colId)));
            to_return.setAllowedScopes(MAPUtils.toStringArray(cursor.getString(getColumnIndex(cursor, AppInfo.COL_INDEX.ALLOWED_SCOPES.colId)), AppInfo.DELIM));
            to_return.setGrantedPermissions(MAPUtils.toStringArray(cursor.getString(getColumnIndex(cursor, AppInfo.COL_INDEX.GRANTED_PERMISSIONS.colId)), AppInfo.DELIM));
            to_return.setClientId(cursor.getString(getColumnIndex(cursor, AppInfo.COL_INDEX.CLIENT_ID.colId)));
            to_return.setPayload(cursor.getString(getColumnIndex(cursor, AppInfo.COL_INDEX.PAYLOAD.colId)));
            return to_return;
        } catch (Exception e) {
            MAPLog.e(LOG_TAG, "" + e.getMessage(), e);
            return null;
        }
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public String getTableName() {
        return DatabaseHelper.appInfoTable;
    }

    @Override // com.amazon.identity.auth.device.datastore.AbstractDataSource
    public String[] getAllColumns() {
        return ALL_COLUMNS;
    }
}
