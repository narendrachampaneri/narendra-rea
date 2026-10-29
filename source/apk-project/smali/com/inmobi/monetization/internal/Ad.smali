.class public abstract Lcom/inmobi/monetization/internal/Ad;
.super Ljava/lang/Object;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/monetization/internal/Ad$2;,
        Lcom/inmobi/monetization/internal/Ad$a;,
        Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;
    }
.end annotation


# static fields
.field public static final AD_TYPE_NATIVE:Ljava/lang/String; = "native"

.field protected static final DEFAULT_NO_OF_ADS:Ljava/lang/String; = "1"

.field protected static final KEY_AD_FORMAT:Ljava/lang/String; = "format"

.field protected static final KEY_AD_SIZE:Ljava/lang/String; = "mk-ad-slot"

.field protected static final KEY_NO_OF_ADS:Ljava/lang/String; = "mk-ads"

.field protected static final KEY_PLACEMENT_SIZE:Ljava/lang/String; = "placement-size"

.field private static e:Lcom/inmobi/monetization/internal/ConnBroadcastReciever;


# instance fields
.field a:Z

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/inmobi/monetization/internal/c;

.field private k:Lcom/inmobi/monetization/internal/Ad$a;

.field private l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

.field protected mEnableHardwareAcceleration:Z

.field protected mFetchStartTime:J

.field protected mImpressionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/monetization/internal/Ad;->e:Lcom/inmobi/monetization/internal/ConnBroadcastReciever;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    .line 54
    iput-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/Ad;->mEnableHardwareAcceleration:Z

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    iput-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->mFetchStartTime:J

    .line 60
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->g:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->h:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->i:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    .line 64
    new-instance v0, Lcom/inmobi/monetization/internal/Ad$a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/internal/Ad$a;-><init>(Lcom/inmobi/monetization/internal/Ad;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->k:Lcom/inmobi/monetization/internal/Ad$a;

    .line 65
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->mImpressionId:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 67
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    .line 68
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/Ad;->a:Z

    .line 95
    iput-wide p1, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    .line 54
    iput-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/Ad;->mEnableHardwareAcceleration:Z

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    iput-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->mFetchStartTime:J

    .line 60
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->g:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->h:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->i:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    .line 64
    new-instance v0, Lcom/inmobi/monetization/internal/Ad$a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/internal/Ad$a;-><init>(Lcom/inmobi/monetization/internal/Ad;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->k:Lcom/inmobi/monetization/internal/Ad$a;

    .line 65
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->mImpressionId:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 67
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    .line 68
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/Ad;->a:Z

    .line 86
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_1
    iput-object p1, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 312
    if-eqz v1, :cond_2

    .line 313
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    iget-object v3, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->i:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 323
    const-string v0, "p-keywords"

    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->g:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/Ad;Lorg/json/JSONObject;Lcom/inmobi/monetization/internal/configs/NetworkEventType;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/inmobi/monetization/internal/Ad;->a(Lorg/json/JSONObject;Lcom/inmobi/monetization/internal/configs/NetworkEventType;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/inmobi/monetization/internal/configs/NetworkEventType;)V
    .locals 2

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/Ad;->a:Z

    if-eqz v0, :cond_0

    .line 516
    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    invoke-direct {v1, p2, p1}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 519
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/Ad;)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/Ad;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/inmobi/monetization/internal/Ad;)Lcom/inmobi/monetization/internal/Ad$a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->k:Lcom/inmobi/monetization/internal/Ad$a;

    return-object v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private c()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;
    .locals 4

    .prologue
    .line 627
    invoke-static {}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->getInstance()Lcom/inmobi/monetization/internal/LtvpRuleProcessor;

    move-result-object v0

    iget-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->getLtvpRuleConfig(J)Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/monetization/internal/Ad;)Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    return-object v0
.end method


