package com.inmobi.commons.analytics.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.inmobi.commons.analytics.net.AnalyticsNetworkManager;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AnalyticsDatabaseManager {
    private static AnalyticsDatabaseManager c;
    private static final String[] d = {AnalyticsSQLiteHelper.GENERAL_ID, AnalyticsSQLiteHelper.EVENT_LIST_EVENT_ID, "type", AnalyticsSQLiteHelper.EVENT_LIST_SID, "ts", AnalyticsSQLiteHelper.EVENT_LIST_SSTS, AnalyticsSQLiteHelper.EVENT_LIST_AM};
    private static final String[] e = {AnalyticsSQLiteHelper.GENERAL_ID, "levelid", "levelname"};
    private static final String[] f = {AnalyticsSQLiteHelper.GENERAL_ID, "levelid", "levelname", AnalyticsSQLiteHelper.LEVEL_END_LEVEL_STATUS, AnalyticsSQLiteHelper.LEVEL_END_TIME_TAKEN, AnalyticsSQLiteHelper.LEVEL_END_ATTEMPT_COUNT, AnalyticsSQLiteHelper.LEVEL_END_ATTEMPT_TIME};
    private static final String[] g = {AnalyticsSQLiteHelper.GENERAL_ID, AnalyticsSQLiteHelper.CUSTOM_EVENT_EVENT_NAME};
    private static final String[] h = {AnalyticsSQLiteHelper.GENERAL_ID, AnalyticsSQLiteHelper.USER_ATTRIBUTE_NAME, AnalyticsSQLiteHelper.USER_ATTRIBUTE_VALUE};
    private static final String[] i = {AnalyticsSQLiteHelper.GENERAL_ID, "levelid", AnalyticsSQLiteHelper.ATTEMPT_DATA_BEGIN_TIME, AnalyticsSQLiteHelper.ATTEMPT_DATA_TOTAL_COUNT, AnalyticsSQLiteHelper.ATTEMPT_DATA_TOTAL_TIME};
    private static final String[] j = {AnalyticsSQLiteHelper.GENERAL_ID, AnalyticsSQLiteHelper.TRANSACTION_ITEM_NAME, AnalyticsSQLiteHelper.TRANSACTION_ITEM_TYPE, AnalyticsSQLiteHelper.TRANSACTION_ITEM_COUNT, AnalyticsSQLiteHelper.TRANSACTION_ITEM_DESCRIPTION, AnalyticsSQLiteHelper.TRANSACTION_ITEM_ITEM_PRICE, AnalyticsSQLiteHelper.TRANSACTION_ITEM_CURRENCY_CODE, AnalyticsSQLiteHelper.TRANSACTION_PRODUCT_ID, AnalyticsSQLiteHelper.TRANSACTION_ID, AnalyticsSQLiteHelper.TRANSACTION_STATUS};
    private AnalyticsSQLiteHelper a;
    private SQLiteDatabase b;

    private AnalyticsDatabaseManager() {
    }

    public static synchronized AnalyticsDatabaseManager getInstance() {
        if (c == null) {
            c = new AnalyticsDatabaseManager();
            File databasePath = InternalSDKUtil.getContext().getDatabasePath(AnalyticsSQLiteHelper.OLD_DATABASE_NAME);
            if (databasePath.isFile()) {
                databasePath.renameTo(InternalSDKUtil.getContext().getDatabasePath(AnalyticsSQLiteHelper.DATABASE_NAME));
                SessionInfo.updatedFromOldSDK(InternalSDKUtil.getContext());
            }
            c.a = new AnalyticsSQLiteHelper(InternalSDKUtil.getContext());
        }
        return c;
    }

    private void a() {
        this.b = this.a.getWritableDatabase();
    }

    private void b() {
        this.a.close();
    }

    public synchronized void insertEvents(AnalyticsEvent analyticsEvent) {
        try {
            a();
            a(analyticsEvent, this.b.compileStatement("SELECT COUNT(*) FROM eventlist").simpleQueryForLong());
            b();
        } catch (Exception e2) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Error in inserting into DB.", e2);
            e2.printStackTrace();
        }
    }

    private void a(AnalyticsEvent analyticsEvent, long j2) {
        String str;
        String str2;
        String str3;
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IMAppDatabaseManager->insertEvents-" + analyticsEvent.getEventType());
        if (j2 < AnalyticsUtils.getMaxdbcount()) {
            ContentValues contentValues = new ContentValues();
            long jInsert = -1;
            long eventTimeStamp = analyticsEvent.getEventTimeStamp();
            if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_LEVEL_BEGIN)) {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put(AnalyticsSQLiteHelper.ATTEMPT_DATA_BEGIN_TIME, Long.valueOf(eventTimeStamp));
                SQLiteDatabase sQLiteDatabase = this.b;
                String[] strArr = {analyticsEvent.getEventLevelId()};
                if ((!(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.update(AnalyticsSQLiteHelper.TABLE_ATTEMPT_DATA, contentValues2, "levelid = ?", strArr) : SQLiteInstrumentation.update(sQLiteDatabase, AnalyticsSQLiteHelper.TABLE_ATTEMPT_DATA, contentValues2, "levelid = ?", strArr)) <= 0) {
                    contentValues2.put("levelid", analyticsEvent.getEventLevelId());
                    contentValues2.put(AnalyticsSQLiteHelper.ATTEMPT_DATA_TOTAL_COUNT, Integer.toString(0));
                    contentValues2.put(AnalyticsSQLiteHelper.ATTEMPT_DATA_TOTAL_TIME, Integer.toString(0));
                    SQLiteDatabase sQLiteDatabase2 = this.b;
                    if (sQLiteDatabase2 instanceof SQLiteDatabase) {
                        SQLiteInstrumentation.insert(sQLiteDatabase2, AnalyticsSQLiteHelper.TABLE_ATTEMPT_DATA, null, contentValues2);
                    } else {
                        sQLiteDatabase2.insert(AnalyticsSQLiteHelper.TABLE_ATTEMPT_DATA, null, contentValues2);
                    }
                }
                contentValues.put("levelid", analyticsEvent.getEventLevelId());
                contentValues.put("levelname", analyticsEvent.getEventLevelName());
                SQLiteDatabase sQLiteDatabase3 = this.b;
                jInsert = !(sQLiteDatabase3 instanceof SQLiteDatabase) ? sQLiteDatabase3.insert(AnalyticsSQLiteHelper.TABLE_LEVEL_BEGIN, null, contentValues) : SQLiteInstrumentation.insert(sQLiteDatabase3, AnalyticsSQLiteHelper.TABLE_LEVEL_BEGIN, null, contentValues);
            } else if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_LEVEL_END)) {
                SQLiteDatabase sQLiteDatabase4 = this.b;
                String[] strArr2 = i;
                String[] strArr3 = {analyticsEvent.getEventLevelId()};
                Cursor cursorQuery = !(sQLiteDatabase4 instanceof SQLiteDatabase) ? sQLiteDatabase4.query(AnalyticsSQLiteHelper.TABLE_ATTEMPT_DATA, strArr2, "levelid = ?", strArr3, null, null, null, "1") : SQLiteInstrumentation.query(sQLiteDatabase4, AnalyticsSQLiteHelper.TABLE_ATTEMPT_DATA, strArr2, "levelid = ?", strArr3, null, null, null, "1");
                if (cursorQuery.getCount() <= 0) {
                    str = "0";
                    str2 = "0";
                    str3 = "0";
                } else {
                    cursorQuery.moveToFirst();
                    long j3 = eventTimeStamp - Long.parseLong(cursorQuery.getString(2));
                    String string = Long.toString(j3);
                    String string2 = Long.toString(j3 + Long.parseLong(cursorQuery.getString(4)));
                    String string3 = Integer.toString(Integer.parseInt(cursorQuery.getString(3)) + 1);
                    ContentValues contentValues3 = new ContentValues();
                    contentValues3.put(AnalyticsSQLiteHelper.ATTEMPT_DATA_TOTAL_COUNT, string3);
                    contentValues3.put(AnalyticsSQLiteHelper.ATTEMPT_DATA_TOTAL_TIME, string2);
                    SQLiteDatabase sQLiteDatabase5 = this.b;
                    String[] strArr4 = {analyticsEvent.getEventLevelId()};
                    if (sQLiteDatabase5 instanceof SQLiteDatabase) {
                        SQLiteInstrumentation.update(sQLiteDatabase5, AnalyticsSQLiteHelper.TABLE_ATTEMPT_DATA, contentValues3, "levelid = ?", strArr4);
                    } else {
                        sQLiteDatabase5.update(AnalyticsSQLiteHelper.TABLE_ATTEMPT_DATA, contentValues3, "levelid = ?", strArr4);
                    }
                    str = string2;
                    str2 = string3;
                    str3 = string;
                }
                cursorQuery.close();
                contentValues.put("levelid", analyticsEvent.getEventLevelId());
                contentValues.put(AnalyticsSQLiteHelper.LEVEL_END_LEVEL_STATUS, analyticsEvent.getEventLevelStatus());
                contentValues.put("levelname", analyticsEvent.getEventLevelName());
                contentValues.put(AnalyticsSQLiteHelper.LEVEL_END_TIME_TAKEN, str3);
                contentValues.put(AnalyticsSQLiteHelper.LEVEL_END_ATTEMPT_COUNT, str2);
                contentValues.put(AnalyticsSQLiteHelper.LEVEL_END_ATTEMPT_TIME, str);
                SQLiteDatabase sQLiteDatabase6 = this.b;
                jInsert = !(sQLiteDatabase6 instanceof SQLiteDatabase) ? sQLiteDatabase6.insert(AnalyticsSQLiteHelper.TABLE_LEVEL_END, null, contentValues) : SQLiteInstrumentation.insert(sQLiteDatabase6, AnalyticsSQLiteHelper.TABLE_LEVEL_END, null, contentValues);
            } else if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_TAG_TRANSACTION)) {
                contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_ITEM_NAME, analyticsEvent.getTransactionItemName());
                int transactionItemType = analyticsEvent.getTransactionItemType();
                if (AnalyticsEvent.TRANSACTION_ITEM_TYPE.INVALID.getValue() != transactionItemType) {
                    contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_ITEM_TYPE, Integer.valueOf(transactionItemType));
                }
                int transactionItemCount = analyticsEvent.getTransactionItemCount();
                if (transactionItemCount > 0) {
                    contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_ITEM_COUNT, Integer.valueOf(transactionItemCount));
                }
                contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_ITEM_DESCRIPTION, analyticsEvent.getTransactionItemDescription());
                contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_ITEM_ITEM_PRICE, Double.valueOf(analyticsEvent.getTransactionItemPrice()));
                contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_ITEM_CURRENCY_CODE, analyticsEvent.getTransactionCurrencyCode());
                contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_PRODUCT_ID, analyticsEvent.getTransactionProductId());
                contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_ID, analyticsEvent.getTransactionId());
                int transactionStatus = analyticsEvent.getTransactionStatus();
                if (AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.INVALID.getValue() != transactionStatus) {
                    contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_STATUS, Integer.valueOf(transactionStatus));
                }
                SQLiteDatabase sQLiteDatabase7 = this.b;
                jInsert = !(sQLiteDatabase7 instanceof SQLiteDatabase) ? sQLiteDatabase7.insert(AnalyticsSQLiteHelper.TABLE_TRANSACTION, null, contentValues) : SQLiteInstrumentation.insert(sQLiteDatabase7, AnalyticsSQLiteHelper.TABLE_TRANSACTION, null, contentValues);
            } else if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_CUSTOM_EVENT)) {
                contentValues.put(AnalyticsSQLiteHelper.CUSTOM_EVENT_EVENT_NAME, analyticsEvent.getEventCustomName());
                SQLiteDatabase sQLiteDatabase8 = this.b;
                jInsert = !(sQLiteDatabase8 instanceof SQLiteDatabase) ? sQLiteDatabase8.insert(AnalyticsSQLiteHelper.TABLE_CUSTOM_EVENT, null, contentValues) : SQLiteInstrumentation.insert(sQLiteDatabase8, AnalyticsSQLiteHelper.TABLE_CUSTOM_EVENT, null, contentValues);
            } else if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_USER_ATTRIBUTE)) {
                contentValues.put(AnalyticsSQLiteHelper.USER_ATTRIBUTE_NAME, analyticsEvent.getAttributeName());
                contentValues.put(AnalyticsSQLiteHelper.USER_ATTRIBUTE_VALUE, analyticsEvent.getAttributeValue());
                SQLiteDatabase sQLiteDatabase9 = this.b;
                jInsert = !(sQLiteDatabase9 instanceof SQLiteDatabase) ? sQLiteDatabase9.insert(AnalyticsSQLiteHelper.TABLE_USER_ATTRIBUTE, null, contentValues) : SQLiteInstrumentation.insert(sQLiteDatabase9, AnalyticsSQLiteHelper.TABLE_USER_ATTRIBUTE, null, contentValues);
            }
            ContentValues contentValues4 = new ContentValues();
            contentValues4.put(AnalyticsSQLiteHelper.EVENT_LIST_EVENT_ID, Long.valueOf(jInsert));
            contentValues4.put("type", analyticsEvent.getEventType());
            contentValues4.put(AnalyticsSQLiteHelper.EVENT_LIST_SID, analyticsEvent.getEventSessionId());
            contentValues4.put("ts", Long.valueOf(analyticsEvent.getEventTimeStamp()));
            contentValues4.put(AnalyticsSQLiteHelper.EVENT_LIST_SSTS, Long.valueOf(analyticsEvent.getEventSessionTimeStamp()));
            contentValues4.put(AnalyticsSQLiteHelper.EVENT_LIST_AM, analyticsEvent.getEventAttributeMap());
            SQLiteDatabase sQLiteDatabase10 = this.b;
            if (sQLiteDatabase10 instanceof SQLiteDatabase) {
                SQLiteInstrumentation.insert(sQLiteDatabase10, AnalyticsSQLiteHelper.TABLE_EVENT_LIST, null, contentValues4);
            } else {
                sQLiteDatabase10.insert(AnalyticsSQLiteHelper.TABLE_EVENT_LIST, null, contentValues4);
            }
        } else {
            Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Database full");
        }
        if (!AnalyticsUtils.getStartHandle() && AnalyticsNetworkManager.getHandler() != null) {
            AnalyticsUtils.setStartHandle(true);
            AnalyticsNetworkManager.getHandler().sendEmptyMessageDelayed(1001, AnalyticsUtils.getTimeinterval());
        }
    }

    public synchronized List<AnalyticsEvent> getEvents() {
        List<AnalyticsEvent> arrayList;
        try {
            a();
            arrayList = c();
            b();
        } catch (Exception e2) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Error reading events from DB.");
            arrayList = new ArrayList<>();
        }
        return arrayList;
    }

    private List<AnalyticsEvent> c() {
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IMAppDatabaseManager->getEvents");
        ArrayList arrayList = new ArrayList();
        if (!this.b.isOpen()) {
            android.util.Log.v(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IMAppDatabaseManager->getEvents()-database is not open");
            return arrayList;
        }
        SQLiteDatabase sQLiteDatabase = this.b;
        String[] strArr = d;
        String maxevents = AnalyticsUtils.getMaxevents();
        Cursor cursorQuery = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.query(AnalyticsSQLiteHelper.TABLE_EVENT_LIST, strArr, null, null, null, null, null, maxevents) : SQLiteInstrumentation.query(sQLiteDatabase, AnalyticsSQLiteHelper.TABLE_EVENT_LIST, strArr, null, null, null, null, null, maxevents);
        cursorQuery.moveToFirst();
        while (!cursorQuery.isAfterLast()) {
            AnalyticsEvent analyticsEventA = a(cursorQuery);
            analyticsEventA.setEventTableId(cursorQuery.getLong(0));
            arrayList.add(analyticsEventA);
            cursorQuery.moveToNext();
        }
        cursorQuery.close();
        return arrayList;
    }

    private AnalyticsEvent a(Cursor cursor) {
        Cursor cursorQuery;
        AnalyticsEvent analyticsEvent = new AnalyticsEvent(cursor.getString(2));
        analyticsEvent.setEventSessionId(cursor.getString(3));
        analyticsEvent.setEventId(cursor.getLong(0));
        analyticsEvent.setEventTimeStamp(cursor.getLong(4));
        analyticsEvent.setEventSessionTimeStamp(cursor.getLong(5));
        analyticsEvent.setEventAttributeMap(cursor.getString(6));
        long j2 = cursor.getLong(1);
        String string = Long.toString(j2);
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IMAppDatabaseManager->" + analyticsEvent.getEventType() + "-" + j2);
        if (j2 > -1) {
            if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_LEVEL_BEGIN)) {
                SQLiteDatabase sQLiteDatabase = this.b;
                String[] strArr = e;
                String[] strArr2 = {string};
                cursorQuery = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.query(AnalyticsSQLiteHelper.TABLE_LEVEL_BEGIN, strArr, "_id = ?", strArr2, null, null, null) : SQLiteInstrumentation.query(sQLiteDatabase, AnalyticsSQLiteHelper.TABLE_LEVEL_BEGIN, strArr, "_id = ?", strArr2, null, null, null);
                cursorQuery.moveToFirst();
                analyticsEvent.setEventLevelId(cursorQuery.getString(1));
                analyticsEvent.setEventLevelName(cursorQuery.getString(2));
            } else if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_LEVEL_END)) {
                SQLiteDatabase sQLiteDatabase2 = this.b;
                String[] strArr3 = f;
                String[] strArr4 = {string};
                cursorQuery = !(sQLiteDatabase2 instanceof SQLiteDatabase) ? sQLiteDatabase2.query(AnalyticsSQLiteHelper.TABLE_LEVEL_END, strArr3, "_id = ?", strArr4, null, null, null) : SQLiteInstrumentation.query(sQLiteDatabase2, AnalyticsSQLiteHelper.TABLE_LEVEL_END, strArr3, "_id = ?", strArr4, null, null, null);
                cursorQuery.moveToFirst();
                analyticsEvent.setEventLevelId(cursorQuery.getString(1));
                analyticsEvent.setEventLevelName(cursorQuery.getString(2));
                analyticsEvent.setEventLevelStatus(cursorQuery.getString(3));
                analyticsEvent.setEventTimeTaken(cursorQuery.getString(4));
                analyticsEvent.setEventAttemptCount(cursorQuery.getString(5));
                analyticsEvent.setEventAttemptTime(cursorQuery.getString(6));
            } else if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_CUSTOM_EVENT)) {
                SQLiteDatabase sQLiteDatabase3 = this.b;
                String[] strArr5 = g;
                String[] strArr6 = {string};
                cursorQuery = !(sQLiteDatabase3 instanceof SQLiteDatabase) ? sQLiteDatabase3.query(AnalyticsSQLiteHelper.TABLE_CUSTOM_EVENT, strArr5, "_id = ?", strArr6, null, null, null) : SQLiteInstrumentation.query(sQLiteDatabase3, AnalyticsSQLiteHelper.TABLE_CUSTOM_EVENT, strArr5, "_id = ?", strArr6, null, null, null);
                cursorQuery.moveToFirst();
                analyticsEvent.setEventCustomName(cursorQuery.getString(1));
            } else if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_USER_ATTRIBUTE)) {
                SQLiteDatabase sQLiteDatabase4 = this.b;
                String[] strArr7 = h;
                String[] strArr8 = {string};
                cursorQuery = !(sQLiteDatabase4 instanceof SQLiteDatabase) ? sQLiteDatabase4.query(AnalyticsSQLiteHelper.TABLE_USER_ATTRIBUTE, strArr7, "_id = ?", strArr8, null, null, null) : SQLiteInstrumentation.query(sQLiteDatabase4, AnalyticsSQLiteHelper.TABLE_USER_ATTRIBUTE, strArr7, "_id = ?", strArr8, null, null, null);
                cursorQuery.moveToFirst();
                analyticsEvent.setUserAttribute(cursorQuery.getString(1), cursorQuery.getString(2));
            } else if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_TAG_TRANSACTION)) {
                SQLiteDatabase sQLiteDatabase5 = this.b;
                String[] strArr9 = j;
                String[] strArr10 = {string};
                cursorQuery = !(sQLiteDatabase5 instanceof SQLiteDatabase) ? sQLiteDatabase5.query(AnalyticsSQLiteHelper.TABLE_TRANSACTION, strArr9, "_id = ?", strArr10, null, null, null) : SQLiteInstrumentation.query(sQLiteDatabase5, AnalyticsSQLiteHelper.TABLE_TRANSACTION, strArr9, "_id = ?", strArr10, null, null, null);
                cursorQuery.moveToFirst();
                analyticsEvent.setTransactionItemName(cursorQuery.getString(1));
                analyticsEvent.setTransactionItemType(cursorQuery.getInt(2));
                analyticsEvent.setTransactionItemCount(cursorQuery.getInt(3));
                analyticsEvent.setTransactionItemDescription(cursorQuery.getString(4));
                analyticsEvent.setTransactionItemPrice(cursorQuery.getDouble(5));
                analyticsEvent.setTransactionCurrencyCode(cursorQuery.getString(6));
                analyticsEvent.setTransactionProductId(cursorQuery.getString(7));
                analyticsEvent.setTransactionId(cursorQuery.getString(8));
                analyticsEvent.setTransactionStatus(cursorQuery.getInt(9));
            } else {
                cursorQuery = null;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
        return analyticsEvent;
    }

    public synchronized void deleteEvents(List<Long> list) {
        try {
            a();
            a(list);
            b();
        } catch (Exception e2) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Error deleting from DB.");
        }
    }

    private void a(List<Long> list) {
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IMAppDatabaseManager->deleteEvents");
        Iterator<Long> it = list.iterator();
        while (it.hasNext()) {
            String string = it.next().toString();
            SQLiteDatabase sQLiteDatabase = this.b;
            String[] strArr = d;
            String[] strArr2 = {string};
            Cursor cursorQuery = !(sQLiteDatabase instanceof SQLiteDatabase) ? sQLiteDatabase.query(AnalyticsSQLiteHelper.TABLE_EVENT_LIST, strArr, "_id=?", strArr2, null, null, null, "1") : SQLiteInstrumentation.query(sQLiteDatabase, AnalyticsSQLiteHelper.TABLE_EVENT_LIST, strArr, "_id=?", strArr2, null, null, null, "1");
            cursorQuery.moveToFirst();
            Long lValueOf = Long.valueOf(cursorQuery.getLong(1));
            String string2 = lValueOf.toString();
            String string3 = cursorQuery.getString(2);
            if (lValueOf.longValue() > -1) {
                if (string3.equals(AnalyticsEvent.TYPE_LEVEL_BEGIN)) {
                    SQLiteDatabase sQLiteDatabase2 = this.b;
                    String[] strArr3 = {string2};
                    if (sQLiteDatabase2 instanceof SQLiteDatabase) {
                        SQLiteInstrumentation.delete(sQLiteDatabase2, AnalyticsSQLiteHelper.TABLE_LEVEL_BEGIN, "_id = ?", strArr3);
                    } else {
                        sQLiteDatabase2.delete(AnalyticsSQLiteHelper.TABLE_LEVEL_BEGIN, "_id = ?", strArr3);
                    }
                } else if (string3.equals(AnalyticsEvent.TYPE_LEVEL_END)) {
                    SQLiteDatabase sQLiteDatabase3 = this.b;
                    String[] strArr4 = {string2};
                    if (sQLiteDatabase3 instanceof SQLiteDatabase) {
                        SQLiteInstrumentation.delete(sQLiteDatabase3, AnalyticsSQLiteHelper.TABLE_LEVEL_END, "_id = ?", strArr4);
                    } else {
                        sQLiteDatabase3.delete(AnalyticsSQLiteHelper.TABLE_LEVEL_END, "_id = ?", strArr4);
                    }
                } else if (string3.equals(AnalyticsEvent.TYPE_CUSTOM_EVENT)) {
                    SQLiteDatabase sQLiteDatabase4 = this.b;
                    String[] strArr5 = {string2};
                    if (sQLiteDatabase4 instanceof SQLiteDatabase) {
                        SQLiteInstrumentation.delete(sQLiteDatabase4, AnalyticsSQLiteHelper.TABLE_CUSTOM_EVENT, "_id = ?", strArr5);
                    } else {
                        sQLiteDatabase4.delete(AnalyticsSQLiteHelper.TABLE_CUSTOM_EVENT, "_id = ?", strArr5);
                    }
                } else if (string3.equals(AnalyticsEvent.TYPE_USER_ATTRIBUTE)) {
                    SQLiteDatabase sQLiteDatabase5 = this.b;
                    String[] strArr6 = {string2};
                    if (sQLiteDatabase5 instanceof SQLiteDatabase) {
                        SQLiteInstrumentation.delete(sQLiteDatabase5, AnalyticsSQLiteHelper.TABLE_USER_ATTRIBUTE, "_id = ?", strArr6);
                    } else {
                        sQLiteDatabase5.delete(AnalyticsSQLiteHelper.TABLE_USER_ATTRIBUTE, "_id = ?", strArr6);
                    }
                } else if (string3.equals(AnalyticsEvent.TYPE_TAG_TRANSACTION)) {
                    SQLiteDatabase sQLiteDatabase6 = this.b;
                    String[] strArr7 = {string2};
                    if (sQLiteDatabase6 instanceof SQLiteDatabase) {
                        SQLiteInstrumentation.delete(sQLiteDatabase6, AnalyticsSQLiteHelper.TABLE_TRANSACTION, "_id = ?", strArr7);
                    } else {
                        sQLiteDatabase6.delete(AnalyticsSQLiteHelper.TABLE_TRANSACTION, "_id = ?", strArr7);
                    }
                }
            }
            cursorQuery.close();
            SQLiteDatabase sQLiteDatabase7 = this.b;
            String[] strArr8 = {string};
            if (sQLiteDatabase7 instanceof SQLiteDatabase) {
                SQLiteInstrumentation.delete(sQLiteDatabase7, AnalyticsSQLiteHelper.TABLE_EVENT_LIST, "_id = ?", strArr8);
            } else {
                sQLiteDatabase7.delete(AnalyticsSQLiteHelper.TABLE_EVENT_LIST, "_id = ?", strArr8);
            }
        }
    }
}
