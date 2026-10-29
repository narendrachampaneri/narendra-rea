.class public Lcom/mopub/mobileads/AdColonyRewardedVideo;
.super Lcom/mopub/mobileads/CustomEventRewardedVideo;
.source "AdColonyRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;,
        Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;,
        Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;
    }
.end annotation


# static fields
.field public static final ALL_ZONE_IDS_KEY:Ljava/lang/String; = "allZoneIds"

.field public static final APP_ID_KEY:Ljava/lang/String; = "appId"

.field public static final CLIENT_OPTIONS_KEY:Ljava/lang/String; = "clientOptions"

.field private static final DEFAULT_ALL_ZONE_IDS:[Ljava/lang/String;

.field private static final DEFAULT_APP_ID:Ljava/lang/String; = "app2ee04b82f705434aa6"

.field private static final DEFAULT_CLIENT_OPTIONS:Ljava/lang/String; = "version=2.2.5,store:google"

.field private static final DEFAULT_ZONE_ID:Ljava/lang/String; = "vza08f3dd12e7e48aaa6"

.field public static final ZONE_ID_KEY:Ljava/lang/String; = "zoneId"

.field private static sAdColonyListener:Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;

.field private static sAdToZoneIdMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/jirbo/adcolony/AdColonyAd;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInitialized:Z

.field private static sLifecycleListener:Lcom/mopub/common/LifecycleListener;


# instance fields
.field private mAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

.field private mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private final mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mZoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vza08f3dd12e7e48aaa6"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->DEFAULT_ALL_ZONE_IDS:[Ljava/lang/String;

    .line 54
    sput-boolean v2, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sInitialized:Z

    .line 55
    new-instance v0, Lcom/mopub/mobileads/AdColonyRewardedVideo$1;

    invoke-direct {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$1;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sLifecycleListener:Lcom/mopub/common/LifecycleListener;

    .line 68
    new-instance v0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;-><init>(Lcom/mopub/mobileads/AdColonyRewardedVideo$1;)V

    sput-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sAdColonyListener:Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;

    .line 69
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sAdToZoneIdMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mIsLoading:Z

    .line 82
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mopub/mobileads/AdColonyRewardedVideo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyRewardedVideo;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/WeakHashMap;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sAdToZoneIdMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method private extractAllZoneIds(Ljava/util/Map;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "allZoneIds"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/mopub/common/util/Json;->jsonArrayToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "result":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 184
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .end local v0    # "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 187
    .restart local v0    # "result":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "clientOptions"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appId"

    .line 174
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "allZoneIds"

    .line 175
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zoneId"

    .line 176
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConfirmationDialogFromSettings()Z
    .locals 3

    .prologue
    .line 204
    const-class v1, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;

    iget-object v2, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 205
    invoke-static {v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;

    .line 206
    .local v0, "settings":Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;->withConfirmationDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getResultsDialogFromSettings()Z
    .locals 3

    .prologue
    .line 210
    const-class v1, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;

    iget-object v2, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 211
    invoke-static {v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;

    .line 212
    .local v0, "settings":Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;->withResultsDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private scheduleOnVideoReady()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x1

    .line 216
    new-instance v1, Lcom/mopub/mobileads/AdColonyRewardedVideo$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$2;-><init>(Lcom/mopub/mobileads/AdColonyRewardedVideo;)V

    .line 241
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mIsLoading:Z

    .line 245
    :cond_0
    return-void
.end method

.method private setUpGlobalSettings()V
    .locals 2

    .prologue
    .line 191
    const-class v1, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;

    .line 192
    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getGlobalMediationSettings(Ljava/lang/Class;)Lcom/mopub/common/MediationSettings;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;

    .line 193
    .local v0, "globalMediationSettings":Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;->getCustomId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;->getCustomId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->setCustomID(Ljava/lang/String;)V

    .line 197
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->setDeviceID(Ljava/lang/String;)V

    .line 201
    :cond_1
    return-void
.end method


# virtual methods
.method public checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .param p1, "launcherActivity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 113
    const-class v4, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    monitor-enter v4

    .line 114
    :try_start_0
    sget-boolean v5, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sInitialized:Z

    if-eqz v5, :cond_0

    .line 115
    const/4 v3, 0x0

    monitor-exit v4

    .line 133
    :goto_0
    return v3

    .line 118
    :cond_0
    const-string v2, "version=2.2.5,store:google"

    .line 119
    .local v2, "adColonyClientOptions":Ljava/lang/String;
    const-string v1, "app2ee04b82f705434aa6"

    .line 120
    .local v1, "adColonyAppId":Ljava/lang/String;
    sget-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->DEFAULT_ALL_ZONE_IDS:[Ljava/lang/String;

    .line 123
    .local v0, "adColonyAllZoneIds":[Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->extrasAreValid(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    const-string v5, "clientOptions"

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "adColonyClientOptions":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 125
    .restart local v2    # "adColonyClientOptions":Ljava/lang/String;
    const-string v5, "appId"

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "adColonyAppId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 126
    .restart local v1    # "adColonyAppId":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->extractAllZoneIds(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->setUpGlobalSettings()V

    .line 130
    invoke-static {p1, v2, v1, v0}, Lcom/jirbo/adcolony/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    sget-object v5, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sAdColonyListener:Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;

    invoke-static {v5}, Lcom/jirbo/adcolony/AdColony;->addV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V

    .line 132
    const/4 v5, 0x1

    sput-boolean v5, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sInitialized:Z

    .line 133
    monitor-exit v4

    goto :goto_0

    .line 134
    .end local v0    # "adColonyAllZoneIds":[Ljava/lang/String;
    .end local v1    # "adColonyAppId":Ljava/lang/String;
    .end local v2    # "adColonyClientOptions":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAdNetworkId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sLifecycleListener:Lcom/mopub/common/LifecycleListener;

    return-object v0
.end method

.method public getVideoListenerForSdk()Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sAdColonyListener:Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;

    return-object v0
.end method

.method public hasVideoAvailable()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getAvailableViews()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "vza08f3dd12e7e48aaa6"

    iput-object v1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    .line 143
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->extrasAreValid(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "zoneId"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    .line 146
    :cond_0
    const-string v1, "com_mopub_ad_unit_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "adUnitObject":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 148
    check-cast v0, Ljava/lang/String;

    .end local v0    # "adUnitObject":Ljava/lang/Object;
    iput-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 151
    :cond_1
    new-instance v1, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    iget-object v2, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sAdColonyListener:Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 152
    sget-object v1, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sAdToZoneIdMap:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    iget-object v3, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-direct {p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->scheduleOnVideoReady()V

    .line 154
    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 107
    return-void
.end method

.method public showVideo()V
    .locals 5

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->hasVideoAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->getConfirmationDialogFromSettings()Z

    move-result v0

    .line 165
    .local v0, "withConfirmationDialog":Z
    invoke-direct {p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->getResultsDialogFromSettings()Z

    move-result v1

    .line 166
    .local v1, "withResultsDialog":Z
    iget-object v2, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withConfirmationDialog(Z)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withResultsDialog(Z)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show()V

    .line 170
    .end local v0    # "withConfirmationDialog":Z
    .end local v1    # "withResultsDialog":Z
    :goto_0
    return-void

    .line 168
    :cond_0
    const-class v2, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    iget-object v3, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v2, v3, v4}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method
