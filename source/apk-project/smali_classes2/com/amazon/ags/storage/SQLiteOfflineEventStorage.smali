.class public Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteOfflineEventStorage.java"

# interfaces
.implements Lcom/amazon/ags/storage/OfflineEventStorage;


# static fields
.field private static final DATABASE_VERSION:I = 0x2

.field private static final PRIMARY_KEY_NAME:Ljava/lang/String; = "id"

.field private static final TABLE_NAME:Ljava/lang/String; = "events"

.field private static final TAG:Ljava/lang/String;

.field private static final TEXT_KEY_NAME:Ljava/lang/String; = "text"


# instance fields
.field private final obfuscator:Lcom/amazon/ags/storage/StringObfuscator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ags/storage/StringObfuscator;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "obfuscator"    # Lcom/amazon/ags/storage/StringObfuscator;
    .param p3, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    iput-object p2, p0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->obfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    .line 40
    return-void
.end method


# virtual methods
.method public final declared-synchronized getAllEvents()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ags/storage/OfflineEventException;
        }
    .end annotation

    .prologue
    .line 240
    monitor-enter p0

    const/4 v3, 0x0

    .line 241
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 242
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 245
    .local v5, "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v5    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .local v8, "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 247
    const-string v12, "SELECT * FROM events"

    const/4 v13, 0x0

    instance-of v11, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v11, :cond_3

    invoke-virtual {v3, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 250
    :goto_0
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->obfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    if-eqz v11, :cond_5

    .line 252
    :cond_0
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 253
    .local v6, "eventId":J
    const/4 v11, 0x1

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, "text":Ljava/lang/String;
    iget-object v11, p0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->obfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    invoke-interface {v11, v9}, Lcom/amazon/ags/storage/StringObfuscator;->unobfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 257
    if-nez v9, :cond_4

    .line 258
    sget-object v11, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    const-string v12, "Failed to unobfuscate text."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v11, Lcom/amazon/ags/storage/OfflineEventException;

    const-string v12, "Failed to unobfuscate text."

    invoke-direct {v11, v12}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 270
    .end local v6    # "eventId":J
    .end local v9    # "text":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v5, v8

    .line 271
    .end local v8    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    .restart local v5    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :goto_1
    :try_start_2
    sget-object v11, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to open SQL database: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v11, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v11, v4}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v11

    :goto_2
    if-eqz v2, :cond_1

    .line 290
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_1
    if-eqz v3, :cond_2

    .line 294
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 240
    :catchall_1
    move-exception v11

    :goto_3
    monitor-exit p0

    throw v11

    .line 247
    .end local v5    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v8    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :cond_3
    :try_start_4
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v11, v0

    invoke-static {v11, v12, v13}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 262
    .restart local v6    # "eventId":J
    .restart local v9    # "text":Ljava/lang/String;
    :cond_4
    sget-object v11, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GT: eventId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", text: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v11, Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;

    new-instance v12, Lcom/amazon/ags/storage/OfflineEventId;

    invoke-direct {v12, v6, v7}, Lcom/amazon/ags/storage/OfflineEventId;-><init>(J)V

    new-instance v13, Lorg/json/JSONObject;

    invoke-static {v9}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;-><init>(Lcom/amazon/ags/storage/OfflineEventId;Lorg/json/JSONObject;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v11

    if-nez v11, :cond_0

    .line 289
    .end local v6    # "eventId":J
    .end local v9    # "text":Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_6

    .line 290
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_6
    if-eqz v3, :cond_7

    .line 294
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_7
    monitor-exit p0

    return-object v8

    .line 274
    .end local v8    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v5    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :catch_1
    move-exception v4

    .line 275
    .local v4, "e":Lorg/json/JSONException;
    :goto_4
    :try_start_6
    sget-object v11, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to parse JSON: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v11, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v11, v4}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 278
    .end local v4    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v4

    .line 279
    .local v4, "e":Ljava/lang/IllegalStateException;
    :goto_5
    sget-object v11, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SQL database is in an invalid state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v11, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v11, v4}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 282
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v10

    .line 283
    .local v10, "throwable":Ljava/lang/Throwable;
    :goto_6
    sget-object v11, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexepected error/exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v11, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v11, v10}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 289
    .end local v5    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .end local v10    # "throwable":Ljava/lang/Throwable;
    .restart local v8    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :catchall_2
    move-exception v11

    move-object v5, v8

    .end local v8    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v5    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    goto/16 :goto_2

    .line 282
    .end local v5    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v8    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :catch_4
    move-exception v10

    move-object v5, v8

    .end local v8    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v5    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    goto :goto_6

    .line 278
    .end local v5    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v8    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :catch_5
    move-exception v4

    move-object v5, v8

    .end local v8    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v5    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    goto :goto_5

    .line 274
    .end local v5    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v8    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :catch_6
    move-exception v4

    move-object v5, v8

    .end local v8    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v5    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    goto :goto_4

    .line 270
    :catch_7
    move-exception v4

    goto/16 :goto_1

    .line 240
    .end local v5    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v8    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :catchall_3
    move-exception v11

    move-object v5, v8

    .end local v8    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v5    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    goto/16 :goto_3
