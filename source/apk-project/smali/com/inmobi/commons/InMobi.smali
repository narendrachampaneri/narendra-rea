.class public final Lcom/inmobi/commons/InMobi;
.super Ljava/lang/Object;
.source "InMobi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/InMobi$LOG_LEVEL;
    }
.end annotation


# static fields
.field public static final EXCLUDE_FB_ID:I = 0x4

.field public static final EXCLUDE_ODIN1:I = 0x2

.field public static final EXCLUDE_UM5_ID:I = 0x8

.field public static final ID_DEVICE_NONE:I = 0x0

.field public static final INCLUDE_DEFAULT:I = 0x1

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    :try_start_0
    const-string v0, "[InMobi]-4.5.3"

    const-string v1, "Application Context NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "[InMobi]-4.5.3"

    const-string v1, "context cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->setContext(Landroid/content/Context;)V

    .line 81
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    :cond_1
    const-string v0, "[InMobi]-4.5.3"

    const-string v1, "appId cannot be blank"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v1, "[InMobi]-4.5.3"

    const-string v2, "Exception in initialize"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    invoke-static {p0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent()Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->collectLocationInfo()V

    .line 96
    invoke-static {}, Lcom/inmobi/commons/data/AppInfo;->updateAppInfo()V

    .line 97
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->updateDeviceInfo()V

    .line 102
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/uid/UID;->init()V

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "impref"

    const-string v3, "version"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 108
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "impref"

    const-string v3, "version"

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->reset()V

    .line 112
    :cond_5
    invoke-static {p0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V

    .line 114
    const-string v1, "[InMobi]-4.5.3"

    const-string v2, "InMobi init successful"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->getInstance()Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->getInstance()Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->reportAppDownloadGoal()V

    .line 120
    invoke-static {p0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->init(Landroid/content/Context;)V

    .line 121
    new-instance v0, Lcom/inmobi/commons/InMobi$1;

    invoke-direct {v0}, Lcom/inmobi/commons/InMobi$1;-><init>()V

    invoke-static {v0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->addFocusChangedListener(Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;)V

    .line 133
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->startSession(Ljava/lang/String;Ljava/util/Map;)V

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->init(Landroid/content/Context;)V

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "com.inmobi.share.id"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/analytics/androidsdk/IMAdTrackerReceiver;

    invoke-direct {v2}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTrackerReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static addIDType(Lcom/inmobi/commons/IMIDType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 352
    invoke-static {p0, p1}, Lcom/inmobi/commons/data/DemogInfo;->addIDType(Lcom/inmobi/commons/IMIDType;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "4.5.3"

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    invoke-static {p0, p1}, Lcom/inmobi/commons/InMobi;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/inmobi/commons/InMobi;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static removeIDType(Lcom/inmobi/commons/IMIDType;)V
    .locals 0

    .prologue
    .line 361
    invoke-static {p0}, Lcom/inmobi/commons/data/DemogInfo;->removeIDType(Lcom/inmobi/commons/IMIDType;)V

    .line 362
    return-void
.end method

.method public static setAge(I)V
    .locals 1

    .prologue
    .line 330
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/data/DemogInfo;->setAge(Ljava/lang/Integer;)V

    .line 331
    return-void
.end method

.method public static setAreaCode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 267
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-static {p0}, Lcom/inmobi/commons/data/DemogInfo;->setAreaCode(Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string v0, "[InMobi]-4.5.3"

    const-string v1, "Area code cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCurrentLocation(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 232
    if-eqz p0, :cond_0

    .line 233
    invoke-static {p0}, Lcom/inmobi/commons/data/DemogInfo;->setCurrentLocation(Landroid/location/Location;)V

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    const-string v0, "[InMobi]-4.5.3"

    const-string v1, "Location cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDateOfBirth(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    .line 279
    if-eqz p0, :cond_0

    .line 280
    invoke-static {p0}, Lcom/inmobi/commons/data/DemogInfo;->setDateOfBirth(Ljava/util/Calendar;)V

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_0
    const-string v0, "[InMobi]-4.5.3"

    const-string v1, "Date Of Birth cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDeviceIDMask(I)V
    .locals 1

    .prologue
    .line 222
    invoke-static {p0}, Lcom/inmobi/commons/data/DemogInfo;->setDeviceIDMask(I)V

    .line 223
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/uid/UID;->setPublisherDeviceIdMaskMap(I)V

    .line 224
    return-void
.end method

.method public static setEducation(Lcom/inmobi/commons/EducationType;)V
    .locals 0

    .prologue
    .line 310
    if-eqz p0, :cond_0

    .line 311
    invoke-static {p0}, Lcom/inmobi/commons/data/DemogInfo;->setEducation(Lcom/inmobi/commons/EducationType;)V

    .line 312
    :cond_0
    return-void
.end method

.method public static setEthnicity(Lcom/inmobi/commons/EthnicityType;)V
    .locals 0

    .prologue
    .line 320
    if-eqz p0, :cond_0

    .line 321
    invoke-static {p0}, Lcom/inmobi/commons/data/DemogInfo;->setEthnicity(Lcom/inmobi/commons/EthnicityType;)V

    .line 322
    :cond_0
    return-void
.end method

.method public static setGender(Lcom/inmobi/commons/GenderType;)V
    .locals 0

    .prologue
    .line 291
    if-eqz p0, :cond_0

    .line 292
    invoke-static {p0}, Lcom/inmobi/commons/data/DemogInfo;->setGender(Lcom/inmobi/commons/GenderType;)V

    .line 293
    :cond_0
    return-void
.end method

.method public static setHasChildren(Lcom/inmobi/commons/HasChildren;)V
    .locals 0

    .prologue
    .line 406
    if-eqz p0, :cond_0

    .line 407
    invoke-static {p0}, Lcom/inmobi/commons/data/DemogInfo;->setHasChildren(Lcom/inmobi/commons/HasChildren;)V

    .line 408
    :cond_0
    return-void
.end method

.method public static setIncome(I)V
    .locals 1

    .prologue
    .line 301
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/data/DemogInfo;->setIncome(Ljava/lang/Integer;)V

    .line 302
    return-void
.end method

.method public static setInterests(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 339
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-static {p0}, Lcom/inmobi/commons/data/DemogInfo;->setInterests(Ljava/lang/String;)V

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string v0, "[InMobi]-4.5.3"

    const-string v1, "Interests cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setLanguage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 382
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-static {p0}, Lcom/inmobi/commons/data/DemogInfo;->setLanguage(Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    const-string v0, "[InMobi]-4.5.3"

    const-string v1, "Language cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    invoke-static {p0, p1, p2}, Lcom/inmobi/commons/data/DemogInfo;->setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public static setLogLevel(Lcom/inmobi/commons/InMobi$LOG_LEVEL;)V
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->NONE:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    if-ne p0, v0, :cond_0

    .line 194
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NONE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    .line 202
    :goto_0
    return-void

    .line 195
    :cond_0
    sget-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    if-ne p0, v0, :cond_1

    .line 196
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    goto :goto_0

    .line 197
    :cond_1
    sget-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->VERBOSE:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    if-ne p0, v0, :cond_2

    .line 198
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->VERBOSE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    goto :goto_0

    .line 200
    :cond_2
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    goto :goto_0
.end method

.method public static setMaritalStatus(Lcom/inmobi/commons/MaritalStatus;)V
    .locals 0

    .prologue
    .line 371
    if-eqz p0, :cond_0

    .line 372
    invoke-static {p0}, Lcom/inmobi/commons/data/DemogInfo;->setMaritalStatus(Lcom/inmobi/commons/MaritalStatus;)V

    .line 373
    :cond_0
    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 255
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-static {p0}, Lcom/inmobi/commons/data/DemogInfo;->setPostalCode(Ljava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    const-string v0, "[InMobi]-4.5.3"

    const-string v1, "Postal Code cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)V
    .locals 0

    .prologue
    .line 395
    if-eqz p0, :cond_0

    .line 396
    invoke-static {p0}, Lcom/inmobi/commons/data/DemogInfo;->setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)V

    .line 397
    :cond_0
    return-void
.end method
