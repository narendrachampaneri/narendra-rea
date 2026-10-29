.class public Lcom/mopub/nativeads/NativeResponse;
.super Ljava/lang/Object;
.source "NativeResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeResponse$NativeViewClickListener;,
        Lcom/mopub/nativeads/NativeResponse$Parameter;
    }
.end annotation


# instance fields
.field private final mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsClicked:Z

.field private mIsDestroyed:Z

.field private final mMoPubClickTracker:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMoPubImpressionTrackers:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMoPubNativeEventListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRecordedImpression:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/nativeads/NativeAdInterface;Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "impressionUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "clickUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "nativeAd"    # Lcom/mopub/nativeads/NativeAdInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "moPubNativeEventListener"    # Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mContext:Landroid/content/Context;

    .line 107
    iput-object p4, p0, Lcom/mopub/nativeads/NativeResponse;->mAdUnitId:Ljava/lang/String;

    .line 108
    iput-object p6, p0, Lcom/mopub/nativeads/NativeResponse;->mMoPubNativeEventListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    .line 109
    iput-object p5, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    .line 110
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    new-instance v1, Lcom/mopub/nativeads/NativeResponse$1;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/NativeResponse$1;-><init>(Lcom/mopub/nativeads/NativeResponse;)V

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/NativeAdInterface;->setNativeEventListener(Lcom/mopub/nativeads/BaseForwardingNativeAd$NativeEventListener;)V

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mMoPubImpressionTrackers:Ljava/util/Set;

    .line 123
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mMoPubImpressionTrackers:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    iput-object p3, p0, Lcom/mopub/nativeads/NativeResponse;->mMoPubClickTracker:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/volley/toolbox/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;

    .line 126
    return-void
.end method

.method private loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 335
    if-nez p2, :cond_0

    .line 359
    :goto_0
    return-void

    .line 339
    :cond_0
    if-nez p1, :cond_1

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;

    new-instance v1, Lcom/mopub/nativeads/NativeResponse$2;

    invoke-direct {v1, p0, p2}, Lcom/mopub/nativeads/NativeResponse$2;-><init>(Lcom/mopub/nativeads/NativeResponse;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1, v1}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_0
.end method

.method private openClickDestinationUrl(Landroid/view/View;Lcom/mopub/nativeads/SpinningProgressView;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "spinningProgressView"    # Lcom/mopub/nativeads/SpinningProgressView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 363
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 365
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 369
    :cond_0
    if-eqz p1, :cond_1

    .line 370
    invoke-virtual {p2, p1}, Lcom/mopub/nativeads/SpinningProgressView;->addToRoot(Landroid/view/View;)Z

    .line 373
    :cond_1
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    .line 374
    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    new-instance v1, Lcom/mopub/nativeads/NativeResponse$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/mopub/nativeads/NativeResponse$3;-><init>(Lcom/mopub/nativeads/NativeResponse;Landroid/view/View;Lcom/mopub/nativeads/SpinningProgressView;)V

    .line 382
    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/NativeResponse;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 406
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 408
    check-cast v1, Landroid/view/ViewGroup;

    .line 409
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 410
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/mopub/nativeads/NativeResponse;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    .end local v0    # "i":I
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/NativeResponse;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/NativeAdInterface;->clear(Landroid/view/View;)V

    .line 292
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_0
    sget-object v0, Lcom/mopub/nativeads/MoPubNative;->EMPTY_EVENT_LISTENER:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    iput-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mMoPubNativeEventListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    .line 301
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->destroy()V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeResponse;->mIsDestroyed:Z

    goto :goto_0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClickDestinationUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClickTracker()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mMoPubClickTracker:Ljava/lang/String;

    return-object v0
.end method

.method public getDaaIconClickthroughUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->getDaaIconClickthroughUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/NativeAdInterface;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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
    .line 223
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->getExtras()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionMinPercentageViewed()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->getImpressionMinPercentageViewed()I

    move-result v0

    return v0
.end method

.method public getImpressionMinTimeViewed()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->getImpressionMinTimeViewed()I

    move-result v0

    return v0
.end method

.method public getImpressionTrackers()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 187
    .local v0, "allImpressionTrackers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mopub/nativeads/NativeResponse;->mMoPubImpressionTrackers:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 188
    iget-object v1, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v1}, Lcom/mopub/nativeads/NativeAdInterface;->getImpressionTrackers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getMainImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMoPubNativeEventListener()Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mMoPubNativeEventListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    return-object v0