.end method

.method public final declared-synchronized getEvent(Lcom/amazon/ags/storage/OfflineEventId;)Lorg/json/JSONObject;
    .locals 22
    .param p1, "id"    # Lcom/amazon/ags/storage/OfflineEventId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ags/storage/OfflineEventException;
        }
    .end annotation

    .prologue
    .line 185
    monitor-enter p0

    const/4 v2, 0x0

    .line 186
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v18, 0x0

    .line 189
    .local v18, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEvent() event id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/ags/storage/OfflineEventId;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 192
    const-string v3, "events"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "text"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/ags/storage/OfflineEventId;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 195
    :goto_0
    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 196
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 198
    .local v20, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->obfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    if-eqz v3, :cond_3

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->obfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lcom/amazon/ags/storage/StringObfuscator;->unobfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 200
    if-nez v20, :cond_3

    .line 201
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    const-string v4, "Failed to unobfuscate text."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    const-string v4, "Failed to unobfuscate text."

    invoke-direct {v3, v4}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v20    # "text":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 211
    .local v19, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open SQL database: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .end local v19    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    if-eqz v18, :cond_0

    .line 228
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_0
    if-eqz v2, :cond_1

    .line 232
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 192
    :cond_2
    :try_start_3
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    goto :goto_0

    .line 206
    .restart local v20    # "text":Ljava/lang/String;
    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-static/range {v20 .. v20}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 227
    if-eqz v18, :cond_4

    .line 228
    :try_start_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_4
    if-eqz v2, :cond_5

    .line 232
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    monitor-exit p0

    return-object v3

    .line 208
    .end local v20    # "text":Ljava/lang/String;
    :cond_6
    :try_start_5
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get text for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/ags/storage/OfflineEventId;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 214
    :catch_1
    move-exception v19

    .line 215
    .local v19, "e":Lorg/json/JSONException;
    :try_start_6
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 218
    .end local v19    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v19

    .line 219
    .local v19, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL database is in an invalid state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 222
    .end local v19    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v21

    .line 223
    .local v21, "throwable":Ljava/lang/Throwable;
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexepected error/exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public final declared-synchronized getSize()I
    .locals 9

    .prologue
    const/4 v6, -0x1

    .line 302
    monitor-enter p0

    const/4 v2, 0x0

    .line 303
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 306
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 307
    const-string v7, "SELECT * FROM events"

    const/4 v8, 0x0

    instance-of v5, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_2

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 309
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 321
    if-eqz v1, :cond_0

    .line 322
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_0
    if-eqz v2, :cond_1

    .line 326
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_1
    monitor-exit p0

    return v5

    .line 307
    :cond_2
    :try_start_2
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-static {v5, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 311
    :catch_0
    move-exception v3

    .line 312
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    sget-object v5, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open SQL database: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    if-eqz v1, :cond_3

    .line 322
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_3
    if-eqz v2, :cond_4

    .line 326
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    move v5, v6

    goto :goto_1

    .line 314
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v3

    .line 315
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    sget-object v5, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQL database is in an invalid state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 321
    if-eqz v1, :cond_5

    .line 322
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_5
    if-eqz v2, :cond_6

    .line 326
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_6
    move v5, v6

    goto :goto_1

    .line 317
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v4

    .line 318
    .local v4, "throwable":Ljava/lang/Throwable;
    :try_start_7
    sget-object v5, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexepected error/exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 321
    if-eqz v1, :cond_7

    .line 322
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_7
    if-eqz v2, :cond_8

    .line 326
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    move v5, v6

    goto/16 :goto_1

    .line 321
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_9

    .line 322
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_9
    if-eqz v2, :cond_a

    .line 326
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 302
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 336
    const-string v0, "CREATE TABLE events(id INTEGER PRIMARY KEY AUTOINCREMENT, text TEXT)"

    .line 339
    .local v0, "createTableString":Ljava/lang/String;
    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 339
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 348
    const-string v1, "DROP TABLE IF EXISTS events"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 350
    return-void

    :cond_0
    move-object v0, p1

    .line 348
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized peekEvent()Lcom/amazon/ags/storage/OfflineEventId;
    .locals 11

    .prologue
    .line 136
    monitor-enter p0

    const/4 v3, 0x0

    .line 137
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 143
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 144
    const-string v9, "SELECT MIN(id) FROM events"

    const/4 v10, 0x0

    instance-of v8, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v8, :cond_2

    invoke-virtual {v3, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 146
    :goto_0
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 147
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 150
    .local v6, "id":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_3

    .line 151
    sget-object v8, Lcom/amazon/ags/storage/OfflineEventId;->Invalid:Lcom/amazon/ags/storage/OfflineEventId;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    if-eqz v2, :cond_0

    .line 171
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_0
    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "id":J
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v8

    .line 144
    :cond_2
    :try_start_2
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v8, v0

    invoke-static {v8, v9, v10}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 154
    .restart local v6    # "id":J
    :cond_3
    new-instance v8, Lcom/amazon/ags/storage/OfflineEventId;

    invoke-direct {v8, v6, v7}, Lcom/amazon/ags/storage/OfflineEventId;-><init>(J)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 170
    if-eqz v2, :cond_4

    .line 171
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_4
    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 136
    .end local v6    # "id":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 156
    :cond_5
    :try_start_4
    sget-object v8, Lcom/amazon/ags/storage/OfflineEventId;->Invalid:Lcom/amazon/ags/storage/OfflineEventId;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 170
    if-eqz v2, :cond_6

    .line 171
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_6
    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 158
    :catch_0
    move-exception v4

    .line 159
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_6
    sget-object v8, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to open SQL database: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v8, Lcom/amazon/ags/storage/OfflineEventId;->Invalid:Lcom/amazon/ags/storage/OfflineEventId;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 170
    if-eqz v2, :cond_7

    .line 171
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_7
    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 162
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v4

    .line 163
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_8
    sget-object v8, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SQL database is in an invalid state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v8, Lcom/amazon/ags/storage/OfflineEventId;->Invalid:Lcom/amazon/ags/storage/OfflineEventId;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 170
    if-eqz v2, :cond_8

    .line 171
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_8
    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 165
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v5

    .line 166
    .local v5, "throwable":Ljava/lang/Throwable;
    :try_start_a
    sget-object v8, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexepected error/exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v8, Lcom/amazon/ags/storage/OfflineEventId;->Invalid:Lcom/amazon/ags/storage/OfflineEventId;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 170
    if-eqz v2, :cond_9

    .line 171
    :try_start_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_9
    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1

    .line 170
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :catchall_1
    move-exception v8

    if-eqz v2, :cond_a

    .line 171
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_a
    if-eqz v3, :cond_b

    .line 175
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b
    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public final declared-synchronized removeAllEvents()V
    .locals 6

    .prologue
    .line 354
    monitor-enter p0

    const/4 v1, 0x0

    .line 357
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    const-string v4, "Removing all events"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 359
    const-string v4, "DELETE FROM events"

    instance-of v3, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_1

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 363
    :goto_0
    if-eqz v1, :cond_0

    .line 364
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 359
    :cond_1
    :try_start_2
    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-static {v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 360
    :catch_0
    move-exception v2

    .line 361
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open SQL database: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 363
    if-eqz v1, :cond_0

    .line 364
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 354
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 363
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_2

    .line 364
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final declared-synchronized removeEvent(Lcom/amazon/ags/storage/OfflineEventId;)V
    .locals 10
    .param p1, "id"    # Lcom/amazon/ags/storage/OfflineEventId;

    .prologue
    .line 111
    monitor-enter p0

    const/4 v2, 0x0

    .line 114
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v5, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/amazon/ags/storage/OfflineEventId;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 117
    const-string v6, "events"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/ags/storage/OfflineEventId;->getId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    instance-of v5, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    invoke-virtual {v2, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    :goto_0
    if-eqz v2, :cond_0

    .line 126
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 117
    :cond_1
    :try_start_2
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-static {v5, v6, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v3

    .line 119
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    sget-object v5, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to open SQL database: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    if-eqz v2, :cond_0

    .line 126
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 111
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 120
    :catch_1
    move-exception v3

    .line 121
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    sget-object v5, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQL database is in an invalid state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    if-eqz v2, :cond_0

    .line 126
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 122
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v4

    .line 123
    .local v4, "throwable":Ljava/lang/Throwable;
    :try_start_7
    sget-object v5, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexepected error/exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 125
    if-eqz v2, :cond_0

    .line 126
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 125
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :catchall_1
    move-exception v5

    if-eqz v2, :cond_2

    .line 126
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public final declared-synchronized storeEvent(Lorg/json/JSONObject;)Lcom/amazon/ags/storage/OfflineEventId;
    .locals 27
    .param p1, "event"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ags/storage/OfflineEventException;
        }
    .end annotation

    .prologue
    .line 47
    monitor-enter p0

    const/4 v2, 0x0

    .line 48
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v18, 0x0

    .line 51
    .local v18, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 53
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/json/JSONObject;

    if-nez v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 55
    .end local p1    # "event":Lorg/json/JSONObject;
    .local v20, "eventString":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->obfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    if-eqz v3, :cond_3

    .line 56
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->obfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lcom/amazon/ags/storage/StringObfuscator;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 57
    if-nez v20, :cond_3

    .line 58
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to obfuscate text: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    const-string v4, "Failed to obfuscate text."

    invoke-direct {v3, v4}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v20    # "eventString":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 87
    .local v19, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    const-string v4, "Failed to open SQL database."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .end local v19    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    if-eqz v18, :cond_0

    .line 97
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_0
    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 53
    .restart local p1    # "event":Lorg/json/JSONObject;
    :cond_2
    :try_start_3
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "event":Lorg/json/JSONObject;
    invoke-static/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v20

    goto :goto_0

    .line 63
    .restart local v20    # "eventString":Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storing event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 67
    .local v26, "values":Landroid/content/ContentValues;
    const-string v3, "text"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v4, "events"

    const/4 v5, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_4

    move-object/from16 v0, v26

    invoke-virtual {v2, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    .line 70
    .local v24, "rowId":J
    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v3, v24, v4

    if-nez v3, :cond_5

    .line 71
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    const-string v4, "Failed to store event in database."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    const-string v4, "Failed to store event to database."

    invoke-direct {v3, v4}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .end local v20    # "eventString":Ljava/lang/String;
    .end local v24    # "rowId":J
    .end local v26    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v19

    .line 90
    .local v19, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL database is in an invalid state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    .end local v19    # "e":Ljava/lang/IllegalStateException;
    .restart local v20    # "eventString":Ljava/lang/String;
    .restart local v26    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_5
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, v26

    invoke-static {v3, v4, v5, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    goto :goto_1

    .line 75
    .restart local v24    # "rowId":J
    :cond_5
    const-string v3, "events"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rowid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_8

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 78
    :goto_2
    if-eqz v18, :cond_9

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 79
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 81
    .local v22, "id":J
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventId;

    move-wide/from16 v0, v22

    invoke-direct {v3, v0, v1}, Lcom/amazon/ags/storage/OfflineEventId;-><init>(J)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 96
    if-eqz v18, :cond_6

    .line 97
    :try_start_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_6
    if-eqz v2, :cond_7

    .line 101
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_7
    monitor-exit p0

    return-object v3

    .line 75
    .end local v22    # "id":J
    :cond_8
    :try_start_7
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    goto :goto_2

    .line 83
    :cond_9
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get cursor to inserted item"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    const-string v4, "Failed to get cursor to inserted item"

    invoke-direct {v3, v4}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 92
    .end local v20    # "eventString":Ljava/lang/String;
    .end local v24    # "rowId":J
    .end local v26    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v21

    .line 93
    .local v21, "throwable":Ljava/lang/Throwable;
    :try_start_8
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexepected error/exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method
