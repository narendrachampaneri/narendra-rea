.class Lcom/mopub/nativeads/NativeAdViewHelper;
.super Ljava/lang/Object;
.source "NativeAdViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final sImpressionTrackerMap:Ljava/util/WeakHashMap;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/mopub/nativeads/ImpressionTracker;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNativeResponseMap:Ljava/util/WeakHashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/NativeAdViewHelper;->sImpressionTrackerMap:Ljava/util/WeakHashMap;

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/NativeAdViewHelper;->sNativeResponseMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static clearNativeResponse(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-static {p0}, Lcom/mopub/nativeads/NativeAdViewHelper;->getImpressionTracker(Landroid/content/Context;)Lcom/mopub/nativeads/ImpressionTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    .line 79
    sget-object v1, Lcom/mopub/nativeads/NativeAdViewHelper;->sNativeResponseMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeResponse;

    .line 80
    .local v0, "nativeResponse":Lcom/mopub/nativeads/NativeResponse;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeResponse;->clear(Landroid/view/View;)V

    .line 83
    :cond_0
    return-void
.end method

.method static getAdView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/mopub/nativeads/NativeResponse;Lcom/mopub/nativeads/ViewBinder;)Landroid/view/View;
    .locals 3
    .param p0, "convertView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "nativeResponse"    # Lcom/mopub/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "viewBinder"    # Lcom/mopub/nativeads/ViewBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    const-string v1, "ViewBinder is null."

    invoke-static {p4, v1}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 50
    if-eqz p0, :cond_0

    .line 51
    invoke-static {p2, p0}, Lcom/mopub/nativeads/NativeAdViewHelper;->clearNativeResponse(Landroid/content/Context;Landroid/view/View;)V

    .line 54
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/mopub/nativeads/NativeResponse;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p4, :cond_4

    .line 55
    :cond_1
    const-string v1, "nativeResponse or viewBinder null or invalid. Returning empty view"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 57
    if-eqz p0, :cond_2

    sget-object v1, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->EMPTY:Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 58
    :cond_2
    new-instance p0, Landroid/view/View;

    .end local p0    # "convertView":Landroid/view/View;
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    .restart local p0    # "convertView":Landroid/view/View;
    sget-object v1, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->EMPTY:Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_3
    :goto_0
    return-object p0

    .line 63
    :cond_4
    new-instance v0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;

    invoke-direct {v0, p4}, Lcom/mopub/nativeads/MoPubNativeAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;)V

    .line 65
    .local v0, "moPubNativeAdRenderer":Lcom/mopub/nativeads/MoPubNativeAdRenderer;
    if-eqz p0, :cond_5

    sget-object v1, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->AD:Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 66
    :cond_5
    invoke-virtual {v0, p2, p1}, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 67
    sget-object v1, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->AD:Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :cond_6
    invoke-static {p2, p0, p3}, Lcom/mopub/nativeads/NativeAdViewHelper;->prepareNativeResponse(Landroid/content/Context;Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V

    .line 70
    invoke-virtual {v0, p0, p3}, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V

    goto :goto_0
.end method

.method private static getImpressionTracker(Landroid/content/Context;)Lcom/mopub/nativeads/ImpressionTracker;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    sget-object v1, Lcom/mopub/nativeads/NativeAdViewHelper;->sImpressionTrackerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/ImpressionTracker;

    .line 97
    .local v0, "impressionTracker":Lcom/mopub/nativeads/ImpressionTracker;
    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/mopub/nativeads/ImpressionTracker;

    .end local v0    # "impressionTracker":Lcom/mopub/nativeads/ImpressionTracker;
    invoke-direct {v0, p0}, Lcom/mopub/nativeads/ImpressionTracker;-><init>(Landroid/content/Context;)V

    .line 99
    .restart local v0    # "impressionTracker":Lcom/mopub/nativeads/ImpressionTracker;
    sget-object v1, Lcom/mopub/nativeads/NativeAdViewHelper;->sImpressionTrackerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    return-object v0
.end method

.method private static prepareNativeResponse(Landroid/content/Context;Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "nativeResponse"    # Lcom/mopub/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    sget-object v0, Lcom/mopub/nativeads/NativeAdViewHelper;->sNativeResponseMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p2}, Lcom/mopub/nativeads/NativeResponse;->isOverridingImpressionTracker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {p0}, Lcom/mopub/nativeads/NativeAdViewHelper;->getImpressionTracker(Landroid/content/Context;)Lcom/mopub/nativeads/ImpressionTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/ImpressionTracker;->addView(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V

    .line 92
    :cond_0
    invoke-virtual {p2, p1}, Lcom/mopub/nativeads/NativeResponse;->prepare(Landroid/view/View;)V

    .line 93
    return-void
.end method
