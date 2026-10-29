.class public Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AnalyticsSQLiteHelper.java"


# static fields
.field public static final ATTEMPT_DATA_BEGIN_TIME:Ljava/lang/String; = "begintime"

.field public static final ATTEMPT_DATA_LEVEL_ID:Ljava/lang/String; = "levelid"

.field public static final ATTEMPT_DATA_TOTAL_COUNT:Ljava/lang/String; = "totalcount"

.field public static final ATTEMPT_DATA_TOTAL_TIME:Ljava/lang/String; = "totaltime"

.field public static final CUSTOM_EVENT_EVENT_NAME:Ljava/lang/String; = "eventname"

.field public static final DATABASE_NAME:Ljava/lang/String; = "ltvp.db"

.field public static final EVENT_LIST_AM:Ljava/lang/String; = "am"

.field public static final EVENT_LIST_EVENT_ID:Ljava/lang/String; = "eventid"

.field public static final EVENT_LIST_SID:Ljava/lang/String; = "sid"

.field public static final EVENT_LIST_SSTS:Ljava/lang/String; = "ssts"

.field public static final EVENT_LIST_TS:Ljava/lang/String; = "ts"

.field public static final EVENT_LIST_TYPE:Ljava/lang/String; = "type"

.field public static final GENERAL_ID:Ljava/lang/String; = "_id"

.field public static final LEVEL_BEGIN_LEVEL_ID:Ljava/lang/String; = "levelid"

.field public static final LEVEL_BEGIN_LEVEL_NAME:Ljava/lang/String; = "levelname"

.field public static final LEVEL_END_ATTEMPT_COUNT:Ljava/lang/String; = "attemptcount"

.field public static final LEVEL_END_ATTEMPT_TIME:Ljava/lang/String; = "attempttime"

.field public static final LEVEL_END_LEVEL_ID:Ljava/lang/String; = "levelid"

.field public static final LEVEL_END_LEVEL_NAME:Ljava/lang/String; = "levelname"

.field public static final LEVEL_END_LEVEL_STATUS:Ljava/lang/String; = "levelstatus"

.field public static final LEVEL_END_TIME_TAKEN:Ljava/lang/String; = "timetaken"

.field public static final OLD_DATABASE_NAME:Ljava/lang/String; = "appengage.db"

.field public static final TABLE_ATTEMPT_DATA:Ljava/lang/String; = "attemptdata"

.field public static final TABLE_CUSTOM_EVENT:Ljava/lang/String; = "customevent"

.field public static final TABLE_EVENT_LIST:Ljava/lang/String; = "eventlist"

.field public static final TABLE_LEVEL_BEGIN:Ljava/lang/String; = "levelbegin"

.field public static final TABLE_LEVEL_END:Ljava/lang/String; = "levelend"

.field public static final TABLE_SESSION_LIST:Ljava/lang/String; = "sessionlist"

.field public static final TABLE_TRANSACTION:Ljava/lang/String; = "transactiondetail"

.field public static final TABLE_USER_ATTRIBUTE:Ljava/lang/String; = "attribute"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transactionId"

.field public static final TRANSACTION_ITEM_COUNT:Ljava/lang/String; = "itemCount"

.field public static final TRANSACTION_ITEM_CURRENCY_CODE:Ljava/lang/String; = "currencyCode"

.field public static final TRANSACTION_ITEM_DESCRIPTION:Ljava/lang/String; = "itemDescription"

.field public static final TRANSACTION_ITEM_ITEM_PRICE:Ljava/lang/String; = "itemPrice"

.field public static final TRANSACTION_ITEM_NAME:Ljava/lang/String; = "itemName"

.field public static final TRANSACTION_ITEM_TYPE:Ljava/lang/String; = "itemType"

.field public static final TRANSACTION_PRODUCT_ID:Ljava/lang/String; = "productId"

.field public static final TRANSACTION_STATUS:Ljava/lang/String; = "transactionStatus"

.field public static final USER_ATTRIBUTE_NAME:Ljava/lang/String; = "attributename"

.field public static final USER_ATTRIBUTE_VALUE:Ljava/lang/String; = "attributevalue"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 72
    const-string v0, "ltvp.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 73
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 77
    const-string v1, "CREATE TABLE IF NOT EXISTS eventlist (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, eventid INTEGER NOT NULL, type VARCHAR NOT NULL, sid VARCHAR NOT NULL, ts VARCHAR NOT NULL, ssts VARCHAR NOT NULL, am VARCHAR)"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    :goto_0
    const-string v1, "CREATE TABLE IF NOT EXISTS sessionlist (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, start INTEGER NOT NULL, end INTEGER NOT NULL)"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    :goto_1
    const-string v1, "CREATE TABLE IF NOT EXISTS levelbegin (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, levelid VARCHAR, levelname VARCHAR)"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    :goto_2
    const-string v1, "CREATE TABLE IF NOT EXISTS levelend (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, levelid VARCHAR, levelname VARCHAR, levelstatus VARCHAR, timetaken VARCHAR, attemptcount VARCHAR, attempttime VARCHAR)"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    :goto_3
    const-string v1, "CREATE TABLE IF NOT EXISTS transactiondetail (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, itemName VARCHAR, itemType INTEGER, itemCount INTEGER, itemDescription VARCHAR, itemPrice REAL, currencyCode VARCHAR, productId VARCHAR, transactionId VARCHAR, transactionStatus INTEGER)"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    :goto_4
    const-string v1, "CREATE TABLE IF NOT EXISTS customevent (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, eventname VARCHAR)"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    :goto_5
    const-string v1, "CREATE TABLE IF NOT EXISTS attribute (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, attributename VARCHAR, attributevalue VARCHAR)"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    :goto_6
    const-string v0, "CREATE TABLE IF NOT EXISTS attemptdata (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, levelid VARCHAR, begintime VARCHAR NOT NULL, totalcount VARCHAR NOT NULL, totaltime VARCHAR NOT NULL)"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_7

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    :goto_7
    return-void

    :cond_0
    move-object v0, p1

    .line 77
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 78
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p1

    .line 79
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v0, p1

    .line 80
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v0, p1

    .line 81
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v0, p1

    .line 82
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move-object v0, p1

    .line 83
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_6

    .line 84
    :cond_7
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 91
    const-class v0, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "DROP TABLE IF EXISTS eventlist"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    :goto_0
    const-string v1, "DROP TABLE IF EXISTS sessionlist"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    :goto_1
    const-string v1, "DROP TABLE IF EXISTS levelbegin"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    :goto_2
    const-string v1, "DROP TABLE IF EXISTS levelend"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    :goto_3
    const-string v1, "DROP TABLE IF EXISTS transactiondetail"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    :goto_4
    const-string v1, "DROP TABLE IF EXISTS customevent"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    :goto_5
    const-string v1, "DROP TABLE IF EXISTS attribute"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    :goto_6
    const-string v1, "DROP TABLE IF EXISTS attemptdata"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_7

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    :goto_7
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 105
    return-void

    :cond_0
    move-object v0, p1

    .line 94
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 95
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p1

    .line 96
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v0, p1

    .line 97
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v0, p1

    .line 98
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v0, p1

    .line 99
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move-object v0, p1

    .line 100
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object v0, p1

    .line 101
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_7
.end method
