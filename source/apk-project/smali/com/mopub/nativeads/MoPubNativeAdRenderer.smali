.class public Lcom/mopub/nativeads/MoPubNativeAdRenderer;
.super Ljava/lang/Object;
.source "MoPubNativeAdRenderer.java"

# interfaces
.implements Lcom/mopub/nativeads/MoPubAdRenderer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/nativeads/MoPubAdRenderer",
        "<",
        "Lcom/mopub/nativeads/NativeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mViewBinder:Lcom/mopub/nativeads/ViewBinder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mViewHolderMap:Ljava/util/WeakHashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/NativeViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/ViewBinder;)V
    .locals 1
    .param p1, "viewBinder"    # Lcom/mopub/nativeads/ViewBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->mViewBinder:Lcom/mopub/nativeads/ViewBinder;

    .line 33
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->mViewHolderMap:Ljava/util/WeakHashMap;

    .line 34
    return-void
.end method


# virtual methods
.method public createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 39
    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->mViewBinder:Lcom/mopub/nativeads/ViewBinder;

    iget v1, v1, Lcom/mopub/nativeads/ViewBinder;->layoutId:I

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public renderAdView(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "nativeResponse"    # Lcom/mopub/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->mViewHolderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeViewHolder;

    .line 48
    .local v0, "nativeViewHolder":Lcom/mopub/nativeads/NativeViewHolder;
    if-nez v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->mViewBinder:Lcom/mopub/nativeads/ViewBinder;

    invoke-static {p1, v1}, Lcom/mopub/nativeads/NativeViewHolder;->fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/NativeViewHolder;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->mViewHolderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    invoke-virtual {v0, p2}, Lcom/mopub/nativeads/NativeViewHolder;->update(Lcom/mopub/nativeads/NativeResponse;)V

    .line 54
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->mViewBinder:Lcom/mopub/nativeads/ViewBinder;

    invoke-virtual {v0, p2, v1}, Lcom/mopub/nativeads/NativeViewHolder;->updateExtras(Lcom/mopub/nativeads/NativeResponse;Lcom/mopub/nativeads/ViewBinder;)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeViewHolder;->setViewVisibility(I)V

    .line 56
    return-void
.end method

.method public bridge synthetic renderAdView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    check-cast p2, Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V

    return-void
.end method
