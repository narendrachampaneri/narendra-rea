.class public Lcom/mopub/mobileads/VungleRewardedVideo;
.super Lcom/mopub/mobileads/CustomEventRewardedVideo;
.source "VungleRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;,
        Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedVideoListener;
    }
.end annotation


# static fields
.field public static final APP_ID_KEY:Ljava/lang/String; = "appId"

.field private static final DEFAULT_VUNGLE_APP_ID:Ljava/lang/String; = "com.appsomniacs.da2"

.field public static final VUNGLE_AD_NETWORK_CONSTANT:Ljava/lang/String; = "vngl_id"

.field private static sInitialized:Z

.field private static final sLifecycleListener:Lcom/mopub/common/LifecycleListener;

.field private static sVungleListener:Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedVideoListener;

.field private static sVunglePub:Lcom/vungle/publisher/VunglePub;


# instance fields
.field private mAdUnitId:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private final mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedVideoListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedVideoListener;-><init>(Lcom/mopub/mobileads/VungleRewardedVideo$1;)V

    sput-object v0, Lcom/mopub/mobileads/VungleRewardedVideo;->sVungleListener:Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedVideoListener;

    .line 41
    new-instance v0, Lcom/mopub/mobileads/VungleRewardedVideo$1;

    invoke-direct {v0}, Lcom/mopub/mobileads/VungleRewardedVideo$1;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/VungleRewardedVideo;->sLifecycleListener:Lcom/mopub/common/LifecycleListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mIsLoading:Z

    .line 65
    return-void
.end method

.method static synthetic access$100()Lcom/vungle/publisher/VunglePub;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mopub/mobileads/VungleRewardedVideo;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mopub/mobileads/VungleRewardedVideo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mopub/mobileads/VungleRewardedVideo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mIsLoading:Z

    return p1
.end method

.method private modifyAdConfig(Lcom/vungle/publisher/AdConfig;Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)V
    .locals 1
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;
    .param p2, "mediationSettings"    # Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    .prologue
    .line 140
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$200(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$200(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogBodyText(Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$300(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$300(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogCloseButtonText(Ljava/lang/String;)V

    .line 146
    :cond_1
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$400(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$400(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogKeepWatchingButtonText(Ljava/lang/String;)V

    .line 149
    :cond_2
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$500(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$500(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogTitle(Ljava/lang/String;)V

    .line 152
    :cond_3
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$600(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 153
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$600(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedUserId(Ljava/lang/String;)V

    .line 155
    :cond_4
    return-void
.end method

.method private scheduleOnVideoLoaded()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x1

    .line 158
    new-instance v1, Lcom/mopub/mobileads/VungleRewardedVideo$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VungleRewardedVideo$2;-><init>(Lcom/mopub/mobileads/VungleRewardedVideo;)V

    .line 175
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-boolean v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mIsLoading:Z

    .line 179
    :cond_0
    return-void
.end method

.method private setUpMediationSettingsForRequest(Lcom/vungle/publisher/AdConfig;)V
    .locals 4
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    .line 125
    const-class v2, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    .line 126
    invoke-static {v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getGlobalMediationSettings(Ljava/lang/Class;)Lcom/mopub/common/MediationSettings;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    .line 127
    .local v0, "globalMediationSettings":Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;
    const-class v2, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    iget-object v3, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 128
    invoke-static {v2, v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    .line 132
    .local v1, "instanceMediationSettings":Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;
    if-eqz v1, :cond_1

    .line 133
    invoke-direct {p0, p1, v1}, Lcom/mopub/mobileads/VungleRewardedVideo;->modifyAdConfig(Lcom/vungle/publisher/AdConfig;Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/VungleRewardedVideo;->modifyAdConfig(Lcom/vungle/publisher/AdConfig;Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3
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
    const/4 v0, 0x1

    .line 89
    const-class v1, Lcom/mopub/mobileads/VungleRewardedVideo;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-boolean v2, Lcom/mopub/mobileads/VungleRewardedVideo;->sInitialized:Z

    if-nez v2, :cond_0

    .line 91
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v2

    sput-object v2, Lcom/mopub/mobileads/VungleRewardedVideo;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    .line 92
    const/4 v2, 0x1

    sput-boolean v2, Lcom/mopub/mobileads/VungleRewardedVideo;->sInitialized:Z

    .line 93
    monitor-exit v1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getAdNetworkId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 82
    const-string v0, "vngl_id"

    return-object v0
.end method

.method public getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/mopub/mobileads/VungleRewardedVideo;->sLifecycleListener:Lcom/mopub/common/LifecycleListener;

    return-object v0
.end method

.method public getVideoListenerForSdk()Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 70
    sget-object v0, Lcom/mopub/mobileads/VungleRewardedVideo;->sVungleListener:Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedVideoListener;

    return-object v0
.end method

.method protected hasVideoAvailable()Z
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/mopub/mobileads/VungleRewardedVideo;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v0

    return v0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
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
    .line 101
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "appId"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "appId"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 102
    .local v1, "appId":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/mopub/mobileads/VungleRewardedVideo;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v2, p1, v1}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;)Z

    .line 103
    sget-object v2, Lcom/mopub/mobileads/VungleRewardedVideo;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/vungle/publisher/EventListener;

    const/4 v4, 0x0

    sget-object v5, Lcom/mopub/mobileads/VungleRewardedVideo;->sVungleListener:Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedVideoListener;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/VunglePub;->setEventListeners([Lcom/vungle/publisher/EventListener;)V

    .line 104
    const-string v2, "com_mopub_ad_unit_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, "adUnitObject":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 106
    check-cast v0, Ljava/lang/String;

    .end local v0    # "adUnitObject":Ljava/lang/Object;
    iput-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/VungleRewardedVideo;->scheduleOnVideoLoaded()V

    .line 109
    return-void

    .line 101
    .end local v1    # "appId":Ljava/lang/String;
    :cond_1
    const-string v1, "com.appsomniacs.da2"

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 184
    return-void
.end method

.method protected showVideo()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/vungle/publisher/AdConfig;

    invoke-direct {v0}, Lcom/vungle/publisher/AdConfig;-><init>()V

    .line 119
    .local v0, "adConfig":Lcom/vungle/publisher/AdConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivized(Z)V

    .line 120
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/VungleRewardedVideo;->setUpMediationSettingsForRequest(Lcom/vungle/publisher/AdConfig;)V

    .line 121
    sget-object v1, Lcom/mopub/mobileads/VungleRewardedVideo;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/VunglePub;->playAd(Lcom/vungle/publisher/AdConfig;)V

    .line 122
    return-void
.end method
