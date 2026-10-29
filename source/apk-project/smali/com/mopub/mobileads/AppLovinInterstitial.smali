.class public Lcom/mopub/mobileads/AppLovinInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "AppLovinInterstitial.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field private adService:Lcom/applovin/sdk/AppLovinAdService;

.field private lastReceived:Lcom/applovin/sdk/AppLovinAd;

.field private mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private parentActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/AppLovinInterstitial;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AppLovinInterstitial;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/AppLovinInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AppLovinInterstitial;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object v0
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 103
    const-string v0, "MoPub"

    const-string v1, "AppLovin interstitial loaded successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-object p1, p0, Lcom/mopub/mobileads/AppLovinInterstitial;->lastReceived:Lcom/applovin/sdk/AppLovinAd;

    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial;->parentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/mopub/mobileads/AppLovinInterstitial$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AppLovinInterstitial$2;-><init>(Lcom/mopub/mobileads/AppLovinInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial;->parentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/mopub/mobileads/AppLovinInterstitial$3;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/AppLovinInterstitial$3;-><init>(Lcom/mopub/mobileads/AppLovinInterstitial;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
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
    .line 34
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/mopub/mobileads/AppLovinInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 36
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 38
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial;->parentActivity:Landroid/app/Activity;

    .line 47
    const-string v0, "AppLovinAdapter"

    const-string v1, "Request received for new interstitial."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial;->adService:Lcom/applovin/sdk/AppLovinAdService;

    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial;->adService:Lcom/applovin/sdk/AppLovinAdService;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v0, v1, p0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 51
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onInvalidate()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial;->lastReceived:Lcom/applovin/sdk/AppLovinAd;

    .line 58
    .local v0, "adToRender":Lcom/applovin/sdk/AppLovinAd;
    if-eqz v0, :cond_0

    .line 60
    const-string v1, "MoPub"

    const-string v2, "Showing AppLovin interstitial ad..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/mopub/mobileads/AppLovinInterstitial;->parentActivity:Landroid/app/Activity;

    new-instance v2, Lcom/mopub/mobileads/AppLovinInterstitial$1;

    invoke-direct {v2, p0, v0}, Lcom/mopub/mobileads/AppLovinInterstitial$1;-><init>(Lcom/mopub/mobileads/AppLovinInterstitial;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    :cond_0
    return-void
.end method
