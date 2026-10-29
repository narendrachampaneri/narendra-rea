.class Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/ImpressionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PollingRunnable"
.end annotation


# instance fields
.field private final mRemovedViews:Ljava/util/ArrayList;
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

.field final synthetic this$0:Lcom/mopub/nativeads/ImpressionTracker;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/ImpressionTracker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mopub/nativeads/ImpressionTracker;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->mRemovedViews:Ljava/util/ArrayList;

    .line 162
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 166
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v3}, Lcom/mopub/nativeads/ImpressionTracker;->access$100(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/NativeResponse;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 168
    .local v2, "view":Landroid/view/View;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/TimestampWrapper;

    .line 171
    .local v1, "timestampWrapper":Lcom/mopub/nativeads/TimestampWrapper;, "Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/NativeResponse;>;"
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v3}, Lcom/mopub/nativeads/ImpressionTracker;->access$200(Lcom/mopub/nativeads/ImpressionTracker;)Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;

    move-result-object v5

    iget-wide v6, v1, Lcom/mopub/nativeads/TimestampWrapper;->mCreatedTimestamp:J

    iget-object v3, v1, Lcom/mopub/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v3, Lcom/mopub/nativeads/NativeResponse;

    .line 173
    invoke-virtual {v3}, Lcom/mopub/nativeads/NativeResponse;->getImpressionMinTimeViewed()I

    move-result v3

    .line 171
    invoke-virtual {v5, v6, v7, v3}, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;->hasRequiredTimeElapsed(JI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    iget-object v3, v1, Lcom/mopub/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v3, Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v3, v2}, Lcom/mopub/nativeads/NativeResponse;->recordImpression(Landroid/view/View;)V

    .line 180
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->mRemovedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/NativeResponse;>;>;"
    .end local v1    # "timestampWrapper":Lcom/mopub/nativeads/TimestampWrapper;, "Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/NativeResponse;>;"
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->mRemovedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 184
    .restart local v2    # "view":Landroid/view/View;
    iget-object v4, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v4, v2}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 186
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->mRemovedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 188
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v3}, Lcom/mopub/nativeads/ImpressionTracker;->access$100(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 189
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v3}, Lcom/mopub/nativeads/ImpressionTracker;->scheduleNextPoll()V

    .line 191
    :cond_3
    return-void
.end method
