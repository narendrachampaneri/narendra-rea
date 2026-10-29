.class public Lcom/mopub/mobileads/AppLovinBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "AppLovinBanner.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# instance fields
.field private adView:Lcom/applovin/adview/AppLovinAdView;

.field private mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onLeaveApplication()V

    .line 94
    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/mopub/mobileads/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 66
    const-string v0, "AppLovinAdapter"

    const-string v1, "AdView was passed to MoPub."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 72
    const/16 v0, 0xcc

    if-ne p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 88
    :goto_0
    return-void

    .line 76
    :cond_0
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 80
    :cond_1
    if-gez p1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bannerListener"    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .param p3, "localExtras"    # Ljava/util/Map;
    .param p4, "serverExtras"    # Ljava/util/Map;

    .prologue
    .line 34
    iput-object p2, p0, Lcom/mopub/mobileads/AppLovinBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 39
    check-cast v0, Landroid/app/Activity;

    .line 47
    const-string v1, "AppLovinAdapter"

    const-string v2, "Request received for new BANNER."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v1, Lcom/applovin/adview/AppLovinAdView;

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v1, v2, v3, v0}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/mopub/mobileads/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    .line 50
    iget-object v1, p0, Lcom/mopub/mobileads/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/applovin/adview/AppLovinAdView;->setAutoDestroy(Z)V

    .line 51
    iget-object v1, p0, Lcom/mopub/mobileads/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, p0}, Lcom/applovin/adview/AppLovinAdView;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 52
    iget-object v1, p0, Lcom/mopub/mobileads/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, p0}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 53
    iget-object v1, p0, Lcom/mopub/mobileads/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    .line 54
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/AppLovinBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v1, v2}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onInvalidate()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    .line 60
    return-void
.end method