# virtual methods
.method protected collectMetrics(Lcom/inmobi/commons/network/Response;JLcom/inmobi/monetization/internal/configs/NetworkEventType;)V
    .locals 6

    .prologue
    .line 470
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/Ad;->a:Z

    if-eqz v0, :cond_0

    .line 471
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 474
    invoke-virtual {p1}, Lcom/inmobi/commons/network/Response;->getStatusCode()I

    move-result v0

    const/16 v2, 0x190

    if-le v0, v2, :cond_1

    .line 476
    const-string v0, "m"

    invoke-virtual {p1}, Lcom/inmobi/commons/network/Response;->getError()Lcom/inmobi/commons/network/ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    :goto_0
    const-string v0, "t"

    invoke-virtual {v1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 496
    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    invoke-direct {v2, p4, v1}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 506
    :cond_0
    :goto_1
    return-void

    .line 478
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/commons/network/Response;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_2

    .line 481
    const-string v0, "m"

    invoke-virtual {p1}, Lcom/inmobi/commons/network/Response;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    const-string v0, "[InMobi]-[Monetization]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating metric logs for ad fetch at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 485
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/inmobi/commons/network/Response;->getHeaders()Ljava/util/Map;

    move-result-object v2

    .line 486
    if-eqz v2, :cond_3

    .line 487
    const-string v0, "im-id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mImpressionId:Ljava/lang/String;

    .line 488
    const-string v0, "im-ec"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 489
    if-eqz v0, :cond_3

    .line 490
    const-string v2, "[InMobi]-[Monetization]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sandbox error Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_3
    const-string v0, "ad"

    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->mImpressionId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 526
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize the sdk"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :goto_0
    return-void

    .line 530
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/monetization/internal/Ad;->e:Lcom/inmobi/monetization/internal/ConnBroadcastReciever;

    goto :goto_0
.end method

.method protected abstract getAdFormatParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected getDecryptedResponse(Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/Response;)Lcom/inmobi/commons/network/Response;
    .locals 5

    .prologue
    .line 540
    const/4 v1, 0x0

    .line 542
    :try_start_0
    invoke-virtual {p2}, Lcom/inmobi/commons/network/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Base64;->decode([BI)[B

    move-result-object v0

    .line 543
    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/c;->b()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/c;->a()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/internal/EncryptionUtils;->DeAe([B[B[B)[B

    move-result-object v2

    .line 545
    new-instance v0, Lcom/inmobi/commons/network/Response;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2}, Lcom/inmobi/commons/network/Response;->getStatusCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/inmobi/commons/network/Response;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4}, Lcom/inmobi/commons/network/Response;-><init>(Ljava/lang/String;ILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    return-object v0

    .line 547
    :catch_0
    move-exception v0

    .line 549
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method protected handleError(Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/Response;)V
    .locals 4

    .prologue
    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->mFetchStartTime:J

    sub-long/2addr v0, v2

    .line 421
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v2, :cond_0

    .line 423
    invoke-virtual {p2}, Lcom/inmobi/commons/network/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_1

    .line 425
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v3, Lcom/inmobi/monetization/internal/AdErrorCode;->NO_FILL:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v2, v3}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 427
    sget-object v2, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->RESPONSE_ERROR:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/inmobi/monetization/internal/Ad;->collectMetrics(Lcom/inmobi/commons/network/Response;JLcom/inmobi/monetization/internal/configs/NetworkEventType;)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-virtual {p2}, Lcom/inmobi/commons/network/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0x190

    if-ne v2, v3, :cond_2

    .line 431
    const-string v2, "[InMobi]-[Monetization]"

    const-string v3, "Check the app Id passed in the ad"

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v3, Lcom/inmobi/monetization/internal/AdErrorCode;->INVALID_APP_ID:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v2, v3}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 434
    sget-object v2, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->RESPONSE_ERROR:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/inmobi/monetization/internal/Ad;->collectMetrics(Lcom/inmobi/commons/network/Response;JLcom/inmobi/monetization/internal/configs/NetworkEventType;)V

    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {p2}, Lcom/inmobi/commons/network/Response;->getError()Lcom/inmobi/commons/network/ErrorCode;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 440
    invoke-virtual {p2}, Lcom/inmobi/commons/network/Response;->getError()Lcom/inmobi/commons/network/ErrorCode;

    move-result-object v2

    .line 441
    sget-object v3, Lcom/inmobi/commons/network/ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/network/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 442
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v3, Lcom/inmobi/monetization/internal/AdErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v2, v3}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 452
    :cond_3
    :goto_1
    sget-object v2, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->CONNECT_ERROR:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/inmobi/monetization/internal/Ad;->collectMetrics(Lcom/inmobi/commons/network/Response;JLcom/inmobi/monetization/internal/configs/NetworkEventType;)V

    goto :goto_0

    .line 443
    :cond_4
    sget-object v3, Lcom/inmobi/commons/network/ErrorCode;->INVALID_REQUEST:Lcom/inmobi/commons/network/ErrorCode;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/network/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 444
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v3, Lcom/inmobi/monetization/internal/AdErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v2, v3}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto :goto_1

    .line 445
    :cond_5
    sget-object v3, Lcom/inmobi/commons/network/ErrorCode;->NETWORK_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/network/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 446
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v3, Lcom/inmobi/monetization/internal/AdErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v2, v3}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto :goto_1

    .line 447
    :cond_6
    sget-object v3, Lcom/inmobi/commons/network/ErrorCode;->CONNECTION_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/network/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 456
    :cond_7
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto :goto_0
.end method

.method protected abstract handleResponse(Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/Response;)V
.end method

.method protected initialize()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 104
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Please initialize the sdk"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return v0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    .line 111
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Please create an instance of  ad with valid appId/ slotid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/b;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/inmobi/monetization/internal/InvalidManifestConfigException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    :goto_2
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent()Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CARB;->getInstance()Lcom/inmobi/monetization/internal/carb/CARB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->startCarb()V

    .line 137
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/uid/UID;->printPublisherTestId()V

    .line 139
    const-class v0, Lcom/inmobi/monetization/internal/imai/IMAIController;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->setIMAIController(Ljava/lang/Class;)V

    .line 141
    sget-object v0, Lcom/inmobi/monetization/internal/Ad;->e:Lcom/inmobi/monetization/internal/ConnBroadcastReciever;

    if-nez v0, :cond_3

    .line 142
    new-instance v0, Lcom/inmobi/monetization/internal/ConnBroadcastReciever;

    invoke-direct {v0}, Lcom/inmobi/monetization/internal/ConnBroadcastReciever;-><init>()V

    sput-object v0, Lcom/inmobi/monetization/internal/Ad;->e:Lcom/inmobi/monetization/internal/ConnBroadcastReciever;

    .line 143
    :cond_3
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/internal/Ad;->e:Lcom/inmobi/monetization/internal/ConnBroadcastReciever;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    iget-wide v0, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 148
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/Ad;->c()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 149
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Cannot start ice. Activity is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :catch_1
    move-exception v0

    .line 125
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "IMConfigException occured while initializing interstitial while validating adView"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected loadAd()V
    .locals 4

    .prologue
    .line 158
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize the sdk"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->updateDeviceInfo()V

    .line 167
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/uid/UID;->printPublisherTestId()V

    .line 168
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, " >>>> Start loading new Ad <<<<"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    new-instance v2, Lcom/inmobi/commons/network/Response;

    sget-object v3, Lcom/inmobi/commons/network/ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    invoke-direct {v2, v3}, Lcom/inmobi/commons/network/Response;-><init>(Lcom/inmobi/commons/network/ErrorCode;)V

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/monetization/internal/Ad;->handleError(Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/Response;)V

    .line 300
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Error in loading ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 178
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/Ad;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/Ad;->getAdFormatParams()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_8

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    .line 189
    :goto_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v1, "format"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v1, "format"

    sget-object v2, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;->IMAI:Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    invoke-virtual {v2}, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v1, "mk-ads"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 192
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v1, "mk-ads"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, ""

    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 195
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v1, "mk-siteid"

    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_6
    new-instance v0, Lcom/inmobi/monetization/internal/c;

    invoke-direct {v0}, Lcom/inmobi/monetization/internal/c;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    .line 202
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    invoke-direct {p0}, Lcom/inmobi/monetization/internal/Ad;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/c;->b(Ljava/util/Map;)V

    .line 205
    iget-wide v0, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 207
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/Ad;->c()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 208
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    if-eqz v0, :cond_a

    .line 210
    sget-object v0, Lcom/inmobi/monetization/internal/Ad$2;->a:[I

    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 233
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_7

    .line 234
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->NO_FILL:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 239
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    sget-object v1, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ACTIONS_ONLY:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    sget-object v1, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ACTIONS_TO_MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    if-eq v0, v1, :cond_a

    .line 241
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "No actions returned by rule"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/Ad;->getAdFormatParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    goto/16 :goto_1

    .line 215
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v1, "mk-site-slotid"

    iget-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v1, "rule-id"

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->getInstance(Landroid/content/Context;)Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->getLtvpRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->getDetectedActivity()I

    move-result v0

    .line 218
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 219
    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v2, "u-activity-type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_9
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    if-eqz v0, :cond_7

    .line 222
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getEndPoints()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->getHouseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/c;->setUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 225
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_7

    .line 226
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->DO_MONETIZE:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto :goto_2

    .line 229
    :pswitch_2
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_7

    .line 230
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->DO_NOTHING:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto/16 :goto_2

    .line 247
    :cond_a
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/c;->a(Ljava/util/Map;)V

    .line 248
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/Ad;->setDownloadingNewAd(Z)V

    .line 250
    invoke-static {}, Lcom/inmobi/monetization/internal/a;->a()Lcom/inmobi/monetization/internal/a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    new-instance v3, Lcom/inmobi/monetization/internal/Ad$1;

    invoke-direct {v3, p0}, Lcom/inmobi/monetization/internal/Ad$1;-><init>(Lcom/inmobi/monetization/internal/Ad;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/a;->a(Ljava/lang/String;Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/abstraction/INetworkListener;)V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/monetization/internal/Ad;->mFetchStartTime:J

    .line 293
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->k:Lcom/inmobi/monetization/internal/Ad$a;

    const/16 v1, 0x65

    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/ConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/monetization/internal/configs/ConfigParams;->getFetchTimeOut()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/Ad$a;->sendEmptyMessageDelayed(IJ)Z

    .line 296
    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Logger;->startNewSample()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/Ad;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAdListener(Lcom/inmobi/monetization/internal/IMAdListener;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    .line 412
    return-void
.end method

.method protected setAdRequest(Lcom/inmobi/monetization/internal/c;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    .line 638
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 603
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    iput-object p1, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    .line 607
    :goto_0
    return-void

    .line 606
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "AppId cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDownloadingNewAd(Z)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 342
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 364
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize the sdk"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iput-object p1, p0, Lcom/inmobi/monetization/internal/Ad;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize the sdk"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_0
    return-void

    .line 382
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    .line 388
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 390
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSlotId(J)V
    .locals 3

    .prologue
    .line 615
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 616
    iput-wide p1, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    .line 619
    :goto_0
    return-void

    .line 618
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Invalid slot id"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    const/16 v1, 0x65

    .line 348
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/Ad;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->k:Lcom/inmobi/monetization/internal/Ad$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->k:Lcom/inmobi/monetization/internal/Ad$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/Ad$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->k:Lcom/inmobi/monetization/internal/Ad$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/Ad$a;->removeMessages(I)V

    .line 352
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/Ad;->setDownloadingNewAd(Z)V

    .line 353
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Stopped loading an ad"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->ADREQUEST_CANCELLED:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 357
    :cond_1
    return-void
.end method
