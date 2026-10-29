.class Lcom/mopub/mobileads/VungleRewardedVideo$2;
.super Ljava/lang/Object;
.source "VungleRewardedVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VungleRewardedVideo;->scheduleOnVideoLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VungleRewardedVideo;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VungleRewardedVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/VungleRewardedVideo;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$2;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$100()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "Vungle interstitial ad successfully loaded."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$2;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$700(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 164
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$2;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$800(Lcom/mopub/mobileads/VungleRewardedVideo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/VungleRewardedVideo$2$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VungleRewardedVideo$2$1;-><init>(Lcom/mopub/mobileads/VungleRewardedVideo$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$2;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$902(Lcom/mopub/mobileads/VungleRewardedVideo;Z)Z

    .line 172
    :cond_0
    return-void
.end method
