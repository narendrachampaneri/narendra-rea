.class public Lcom/mopub/mobileads/VungleInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "VungleInterstitial.java"

# interfaces
.implements Lcom/vungle/publisher/EventListener;


# static fields
.field public static final APP_ID_KEY:Ljava/lang/String; = "appId"

.field private static final DEFAULT_VUNGLE_APP_ID:Ljava/lang/String; = "com.appsomniacs.da2"


# instance fields
.field private mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private final mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final mVunglePub:Lcom/vungle/publisher/VunglePub;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 36
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/VungleInterstitial;)Lcom/vungle/publisher/VunglePub;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleInterstitial;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/VungleInterstitial;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleInterstitial;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/VungleInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleInterstitial;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/VungleInterstitial;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleInterstitial;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mopub/mobileads/VungleInterstitial;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleInterstitial;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/mopub/mobileads/VungleInterstitial;->mIsLoading:Z

    return p1
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
    .line 85
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appId"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private scheduleOnInterstitialLoaded()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x1

    .line 89
    new-instance v1, Lcom/mopub/mobileads/VungleInterstitial$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VungleInterstitial$1;-><init>(Lcom/mopub/mobileads/VungleInterstitial;)V

    .line 106
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-boolean v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mIsLoading:Z

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method getScheduledThreadPoolExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventInterstitialListener"    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
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

    .prologue
    .line 44
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/mopub/mobileads/VungleInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 46
    if-nez p1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/mopub/mobileads/VungleInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v1, v2}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 66
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/VungleInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const-string v1, "appId"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "appId":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/mopub/mobileads/VungleInterstitial;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v1, p1, v0}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;)Z

    .line 64
    iget-object v1, p0, Lcom/mopub/mobileads/VungleInterstitial;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/vungle/publisher/EventListener;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/VunglePub;->setEventListeners([Lcom/vungle/publisher/EventListener;)V

    .line 65
    invoke-direct {p0}, Lcom/mopub/mobileads/VungleInterstitial;->scheduleOnInterstitialLoaded()V

    goto :goto_0

    .line 59
    .end local v0    # "appId":Ljava/lang/String;
    :cond_1
    const-string v0, "com.appsomniacs.da2"

    .restart local v0    # "appId":Ljava/lang/String;
    goto :goto_1
.end method

.method public onAdEnd(Z)V
    .locals 2
    .param p1, "wasCallToActionClicked"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/VungleInterstitial$3;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/VungleInterstitial$3;-><init>(Lcom/mopub/mobileads/VungleInterstitial;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method public onAdPlayableChanged(Z)V
    .locals 0
    .param p1, "playable"    # Z

    .prologue
    .line 156
    return-void
.end method

.method public onAdStart()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/VungleInterstitial$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VungleInterstitial$2;-><init>(Lcom/mopub/mobileads/VungleInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public onAdUnavailable(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 150
    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->clearEventListeners()V

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mIsLoading:Z

    .line 82
    return-void
.end method

.method public onVideoView(ZII)V
    .locals 7
    .param p1, "isCompletedView"    # Z
    .param p2, "watchedMillis"    # I
    .param p3, "videoDurationMillis"    # I

    .prologue
    .line 118
    int-to-double v2, p2

    int-to-double v4, p3

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v0, v2, v4

    .line 119
    .local v0, "watchedPercent":D
    const-string v2, "MoPub"

    const-string v3, "%.1f%% of Vungle video watched."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method protected showInterstitial()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->playAd()V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Tried to show a Vungle interstitial ad before it finished loading. Please try again."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
