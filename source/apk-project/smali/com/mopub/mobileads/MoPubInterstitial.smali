.class public Lcom/mopub/mobileads/MoPubInterstitial;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;,
        Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;,
        Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;,
        Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdUnitId:Ljava/lang/String;

.field private mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

.field private mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

.field private mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

.field private mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

.field private mIsDestroyed:Z

.field private mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdUnitId:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;-><init>(Lcom/mopub/mobileads/MoPubInterstitial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setAdUnitId(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/CustomEventInterstitialAdapter;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubInterstitial;
    .param p1, "x1"    # Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-object v0
.end method

.method private resetCurrentInterstitial()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->invalidate()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mIsDestroyed:Z

    .line 88
    return-void
.end method

.method private showCustomEventInterstitial()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->showInterstitial()V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public customEventActionWillBegin()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->registerClick()V

    .line 334
    :cond_0
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 329
    :cond_0
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->trackImpression()V

    .line 324
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mIsDestroyed:Z

    .line 140
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->invalidate()V

    .line 142
    iput-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->destroy()V

    .line 147
    return-void
.end method

.method public forceRefresh()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->resetCurrentInterstitial()V

    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->forceRefresh()V

    .line 77
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getAdTimeoutDelay()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getInterstitialAdListener()Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListener()Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    return-object v0
.end method

.method public getLocalExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getLocalExtras()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLocationAwareness()Lcom/mopub/common/LocationService$LocationAwareness;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/LocationService$LocationAwareness;->fromMoPubLocationAwareness(Lcom/mopub/common/MoPub$LocationAwareness;)Lcom/mopub/common/LocationService$LocationAwareness;

    move-result-object v0

    return-object v0
.end method

.method public getLocationPrecision()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationPrecision()I

    move-result v0

    return v0
.end method

.method getMoPubInterstitialView()Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    return-object v0
.end method

.method public getTesting()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getTesting()Z

    move-result v0

    return v0
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mIsDestroyed:Z

    return v0
.end method

.method public isFacebookSupported()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->isReady()Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->resetCurrentInterstitial()V

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadAd()V

    .line 72
    return-void
.end method

.method public onCustomEventInterstitialClicked()V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->registerClick()V

    .line 215
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V

    goto :goto_0
.end method

.method public onCustomEventInterstitialDismissed()V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 226
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    goto :goto_0
.end method

.method public onCustomEventInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 195
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onCustomEventInterstitialLoaded()V
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mIsDestroyed:Z

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->CUSTOM_EVENT_AD_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 183
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;->OnInterstitialLoaded()V

    goto :goto_0
.end method

.method public onCustomEventInterstitialShown()V
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->trackImpression()V

    .line 204
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    goto :goto_0
.end method

.method public setFacebookSupported(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    return-void
.end method

.method public setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    .line 151
    return-void
.end method

.method setInterstitialView(Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;)V
    .locals 0
    .param p1, "interstitialView"    # Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 308
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    .line 309
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setKeywords(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public setListener(Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 313
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    .line 314
    return-void
.end method

.method public setLocalExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setLocalExtras(Ljava/util/Map;)V

    .line 167
    return-void
.end method

.method public setLocationAwareness(Lcom/mopub/common/LocationService$LocationAwareness;)V
    .locals 1
    .param p1, "locationAwareness"    # Lcom/mopub/common/LocationService$LocationAwareness;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/mopub/common/LocationService$LocationAwareness;->getNewLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/MoPub;->setLocationAwareness(Lcom/mopub/common/MoPub$LocationAwareness;)V

    .line 234
    return-void
.end method

.method public setLocationPrecision(I)V
    .locals 0
    .param p1, "precision"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    invoke-static {p1}, Lcom/mopub/common/MoPub;->setLocationPrecision(I)V

    .line 244
    return-void
.end method

.method public setTesting(Z)V
    .locals 1
    .param p1, "testing"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setTesting(Z)V

    .line 159
    return-void
.end method

.method public show()Z
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$1;->$SwitchMap$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 104
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 101
    :pswitch_0
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->showCustomEventInterstitial()V

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
