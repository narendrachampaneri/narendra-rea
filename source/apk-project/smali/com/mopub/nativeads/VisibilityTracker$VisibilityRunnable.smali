.class Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/VisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VisibilityRunnable"
.end annotation


# instance fields
.field private final mInvisibleViews:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibleViews:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mopub/nativeads/VisibilityTracker;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/VisibilityTracker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mopub/nativeads/VisibilityTracker;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    .line 202
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 206
    iget-object v3, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/mopub/nativeads/VisibilityTracker;->access$002(Lcom/mopub/nativeads/VisibilityTracker;Z)Z

    .line 207
    iget-object v3, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-static {v3}, Lcom/mopub/nativeads/VisibilityTracker;->access$100(Lcom/mopub/nativeads/VisibilityTracker;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/mopub/nativeads/VisibilityTracker$TrackingInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 209
    .local v2, "view":Landroid/view/View;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/nativeads/VisibilityTracker$TrackingInfo;

    iget v1, v3, Lcom/mopub/nativeads/VisibilityTracker$TrackingInfo;->mMinViewablePercent:I

    .line 211
    .local v1, "minPercentageViewed":I
    iget-object v3, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-static {v3}, Lcom/mopub/nativeads/VisibilityTracker;->access$200(Lcom/mopub/nativeads/VisibilityTracker;)Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;->isVisible(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_0
    iget-object v3, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/mopub/nativeads/VisibilityTracker$TrackingInfo;>;"
    .end local v1    # "minPercentageViewed":I
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-static {v3}, Lcom/mopub/nativeads/VisibilityTracker;->access$300(Lcom/mopub/nativeads/VisibilityTracker;)Lcom/mopub/nativeads/VisibilityTracker$VisibilityTrackerListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 219
    iget-object v3, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-static {v3}, Lcom/mopub/nativeads/VisibilityTracker;->access$300(Lcom/mopub/nativeads/VisibilityTracker;)Lcom/mopub/nativeads/VisibilityTracker$VisibilityTrackerListener;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Lcom/mopub/nativeads/VisibilityTracker$VisibilityTrackerListener;->onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V

    .line 223
    :cond_2
    iget-object v3, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object v3, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 225
    return-void
.end method
