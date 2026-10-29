.class Lcom/mopub/mobileads/AdColonyRewardedVideo$2;
.super Ljava/lang/Object;
.source "AdColonyRewardedVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdColonyRewardedVideo;->scheduleOnVideoReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdColonyRewardedVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$2;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$2;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$100(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$2;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$202(Lcom/mopub/mobileads/AdColonyRewardedVideo;Z)Z

    .line 221
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$2;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$300(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 222
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$2;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$500(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/AdColonyRewardedVideo$2$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$2$1;-><init>(Lcom/mopub/mobileads/AdColonyRewardedVideo$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    :cond_0
    return-void
.end method
