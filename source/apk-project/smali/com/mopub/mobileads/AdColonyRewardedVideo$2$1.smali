.class Lcom/mopub/mobileads/AdColonyRewardedVideo$2$1;
.super Ljava/lang/Object;
.source "AdColonyRewardedVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdColonyRewardedVideo$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mopub/mobileads/AdColonyRewardedVideo$2;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdColonyRewardedVideo$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mopub/mobileads/AdColonyRewardedVideo$2;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$2$1;->this$1:Lcom/mopub/mobileads/AdColonyRewardedVideo$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$2$1;->this$1:Lcom/mopub/mobileads/AdColonyRewardedVideo$2;

    iget-object v0, v0, Lcom/mopub/mobileads/AdColonyRewardedVideo$2;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$100(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getAvailableViews()I

    move-result v0

    if-lez v0, :cond_0

    .line 226
    const-class v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$2$1;->this$1:Lcom/mopub/mobileads/AdColonyRewardedVideo$2;

    iget-object v1, v1, Lcom/mopub/mobileads/AdColonyRewardedVideo$2;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .line 228
    invoke-static {v1}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$400(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 230
    :cond_0
    const-class v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$2$1;->this$1:Lcom/mopub/mobileads/AdColonyRewardedVideo$2;

    iget-object v1, v1, Lcom/mopub/mobileads/AdColonyRewardedVideo$2;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .line 232
    invoke-static {v1}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$400(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 230
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method
