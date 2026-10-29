.class Lcom/mopub/mobileads/AdColonyInterstitial$1;
.super Ljava/lang/Object;
.source "AdColonyInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdColonyInterstitial;->scheduleOnInterstitialLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/AdColonyInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdColonyInterstitial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/AdColonyInterstitial;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mopub/mobileads/AdColonyInterstitial$1;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial$1;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyInterstitial;->access$000(Lcom/mopub/mobileads/AdColonyInterstitial;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "MoPub"

    const-string v1, "AdColony interstitial ad successfully loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial$1;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AdColonyInterstitial;->access$102(Lcom/mopub/mobileads/AdColonyInterstitial;Z)Z

    .line 134
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial$1;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyInterstitial;->access$200(Lcom/mopub/mobileads/AdColonyInterstitial;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial$1;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyInterstitial;->access$400(Lcom/mopub/mobileads/AdColonyInterstitial;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/AdColonyInterstitial$1$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdColonyInterstitial$1$1;-><init>(Lcom/mopub/mobileads/AdColonyInterstitial$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    :cond_0
    return-void
.end method
