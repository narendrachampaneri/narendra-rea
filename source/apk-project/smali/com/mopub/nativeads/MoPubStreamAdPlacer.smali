.class public Lcom/mopub/nativeads/MoPubStreamAdPlacer;
.super Ljava/lang/Object;
.source "MoPubStreamAdPlacer.java"


# static fields
.field public static final CONTENT_VIEW_TYPE:I = 0x0

.field private static final DEFAULT_AD_VIEW_TYPE:I = -0x1

.field private static final EMPTY_NATIVE_AD_LOADED_LISTENER:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

.field private static final MAX_VISIBLE_RANGE:I = 0x64

.field private static final RANGE_BUFFER:I = 0xa


# instance fields
.field private adViewType:I

.field private mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAdSource:Lcom/mopub/nativeads/NativeAdSource;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHasPlacedAds:Z

.field private mHasReceivedAds:Z

.field private mHasReceivedPositions:Z

.field private final mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mItemCount:I

.field private final mNativeResponseMap:Ljava/util/WeakHashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/NativeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsPlacement:Z

.field private mPendingPlacementData:Lcom/mopub/nativeads/PlacementData;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPlacementData:Lcom/mopub/nativeads/PlacementData;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPlacementHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPlacementRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPositioningSource:Lcom/mopub/nativeads/PositioningSource;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mViewMap:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/mopub/nativeads/NativeResponse;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVisibleRangeEnd:I

