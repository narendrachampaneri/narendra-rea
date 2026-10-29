.class abstract Lcom/mopub/nativeads/BaseForwardingNativeAd;
.super Ljava/lang/Object;
.source "BaseForwardingNativeAd.java"

# interfaces
.implements Lcom/mopub/nativeads/NativeAdInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/BaseForwardingNativeAd$NativeEventListener;
    }
.end annotation


# static fields
.field private static final IMPRESSION_MIN_PERCENTAGE_VIEWED:I = 0x32

.field static final MAX_STAR_RATING:D = 5.0

.field static final MIN_STAR_RATING:D


# instance fields
.field private mCallToAction:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mClickDestinationUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mExtras:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIconImageUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mImpressionMinTimeViewed:I

.field private final mImpressionTrackers:Ljava/util/Set;
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

.field private mIsOverridingClickTracker:Z

.field private mIsOverridingImpressionTracker:Z

.field private mMainImageUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNativeEventListener:Lcom/mopub/nativeads/BaseForwardingNativeAd$NativeEventListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mStarRating:Ljava/lang/Double;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mImpressionMinTimeViewed:I

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mImpressionTrackers:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mExtras:Ljava/util/Map;

    .line 63
    return-void
.end method

.method static preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/CustomEventNative$ImageListener;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageListener"    # Lcom/mopub/nativeads/CustomEventNative$ImageListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/nativeads/CustomEventNative$ImageListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/volley/toolbox/ImageLoader;

    move-result-object v2

    .line 379
    .local v2, "imageLoader":Lcom/mopub/volley/toolbox/ImageLoader;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 380
    .local v1, "imageCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 381
    .local v0, "anyFailures":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v4, Lcom/mopub/nativeads/BaseForwardingNativeAd$1;

    invoke-direct {v4, v1, v0, p2}, Lcom/mopub/nativeads/BaseForwardingNativeAd$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/mopub/nativeads/CustomEventNative$ImageListener;)V

    .line 405
    .local v4, "volleyImageListener":Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 406
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 407
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 408
    sget-object v5, Lcom/mopub/nativeads/NativeErrorCode;->IMAGE_DOWNLOAD_FAILURE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, v5}, Lcom/mopub/nativeads/CustomEventNative$ImageListener;->onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 413
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    return-void

    .line 411
    .restart local v3    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v3, v4}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_0
.end method


# virtual methods
.method final addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 267
    const-string v0, "addExtra key is not allowed to be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final addImpressionTracker(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 274
    const-string v0, "impressionTracker url is not allowed to be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mImpressionTrackers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 330
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mCallToAction:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickDestinationUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mClickDestinationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDaaIconClickthroughUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 184
    const-string v0, "getExtra key is not allowed to be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 2
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
    .line 199
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mExtras:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionMinPercentageViewed()I
    .locals 1

    .prologue
    .line 163
    const/16 v0, 0x32

    return v0
.end method

.method public final getImpressionMinTimeViewed()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mImpressionMinTimeViewed:I

    return v0
.end method

.method public final getImpressionTrackers()Ljava/util/Set;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mImpressionTrackers:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getMainImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mStarRating:Ljava/lang/Double;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 320
    return-void
.end method

.method public final isOverridingClickTracker()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mIsOverridingClickTracker:Z

    return v0
.end method

.method public final isOverridingImpressionTracker()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mIsOverridingImpressionTracker:Z

    return v0
.end method

.method protected final notifyAdClicked()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mNativeEventListener:Lcom/mopub/nativeads/BaseForwardingNativeAd$NativeEventListener;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mNativeEventListener:Lcom/mopub/nativeads/BaseForwardingNativeAd$NativeEventListener;

    invoke-interface {v0}, Lcom/mopub/nativeads/BaseForwardingNativeAd$NativeEventListener;->onAdClicked()V

    .line 366
    :cond_0
    return-void
.end method

.method protected final notifyAdImpressed()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mNativeEventListener:Lcom/mopub/nativeads/BaseForwardingNativeAd$NativeEventListener;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mNativeEventListener:Lcom/mopub/nativeads/BaseForwardingNativeAd$NativeEventListener;

    invoke-interface {v0}, Lcom/mopub/nativeads/BaseForwardingNativeAd$NativeEventListener;->onAdImpressed()V

    .line 353
    :cond_0
    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 302
    return-void
.end method

.method public recordImpression()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method final setCallToAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "callToAction"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 244
    iput-object p1, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mCallToAction:Ljava/lang/String;

    .line 245
    return-void
.end method

.method final setClickDestinationUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickDestinationUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 240
    iput-object p1, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mClickDestinationUrl:Ljava/lang/String;

    .line 241
    return-void
.end method

.method final setIconImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconImageUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 236
    iput-object p1, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mIconImageUrl:Ljava/lang/String;

    .line 237
    return-void
.end method

.method final setImpressionMinTimeViewed(I)V
    .locals 0
    .param p1, "impressionMinTimeViewed"    # I

    .prologue
    .line 281
    if-ltz p1, :cond_0

    .line 282
    iput p1, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mImpressionMinTimeViewed:I

    .line 284
    :cond_0
    return-void
.end method

.method final setMainImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mainImageUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 232
    iput-object p1, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mMainImageUrl:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public final setNativeEventListener(Lcom/mopub/nativeads/BaseForwardingNativeAd$NativeEventListener;)V
    .locals 0
    .param p1, "nativeEventListener"    # Lcom/mopub/nativeads/BaseForwardingNativeAd$NativeEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 228
    iput-object p1, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mNativeEventListener:Lcom/mopub/nativeads/BaseForwardingNativeAd$NativeEventListener;

    .line 229
    return-void
.end method

.method final setOverridingClickTracker(Z)V
    .locals 0
    .param p1, "isOverridingClickTracker"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mIsOverridingClickTracker:Z

    .line 292
    return-void
.end method

.method final setOverridingImpressionTracker(Z)V
    .locals 0
    .param p1, "isOverridingImpressionTracker"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mIsOverridingImpressionTracker:Z

    .line 288
    return-void
.end method

.method final setStarRating(Ljava/lang/Double;)V
    .locals 6
    .param p1, "starRating"    # Ljava/lang/Double;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/16 v2, 0x0

    .line 256
    if-nez p1, :cond_0

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mStarRating:Ljava/lang/Double;

    .line 264
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_1

    .line 259
    iput-object p1, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mStarRating:Ljava/lang/Double;

    goto :goto_0

    .line 261
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to set invalid star rating ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "). Must be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 252
    iput-object p1, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mText:Ljava/lang/String;

    .line 253
    return-void
.end method

.method final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 248
    iput-object p1, p0, Lcom/mopub/nativeads/BaseForwardingNativeAd;->mTitle:Ljava/lang/String;

    .line 249
    return-void
.end method