.end method

.method public getRecordedImpression()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeResponse;->mRecordedImpression:Z

    return v0
.end method

.method public getStarRating()Ljava/lang/Double;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 264
    new-instance v0, Lcom/mopub/nativeads/SpinningProgressView;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeResponse;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/SpinningProgressView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/NativeResponse;->handleClick(Landroid/view/View;Lcom/mopub/nativeads/SpinningProgressView;)V

    .line 265
    return-void
.end method

.method handleClick(Landroid/view/View;Lcom/mopub/nativeads/SpinningProgressView;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "spinningProgressView"    # Lcom/mopub/nativeads/SpinningProgressView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 270
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 272
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->isClicked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mMoPubClickTracker:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeResponse;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->CLICK_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {v0, v1, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 281
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/NativeResponse;->openClickDestinationUrl(Landroid/view/View;Lcom/mopub/nativeads/SpinningProgressView;)V

    .line 282
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/NativeAdInterface;->handleClick(Landroid/view/View;)V

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeResponse;->mIsClicked:Z

    .line 285
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mMoPubNativeEventListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;->onNativeClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isClicked()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeResponse;->mIsClicked:Z

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeResponse;->mIsDestroyed:Z

    return v0
.end method

.method public isOverridingClickTracker()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->isOverridingClickTracker()Z

    move-result v0

    return v0
.end method

.method public isOverridingImpressionTracker()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeAdInterface;->isOverridingImpressionTracker()Z

    move-result v0

    return v0
.end method

.method public loadExtrasImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/NativeResponse;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 317
    check-cast v0, Ljava/lang/String;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-direct {p0, v0, p2}, Lcom/mopub/nativeads/NativeResponse;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 319
    :cond_0
    return-void
.end method

.method public loadIconImage(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mopub/nativeads/NativeResponse;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 312
    return-void
.end method

.method public loadMainImage(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mopub/nativeads/NativeResponse;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 308
    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->isOverridingClickTracker()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    new-instance v0, Lcom/mopub/nativeads/NativeResponse$NativeViewClickListener;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/NativeResponse$NativeViewClickListener;-><init>(Lcom/mopub/nativeads/NativeResponse;)V

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/NativeResponse;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/NativeAdInterface;->prepare(Landroid/view/View;)V

    goto :goto_0
.end method

.method public recordImpression(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getRecordedImpression()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getImpressionTrackers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    .local v0, "impressionTracker":Ljava/lang/String;
    iget-object v2, p0, Lcom/mopub/nativeads/NativeResponse;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/mopub/common/event/BaseEvent$Name;->IMPRESSION_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {v0, v2, v3}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V

    goto :goto_1

    .line 257
    .end local v0    # "impressionTracker":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/mopub/nativeads/NativeResponse;->mNativeAd:Lcom/mopub/nativeads/NativeAdInterface;

    invoke-interface {v1}, Lcom/mopub/nativeads/NativeAdInterface;->recordImpression()V

    .line 258
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mopub/nativeads/NativeResponse;->mRecordedImpression:Z

    .line 260
    iget-object v1, p0, Lcom/mopub/nativeads/NativeResponse;->mMoPubNativeEventListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    invoke-interface {v1, p1}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;->onNativeImpression(Landroid/view/View;)V

    goto :goto_0
.end method

.method setRecordedImpression(Z)V
    .locals 0
    .param p1, "recordedImpression"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeResponse;->mRecordedImpression:Z

    .line 439
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->TITLE:Lcom/mopub/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    sget-object v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->TEXT:Lcom/mopub/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    sget-object v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->ICON_IMAGE:Lcom/mopub/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    sget-object v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->MAIN_IMAGE:Lcom/mopub/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getMainImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    sget-object v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->STAR_RATING:Lcom/mopub/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getStarRating()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    sget-object v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->IMPRESSION_TRACKER:Lcom/mopub/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getImpressionTrackers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    sget-object v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->CLICK_TRACKER:Lcom/mopub/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/NativeResponse;->mMoPubClickTracker:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    sget-object v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->CLICK_DESTINATION:Lcom/mopub/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    sget-object v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->CALL_TO_ACTION:Lcom/mopub/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/mopub/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, "recordedImpression"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mopub/nativeads/NativeResponse;->mRecordedImpression:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "extras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
