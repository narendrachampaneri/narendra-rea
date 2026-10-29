.class public Lcom/mopub/mobileads/AdColonyInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "AdColonyInterstitial.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdListener;


# static fields
.field public static final ALL_ZONE_IDS_KEY:Ljava/lang/String; = "allZoneIds"

.field public static final APP_ID_KEY:Ljava/lang/String; = "appId"

.field public static final CLIENT_OPTIONS_KEY:Ljava/lang/String; = "clientOptions"

.field private static final DEFAULT_ALL_ZONE_IDS:[Ljava/lang/String;

.field private static final DEFAULT_APP_ID:Ljava/lang/String; = "app2ee04b82f705434aa6"

.field private static final DEFAULT_CLIENT_OPTIONS:Ljava/lang/String; = "version=2.2.5,store:google"

.field private static final DEFAULT_ZONE_ID:Ljava/lang/String; = "vza08f3dd12e7e48aaa6"

.field public static final ZONE_ID_KEY:Ljava/lang/String; = "zoneId"

.field private static isAdColonyConfigured:Z


# instance fields
.field private mAdColonyVideoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

.field private mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private final mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vza08f3dd12e7e48aaa6"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mopub/mobileads/AdColonyInterstitial;->DEFAULT_ALL_ZONE_IDS:[Ljava/lang/String;

    .line 42
    sput-boolean v2, Lcom/mopub/mobileads/AdColonyInterstitial;->isAdColonyConfigured:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/AdColonyInterstitial;)Lcom/jirbo/adcolony/AdColonyVideoAd;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyInterstitial;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyVideoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mopub/mobileads/AdColonyInterstitial;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyInterstitial;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/AdColonyInterstitial;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyInterstitial;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/AdColonyInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyInterstitial;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/AdColonyInterstitial;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyInterstitial;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mHandler:Landroid/os/Handler;

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
    .line 117
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "allZoneIds"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/mopub/common/util/Json;->jsonArrayToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "result":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 121
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .end local v0    # "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 124
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
    .line 110
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "clientOptions"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appId"

    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "allZoneIds"

    .line 112
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zoneId"

    .line 113
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

.method private scheduleOnInterstitialLoaded()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x1

    .line 128
    new-instance v1, Lcom/mopub/mobileads/AdColonyInterstitial$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdColonyInterstitial$1;-><init>(Lcom/mopub/mobileads/AdColonyInterstitial;)V

    .line 145
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mIsLoading:Z

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method getScheduledThreadPoolExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
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
    .line 60
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    instance-of v4, p1, Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 61
    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v4}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 88
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 65
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    const-string v2, "version=2.2.5,store:google"

    .line 66
    .local v2, "clientOptions":Ljava/lang/String;
    const-string v1, "app2ee04b82f705434aa6"

    .line 67
    .local v1, "appId":Ljava/lang/String;
    sget-object v0, Lcom/mopub/mobileads/AdColonyInterstitial;->DEFAULT_ALL_ZONE_IDS:[Ljava/lang/String;

    .line 68
    .local v0, "allZoneIds":[Ljava/lang/String;
    const-string v3, "vza08f3dd12e7e48aaa6"

    .line 70
    .local v3, "zoneId":Ljava/lang/String;
    iput-object p2, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 72
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/AdColonyInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    const-string v4, "clientOptions"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "clientOptions":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 74
    .restart local v2    # "clientOptions":Ljava/lang/String;
    const-string v4, "appId"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "appId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 75
    .restart local v1    # "appId":Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/AdColonyInterstitial;->extractAllZoneIds(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v4, "zoneId"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "zoneId":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 79
    .restart local v3    # "zoneId":Ljava/lang/String;
    :cond_1
    sget-boolean v4, Lcom/mopub/mobileads/AdColonyInterstitial;->isAdColonyConfigured:Z

    if-nez v4, :cond_2

    .line 80
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1, v2, v1, v0}, Lcom/jirbo/adcolony/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    const/4 v4, 0x1

    sput-boolean v4, Lcom/mopub/mobileads/AdColonyInterstitial;->isAdColonyConfigured:Z

    .line 84
    :cond_2
    new-instance v4, Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-direct {v4, v3}, Lcom/jirbo/adcolony/AdColonyVideoAd;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyVideoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 85
    iget-object v4, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyVideoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v4, p0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 87
    invoke-direct {p0}, Lcom/mopub/mobileads/AdColonyInterstitial;->scheduleOnInterstitialLoaded()V

    goto :goto_0
.end method

.method public onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2
    .param p1, "adColonyAd"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 168
    const-string v0, "MoPub"

    const-string v1, "AdColony interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/AdColonyInterstitial$3;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdColonyInterstitial$3;-><init>(Lcom/mopub/mobileads/AdColonyInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2
    .param p1, "adColonyAd"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 157
    const-string v0, "MoPub"

    const-string v1, "AdColony interstitial ad shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/AdColonyInterstitial$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdColonyInterstitial$2;-><init>(Lcom/mopub/mobileads/AdColonyInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyVideoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyVideoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mIsLoading:Z

    .line 107
    return-void
.end method

.method resetAdColonyConfigured()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/mobileads/AdColonyInterstitial;->isAdColonyConfigured:Z

    .line 185
    return-void
.end method

.method protected showInterstitial()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyVideoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyVideoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->show()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Tried to show a AdColony interstitial ad before it finished loading. Please try again."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
