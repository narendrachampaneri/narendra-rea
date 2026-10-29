.class public Lcom/mopub/mobileads/InMobiInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "InMobiInterstitial.java"

# interfaces
.implements Lcom/inmobi/monetization/IMInterstitialListener;


# static fields
.field private static isAppInitialized:Z


# instance fields
.field private iMInterstitial:Lcom/inmobi/monetization/IMInterstitial;

.field private mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/mobileads/InMobiInterstitial;->isAppInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interstitialListener"    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
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
    .line 24
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/mopub/mobileads/InMobiInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 25
    const-string v1, "e5fda0998ffa46d9bf09332cc01eb783"

    .line 27
    .local v1, "inMobiAppId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 28
    .local v0, "activity":Landroid/app/Activity;
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 29
    check-cast v0, Landroid/app/Activity;

    .line 35
    :cond_0
    if-nez v0, :cond_1

    .line 36
    iget-object v3, p0, Lcom/mopub/mobileads/InMobiInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v3, v4}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 56
    :goto_0
    return-void

    .line 44
    :cond_1
    sget-boolean v3, Lcom/mopub/mobileads/InMobiInterstitial;->isAppInitialized:Z

    if-nez v3, :cond_2

    .line 45
    invoke-static {v0, v1}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x1

    sput-boolean v3, Lcom/mopub/mobileads/InMobiInterstitial;->isAppInitialized:Z

    .line 48
    :cond_2
    new-instance v3, Lcom/inmobi/monetization/IMInterstitial;

    invoke-direct {v3, v0, v1}, Lcom/inmobi/monetization/IMInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mopub/mobileads/InMobiInterstitial;->iMInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    .line 50
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "tp"

    const-string v4, "c_mopub"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "tp-ver"

    const-string v4, "3.13.0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v3, p0, Lcom/mopub/mobileads/InMobiInterstitial;->iMInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v3, v2}, Lcom/inmobi/monetization/IMInterstitial;->setRequestParams(Ljava/util/Map;)V

    .line 54
    iget-object v3, p0, Lcom/mopub/mobileads/InMobiInterstitial;->iMInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v3, p0}, Lcom/inmobi/monetization/IMInterstitial;->setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V

    .line 55
    iget-object v3, p0, Lcom/mopub/mobileads/InMobiInterstitial;->iMInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v3}, Lcom/inmobi/monetization/IMInterstitial;->loadInterstitial()V

    goto :goto_0
.end method

.method public onDismissInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 1
    .param p1, "imInterstitial"    # Lcom/inmobi/monetization/IMInterstitial;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 85
    return-void
.end method

.method public onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 2
    .param p1, "imInterstitial"    # Lcom/inmobi/monetization/IMInterstitial;
    .param p2, "imErrorCode"    # Lcom/inmobi/monetization/IMErrorCode;

    .prologue
    .line 89
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    if-ne p2, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 100
    :goto_0
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    if-ne p2, v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 93
    :cond_1
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    if-ne p2, v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 95
    :cond_2
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->NO_FILL:Lcom/inmobi/monetization/IMErrorCode;

    if-ne p2, v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onInterstitialInteraction(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V
    .locals 1
    .param p1, "imInterstitial"    # Lcom/inmobi/monetization/IMInterstitial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 106
    return-void
.end method

.method public onInterstitialLoaded(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 1
    .param p1, "imInterstitial"    # Lcom/inmobi/monetization/IMInterstitial;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 111
    return-void
.end method

.method public onInvalidate()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->iMInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->iMInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->iMInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->destroy()V

    .line 80
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 0
    .param p1, "imInterstitial"    # Lcom/inmobi/monetization/IMInterstitial;

    .prologue
    .line 116
    return-void
.end method

.method public onShowInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 1
    .param p1, "imInterstitial"    # Lcom/inmobi/monetization/IMInterstitial;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 121
    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->iMInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    iget-object v1, p0, Lcom/mopub/mobileads/InMobiInterstitial;->iMInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    .line 69
    invoke-virtual {v1}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMInterstitial$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->iMInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->show()V

    .line 72
    :cond_0
    return-void
.end method