.field private mVisibleRangeStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$1;

    invoke-direct {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$1;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->EMPTY_NATIVE_AD_LOADED_LISTENER:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    invoke-static {}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->serverPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/content/Context;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adPositioning"    # Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    new-instance v0, Lcom/mopub/nativeads/NativeAdSource;

    invoke-direct {v0}, Lcom/mopub/nativeads/NativeAdSource;-><init>()V

    new-instance v1, Lcom/mopub/nativeads/ImpressionTracker;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/ImpressionTracker;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/mopub/nativeads/ClientPositioningSource;

    invoke-direct {v2, p2}, Lcom/mopub/nativeads/ClientPositioningSource;-><init>(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/content/Context;Lcom/mopub/nativeads/NativeAdSource;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/PositioningSource;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adPositioning"    # Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    new-instance v0, Lcom/mopub/nativeads/NativeAdSource;

    invoke-direct {v0}, Lcom/mopub/nativeads/NativeAdSource;-><init>()V

    new-instance v1, Lcom/mopub/nativeads/ImpressionTracker;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/ImpressionTracker;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/mopub/nativeads/ServerPositioningSource;

    invoke-direct {v2, p1}, Lcom/mopub/nativeads/ServerPositioningSource;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/content/Context;Lcom/mopub/nativeads/NativeAdSource;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/PositioningSource;)V

    .line 116
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mopub/nativeads/NativeAdSource;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/PositioningSource;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adSource"    # Lcom/mopub/nativeads/NativeAdSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "impressionTracker"    # Lcom/mopub/nativeads/ImpressionTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "positioningSource"    # Lcom/mopub/nativeads/PositioningSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->adViewType:I

    .line 73
    sget-object v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->EMPTY_NATIVE_AD_LOADED_LISTENER:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    .line 140
    const-string v0, "context is not allowed to be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    const-string v0, "adSource is not allowed to be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    const-string v0, "impressionTracker is not allowed to be null"

    invoke-static {p3, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    const-string v0, "positioningSource is not allowed to be null"

    invoke-static {p4, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mContext:Landroid/content/Context;

    .line 148
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    .line 149
    iput-object p4, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPositioningSource:Lcom/mopub/nativeads/PositioningSource;

    .line 150
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    .line 151
    invoke-static {}, Lcom/mopub/nativeads/PlacementData;->empty()Lcom/mopub/nativeads/PlacementData;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    .line 153
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNativeResponseMap:Ljava/util/WeakHashMap;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mViewMap:Ljava/util/HashMap;

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementHandler:Landroid/os/Handler;

    .line 157
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementRunnable:Ljava/lang/Runnable;

    .line 168
    iput v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    .line 169
    iput v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeEnd:I

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNeedsPlacement:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubStreamAdPlacer;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNeedsPlacement:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeAds()V

    return-void
.end method

.method private clearNativeResponse(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 735
    if-nez p1, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    .line 739
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNativeResponseMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeResponse;

    .line 740
    .local v0, "lastNativeResponse":Lcom/mopub/nativeads/NativeResponse;
    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeResponse;->clear(Landroid/view/View;)V

    .line 742
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNativeResponseMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private createAdData(Lcom/mopub/nativeads/NativeResponse;)Lcom/mopub/nativeads/NativeAdData;
    .locals 3
    .param p1, "adResponse"    # Lcom/mopub/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 725
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 728
    new-instance v0, Lcom/mopub/nativeads/NativeAdData;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdUnitId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    invoke-direct {v0, v1, v2, p1}, Lcom/mopub/nativeads/NativeAdData;-><init>(Ljava/lang/String;Lcom/mopub/nativeads/MoPubAdRenderer;Lcom/mopub/nativeads/NativeResponse;)V

    return-object v0
.end method

.method private notifyNeedsPlacement()V
    .locals 2

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNeedsPlacement:Z

    if-eqz v0, :cond_0

    .line 658
    :goto_0
    return-void

    .line 654
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNeedsPlacement:Z

    .line 657
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private placeAds()V
    .locals 2

    .prologue
    .line 665
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeEnd:I

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->tryPlaceAdsInRange(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    :goto_0
    return-void

    .line 672
    :cond_0
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeEnd:I

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeEnd:I

    add-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->tryPlaceAdsInRange(II)Z

    goto :goto_0
.end method

.method private placeInitialAds(Lcom/mopub/nativeads/PlacementData;)V
    .locals 2
    .param p1, "placementData"    # Lcom/mopub/nativeads/PlacementData;

    .prologue
    .line 314
    const/4 v0, 0x0

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 316
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    .line 317
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeAds()V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasPlacedAds:Z

    .line 319
    return-void
.end method

.method private prepareNativeResponse(Lcom/mopub/nativeads/NativeResponse;Landroid/view/View;)V
    .locals 2
    .param p1, "nativeResponse"    # Lcom/mopub/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 752
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mViewMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNativeResponseMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse;->isOverridingImpressionTracker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0, p2, p1}, Lcom/mopub/nativeads/ImpressionTracker;->addView(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V

    .line 757
    :cond_0
    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/NativeResponse;->prepare(Landroid/view/View;)V

    .line 758
    return-void
.end method

.method private tryPlaceAd(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 709
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeAdSource;->dequeueAd()Lcom/mopub/nativeads/NativeResponse;

    move-result-object v1

    .line 710
    .local v1, "adResponse":Lcom/mopub/nativeads/NativeResponse;
    if-nez v1, :cond_0

    .line 711
    const/4 v2, 0x0

    .line 719
    :goto_0
    return v2

    .line 714
    :cond_0
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->createAdData(Lcom/mopub/nativeads/NativeResponse;)Lcom/mopub/nativeads/NativeAdData;

    move-result-object v0

    .line 715
    .local v0, "adData":Lcom/mopub/nativeads/NativeAdData;
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v2, p1, v0}, Lcom/mopub/nativeads/PlacementData;->placeAd(ILcom/mopub/nativeads/NativeAdData;)V

    .line 716
    iget v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    .line 718
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v2, p1}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdLoaded(I)V

    .line 719
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private tryPlaceAdsInRange(II)Z
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 684
    move v1, p1

    .line 685
    .local v1, "position":I
    add-int/lit8 v0, p2, -0x1

    .line 686
    .local v0, "lastPosition":I
    :goto_0
    if-gt v1, v0, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 687
    iget v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    if-lt v1, v2, :cond_1

    .line 698
    :cond_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 690
    :cond_1
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v2, v1}, Lcom/mopub/nativeads/PlacementData;->shouldPlaceAd(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 691
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->tryPlaceAd(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 692
    const/4 v2, 0x0

    goto :goto_1

    .line 694
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 696
    :cond_3
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v2, v1}, Lcom/mopub/nativeads/PlacementData;->nextInsertionPosition(I)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public bindAdView(Lcom/mopub/nativeads/NativeAdData;Landroid/view/View;)V
    .locals 4
    .param p1, "adData"    # Lcom/mopub/nativeads/NativeAdData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 437
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAdData;->getAd()Lcom/mopub/nativeads/NativeResponse;

    move-result-object v2

    .line 438
    .local v2, "nativeResponse":Lcom/mopub/nativeads/NativeResponse;
    iget-object v3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 439
    .local v1, "mappedViewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 440
    .local v0, "mappedView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mappedView":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 443
    .restart local v0    # "mappedView":Landroid/view/View;
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 444
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->clearNativeResponse(Landroid/view/View;)V

    .line 445
    invoke-direct {p0, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->clearNativeResponse(Landroid/view/View;)V

    .line 446
    invoke-direct {p0, v2, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->prepareNativeResponse(Lcom/mopub/nativeads/NativeResponse;Landroid/view/View;)V

    .line 448
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAdData;->getAdRenderer()Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lcom/mopub/nativeads/MoPubAdRenderer;->renderAdView(Landroid/view/View;Ljava/lang/Object;)V

    .line 450
    :cond_1
    return-void
.end method

.method public clearAds()V
    .locals 2

    .prologue
    .line 371
    const/4 v0, 0x0

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 372
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAdSource;->clear()V

    .line 373
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAdSource;->clear()V

    .line 387
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0}, Lcom/mopub/nativeads/ImpressionTracker;->destroy()V

    .line 388
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0}, Lcom/mopub/nativeads/PlacementData;->clearAds()V

    .line 389
    return-void
.end method

.method public getAdData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getPlacedAd(I)Lcom/mopub/nativeads/NativeAdData;

    move-result-object v0

    return-object v0
.end method

.method public getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 1
    .param p1, "viewType"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 195
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->adViewType:I

    if-ne p1, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 420
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v2, p1}, Lcom/mopub/nativeads/PlacementData;->getPlacedAd(I)Lcom/mopub/nativeads/NativeAdData;

    move-result-object v0

    .line 421
    .local v0, "adData":Lcom/mopub/nativeads/NativeAdData;
    if-nez v0, :cond_0

    .line 422
    const/4 v1, 0x0

    .line 428
    :goto_0
    return-object v1

    .line 425
    :cond_0
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 427
    .local v1, "view":Landroid/view/View;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->bindAdView(Lcom/mopub/nativeads/NativeAdData;Landroid/view/View;)V

    goto :goto_0

    .line 426
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAdData;->getAdRenderer()Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, p3}, Lcom/mopub/nativeads/MoPubAdRenderer;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public getAdViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdViewTypeCount()I
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x1

    return v0
.end method

.method public getAdjustedCount(I)I
    .locals 1
    .param p1, "originalCount"    # I

    .prologue
    .line 564
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getAdjustedCount(I)I

    move-result v0

    return v0
.end method

.method public getAdjustedPosition(I)I
    .locals 1
    .param p1, "originalPosition"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getAdjustedPosition(I)I

    move-result v0

    return v0
.end method

.method public getOriginalCount(I)I
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 554
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getOriginalCount(I)I

    move-result v0

    return v0
.end method

.method public getOriginalPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getOriginalPosition(I)I

    move-result v0

    return v0
.end method

.method handleAdsAvailable()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasPlacedAds:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->notifyNeedsPlacement()V

    .line 309
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedPositions:Z

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPendingPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeInitialAds(Lcom/mopub/nativeads/PlacementData;)V

    .line 308
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedAds:Z

    goto :goto_0
.end method

.method handlePositioningLoad(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 2
    .param p1, "positioning"    # Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 287
    invoke-static {p1}, Lcom/mopub/nativeads/PlacementData;->fromAdPositioning(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/mopub/nativeads/PlacementData;

    move-result-object v0

    .line 288
    .local v0, "placementData":Lcom/mopub/nativeads/PlacementData;
    iget-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedAds:Z

    if-eqz v1, :cond_0

    .line 289
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeInitialAds(Lcom/mopub/nativeads/PlacementData;)V

    .line 293
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedPositions:Z

    .line 294
    return-void

    .line 291
    :cond_0
    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPendingPlacementData:Lcom/mopub/nativeads/PlacementData;

    goto :goto_0
.end method

.method public insertItem(I)V
    .locals 1
    .param p1, "originalPosition"    # I

    .prologue
    .line 603
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->insertItem(I)V

    .line 604
    return-void
.end method

.method public isAd(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->isPlacedAd(I)Z

    move-result v0

    return v0
.end method

.method public loadAds(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    .line 228
    return-void
.end method

.method public loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestParameters"    # Lcom/mopub/nativeads/RequestParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 246
    const-string v0, "Cannot load ads with a null ad unit ID"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    if-nez v0, :cond_1

    .line 251
    const-string v0, "You must call registerAdRenderer before loading ads"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_1
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdUnitId:Ljava/lang/String;

    .line 257
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasPlacedAds:Z

    .line 258
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedPositions:Z

    .line 259
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedAds:Z

    .line 261
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPositioningSource:Lcom/mopub/nativeads/PositioningSource;

    new-instance v1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    invoke-interface {v0, p1, v1}, Lcom/mopub/nativeads/PositioningSource;->loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V

    .line 275
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    new-instance v1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$4;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$4;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeAdSource;->setAdSourceListener(Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;)V

    .line 282
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/mopub/nativeads/NativeAdSource;->loadAds(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    goto :goto_0
.end method

.method public moveItem(II)V
    .locals 1
    .param p1, "originalPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 646
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/PlacementData;->moveItem(II)V

    .line 647
    return-void
.end method

.method public placeAdsInRange(II)V
    .locals 1
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 342
    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    .line 343
    add-int/lit8 v0, p1, 0x64

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeEnd:I

    .line 344
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->notifyNeedsPlacement()V

    .line 345
    return-void
.end method

.method public registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 1
    .param p1, "adRenderer"    # Lcom/mopub/nativeads/MoPubAdRenderer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 182
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;I)V

    .line 183
    return-void
.end method

.method public registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;I)V
    .locals 1
    .param p1, "adRenderer"    # Lcom/mopub/nativeads/MoPubAdRenderer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewType"    # I

    .prologue
    .line 186
    const-string v0, "Cannot register a null adRenderer"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iput p2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->adViewType:I

    .line 190
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    goto :goto_0
.end method

.method public removeAdsInRange(II)I
    .locals 9
    .param p1, "originalStartPosition"    # I
    .param p2, "originalEndPosition"    # I

    .prologue
    .line 462
    iget-object v7, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v7}, Lcom/mopub/nativeads/PlacementData;->getPlacedAdPositions()[I

    move-result-object v5

    .line 464
    .local v5, "positions":[I
    iget-object v7, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v7, p1}, Lcom/mopub/nativeads/PlacementData;->getAdjustedPosition(I)I

    move-result v1

    .line 465
    .local v1, "adjustedStartRange":I
    iget-object v7, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v7, p2}, Lcom/mopub/nativeads/PlacementData;->getAdjustedPosition(I)I

    move-result v0

    .line 467
    .local v0, "adjustedEndRange":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v6, "removedPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v7, v5

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 471
    aget v4, v5, v3

    .line 472
    .local v4, "position":I
    if-lt v4, v1, :cond_0

    if-lt v4, v0, :cond_1

    .line 470
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    iget v7, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    if-ge v4, v7, :cond_2

    .line 481
    iget v7, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    .line 483
    :cond_2
    iget v7, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    goto :goto_1

    .line 486
    .end local v4    # "position":I
    :cond_3
    iget-object v7, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v7, v1, v0}, Lcom/mopub/nativeads/PlacementData;->clearAdsInRange(II)I

    move-result v2

    .line 487
    .local v2, "clearedAdsCount":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 488
    .restart local v4    # "position":I
    iget-object v7, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v7, v4}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdRemoved(I)V

    goto :goto_2

    .line 490
    .end local v4    # "position":I
    :cond_4
    return v2
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "originalPosition"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->removeItem(I)V

    .line 625
    return-void
.end method

.method public setAdLoadedListener(Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 215
    if-nez p1, :cond_0

    sget-object p1, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->EMPTY_NATIVE_AD_LOADED_LISTENER:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    .end local p1    # "listener":Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;
    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    .line 216
    return-void
.end method

.method public setItemCount(I)V
    .locals 1
    .param p1, "originalCount"    # I

    .prologue
    .line 577
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getAdjustedCount(I)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    .line 580
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasPlacedAds:Z

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->notifyNeedsPlacement()V

    .line 583
    :cond_0
    return-void
.end method
