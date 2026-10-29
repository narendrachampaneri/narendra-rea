package com.amazon.identity.auth.device.datastore;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.amazon.identity.auth.device.dataobject.AbstractDataObject;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractDataSource<K extends AbstractDataObject> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final int DELETE_SUCCEEDED = 1;
    public static final int INSERT_FAILED = -1;
    private static final String LOG_TAG;
    private static final int UPDATE_SUCCEEDED = 1;
    protected SQLiteDatabase database;

    public abstract K cursorToObject(Cursor cursor);

    public abstract String[] getAllColumns();

    public abstract String getLogTag();

    public abstract String getTableName();

    static {
        $assertionsDisabled = !AbstractDataSource.class.desiredAssertionStatus();
        LOG_TAG = AbstractDataSource.class.getName();
    }

    public AbstractDataSource(SQLiteDatabase database) {
        if (database == null) {
            throw new IllegalArgumentException("database can't be null!");
        }
        this.database = database;
    }

    public K findByRowId(long j) {
        return (K) findOneRow(new String[]{"rowid"}, new String[]{"" + j});
    }

    public K findOneRow(String[] strArr, String[] strArr2) {
        Cursor cursorQuery = null;
        K k = null;
        try {
            String whereClause = getWhereClause(strArr, strArr2);
            SQLiteDatabase sQLiteDatabase = this.database;
            String tableName = getTableName();
            String[] allColumns = getAllColumns();
            cursorQuery = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.query(tableName, allColumns, whereClause, null, null, null, null) : SQLiteInstrumentation.query(sQLiteDatabase, tableName, allColumns, whereClause, null, null, null, null);
            if (cursorQuery != null) {
                cursorQuery.moveToFirst();
                k = (K) cursorToObject(cursorQuery);
            }
        } catch (IllegalArgumentException e) {
            MAPLog.e(getLogTag(), "" + e.getMessage(), e);
            k = null;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
        return k;
    }

    protected K findOneRowBySingleColumn(String str, String str2) {
        return (K) findOneRow(new String[]{str}, new String[]{str2});
    }

    public List<K> findAllRows(String[] selectionFields, String[] selectionValues) {
        Cursor cursor = null;
        ArrayList arrayList = new ArrayList();
        try {
            try {
                String whereClause = getWhereClause(selectionFields, selectionValues);
                SQLiteDatabase sQLiteDatabase = this.database;
                String tableName = getTableName();
                String[] allColumns = getAllColumns();
                cursor = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.query(tableName, allColumns, whereClause, null, null, null, null) : SQLiteInstrumentation.query(sQLiteDatabase, tableName, allColumns, whereClause, null, null, null, null);
                if (cursor != null) {
                    cursor.moveToFirst();
                    while (!cursor.isAfterLast()) {
                        AbstractDataObject abstractDataObjectCursorToObject = cursorToObject(cursor);
                        if (abstractDataObjectCursorToObject != null) {
                            arrayList.add(abstractDataObjectCursorToObject);
                            cursor.moveToNext();
                        } else {
                            throw new IllegalArgumentException("cursor contains invalid object!");
                        }
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (IllegalArgumentException e) {
                MAPLog.e(getLogTag(), "" + e.getMessage(), e);
                arrayList.clear();
                if (cursor != null) {
                    cursor.close();
                }
            }
            return arrayList;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    protected List<K> findAllRowsBySingleColumn(String colName, String colValue) {
        return findAllRows(new String[]{colName}, new String[]{colValue});
    }

    public List<K> findAllRows() {
        return findAllRows(null, null);
    }

    public long insertRow(K object) {
        if (object == null) {
            return -1L;
        }
        MAPLog.pii(LOG_TAG, "Insert Row table=" + getTableName(), "vals=" + object.getValuesForInsert());
        SQLiteDatabase sQLiteDatabase = this.database;
        String tableName = getTableName();
        ContentValues valuesForInsert = object.getValuesForInsert();
        long rowId = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.insert(tableName, null, valuesForInsert) : SQLiteInstrumentation.insert(sQLiteDatabase, tableName, null, valuesForInsert);
        object.setRowId(rowId);
        return rowId;
    }

    public boolean deleteRow(long rowid) {
        SQLiteDatabase sQLiteDatabase = this.database;
        String tableName = getTableName();
        String str = "rowid = " + rowid;
        return (!(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.delete(tableName, str, null) : SQLiteInstrumentation.delete(sQLiteDatabase, tableName, str, null)) == 1;
    }

    public int deleteRows(String[] selectionFields, String[] selectionValues) {
        try {
            String whereClause = getWhereClause(selectionFields, selectionValues);
            SQLiteDatabase sQLiteDatabase = this.database;
            String tableName = getTableName();
            return !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.delete(tableName, whereClause, null) : SQLiteInstrumentation.delete(sQLiteDatabase, tableName, whereClause, null);
        } catch (IllegalArgumentException e) {
            MAPLog.e(getLogTag(), "" + e.getMessage(), e);
            return 0;
        }
    }

    protected int deleteRowsBySingleColumn(String colName, String colValue) {
        return deleteRows(new String[]{colName}, new String[]{colValue});
    }

    public int deleteAllRows() {
        return deleteRows(null, null);
    }

    public boolean updateRow(long rowid, ContentValues toUpdate) {
        if (toUpdate == null) {
            return false;
        }
        SQLiteDatabase sQLiteDatabase = this.database;
        String tableName = getTableName();
        String str = "rowid = " + rowid;
        return (!(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.update(tableName, toUpdate, str, null) : SQLiteInstrumentation.update(sQLiteDatabase, tableName, toUpdate, str, null)) == 1;
    }

    private static String getWhereClause(String[] selectionFields, String[] selectionValues) throws IllegalArgumentException {
        if (selectionFields == null && selectionValues == null) {
            return null;
        }
        if (selectionFields == null || selectionValues == null) {
            throw new IllegalArgumentException("Both arguments have to be either null or not null!");
        }
        if (selectionFields.length != selectionValues.length) {
            throw new IllegalArgumentException("selectionFields and selectionValues differ in length!");
        }
        String to_return = "";
        int i = 0;
        while (i < selectionFields.length) {
            to_return = (to_return + selectionFields[i] + (selectionValues[i] == null ? " IS NULL" : " = '" + selectionValues[i] + "'")) + (i != selectionFields.length + (-1) ? " AND " : "");
            i++;
        }
        return to_return;
    }

    public int getColumnIndex(Cursor cursor, int colIndex) throws IllegalArgumentException {
        if (!$assertionsDisabled && cursor == null) {
            throw new AssertionError();
        }
        if (colIndex < 0 || colIndex >= getAllColumns().length) {
            throw new IllegalArgumentException("colIndex is out of bound!");
        }
        return cursor.getColumnIndexOrThrow(getAllColumns()[colIndex]);
    }
}
