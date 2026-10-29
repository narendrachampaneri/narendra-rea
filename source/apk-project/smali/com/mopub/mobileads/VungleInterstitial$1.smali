.class Lcom/mopub/mobileads/VungleInterstitial$1;
.super Ljava/lang/Object;
.source "VungleInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VungleInterstitial;->scheduleOnInterstitialLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VungleInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VungleInterstitial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/VungleInterstitial;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mopub/mobileads/VungleInterstitial$1;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$1;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$000(Lcom/mopub/mobileads/VungleInterstitial;)Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "MoPub"

    const-string v1, "Vungle interstitial ad successfully loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$1;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$100(Lcom/mopub/mobileads/VungleInterstitial;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 95
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$1;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$300(Lcom/mopub/mobileads/VungleInterstitial;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/VungleInterstitial$1$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VungleInterstitial$1$1;-><init>(Lcom/mopub/mobileads/VungleInterstitial$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$1;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VungleInterstitial;->access$402(Lcom/mopub/mobileads/VungleInterstitial;Z)Z

    .line 103
    :cond_0
    return-void
.end method
