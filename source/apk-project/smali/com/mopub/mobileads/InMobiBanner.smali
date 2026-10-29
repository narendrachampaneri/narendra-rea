.class public Lcom/mopub/mobileads/InMobiBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "InMobiBanner.java"

# interfaces
.implements Lcom/inmobi/monetization/IMBannerListener;


# static fields
.field private static isAppInitialized:Z


# instance fields
.field private iMBanner:Lcom/inmobi/monetization/IMBanner;

.field private mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/mobileads/InMobiBanner;->isAppInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bannerListener"    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
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
    .line 28
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/mopub/mobileads/InMobiBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 29
    const-string v1, "e5fda0998ffa46d9bf09332cc01eb783"

    .line 31
    .local v1, "inMobiAppId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 32
    .local v0, "activity":Landroid/app/Activity;
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 33
    check-cast v0, Landroid/app/Activity;

    .line 38
    :cond_0
    if-nez v0, :cond_1

    .line 39
    iget-object v3, p0, Lcom/mopub/mobileads/InMobiBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 63
    :goto_0
    return-void

    .line 42
    :cond_1
    sget-boolean v3, Lcom/mopub/mobileads/InMobiBanner;->isAppInitialized:Z

    if-nez v3, :cond_2

    .line 43
    invoke-static {v0, v1}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 44
    const/4 v3, 0x1

    sput-boolean v3, Lcom/mopub/mobileads/InMobiBanner;->isAppInitialized:Z

    .line 51
    :cond_2
    new-instance v3, Lcom/inmobi/monetization/IMBanner;

    const/16 v4, 0xf

    invoke-direct {v3, v0, v1, v4}, Lcom/inmobi/monetization/IMBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/mopub/mobileads/InMobiBanner;->iMBanner:Lcom/inmobi/monetization/IMBanner;

    .line 54
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "tp"

    const-string v4, "c_mopub"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v3, "tp-ver"

    const-string v4, "3.13.0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v3, p0, Lcom/mopub/mobileads/InMobiBanner;->iMBanner:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v3, v2}, Lcom/inmobi/monetization/IMBanner;->setRequestParams(Ljava/util/Map;)V

    .line 58
    sget-object v3, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->VERBOSE:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    invoke-static {v3}, Lcom/inmobi/commons/InMobi;->setLogLevel(Lcom/inmobi/commons/InMobi$LOG_LEVEL;)V

    .line 59
    iget-object v3, p0, Lcom/mopub/mobileads/InMobiBanner;->iMBanner:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v3, p0}, Lcom/inmobi/monetization/IMBanner;->setIMBannerListener(Lcom/inmobi/monetization/IMBannerListener;)V

    .line 60
    iget-object v3, p0, Lcom/mopub/mobileads/InMobiBanner;->iMBanner:Lcom/inmobi/monetization/IMBanner;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/inmobi/monetization/IMBanner;->setRefreshInterval(I)V

    .line 61
    iget-object v3, p0, Lcom/mopub/mobileads/InMobiBanner;->iMBanner:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v3}, Lcom/inmobi/monetization/IMBanner;->loadBanner()V

    goto :goto_0
.end method

.method public onBannerInteraction(Lcom/inmobi/monetization/IMBanner;Ljava/util/Map;)V
    .locals 1
    .param p1, "imBanner"    # Lcom/inmobi/monetization/IMBanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 85
    return-void
.end method

.method public onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 2
    .param p1, "imBanner"    # Lcom/inmobi/monetization/IMBanner;
    .param p2, "imErrorCode"    # Lcom/inmobi/monetization/IMErrorCode;

    .prologue
    .line 90
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    if-ne p2, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 103
    :goto_0
    return-void

    .line 92
    :cond_0
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    if-ne p2, v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 94
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 95
    :cond_1
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    if-ne p2, v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 97
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 98
    :cond_2
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->NO_FILL:Lcom/inmobi/monetization/IMErrorCode;

    if-ne p2, v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onBannerRequestSucceeded(Lcom/inmobi/monetization/IMBanner;)V
    .locals 2
    .param p1, "imBanner"    # Lcom/inmobi/monetization/IMBanner;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->iMBanner:Lcom/inmobi/monetization/IMBanner;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onDismissBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 1
    .param p1, "imBanner"    # Lcom/inmobi/monetization/IMBanner;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerCollapsed()V

    .line 118
    return-void
.end method

.method public onInvalidate()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->iMBanner:Lcom/inmobi/monetization/IMBanner;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->iMBanner:Lcom/inmobi/monetization/IMBanner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner;->setIMBannerListener(Lcom/inmobi/monetization/IMBannerListener;)V

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->iMBanner:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->iMBanner:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMBanner;->destroy()V

    .line 80
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMBanner;)V
    .locals 0
    .param p1, "imBanner"    # Lcom/inmobi/monetization/IMBanner;

    .prologue
    .line 123
    return-void
.end method

.method public onShowBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 1
    .param p1, "imBanner"    # Lcom/inmobi/monetization/IMBanner;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 128
    return-void
.end method
