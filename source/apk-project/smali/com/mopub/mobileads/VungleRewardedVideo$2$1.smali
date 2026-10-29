.class Lcom/mopub/mobileads/VungleRewardedVideo$2$1;
.super Ljava/lang/Object;
.source "VungleRewardedVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VungleRewardedVideo$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mopub/mobileads/VungleRewardedVideo$2;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VungleRewardedVideo$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mopub/mobileads/VungleRewardedVideo$2;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$2$1;->this$1:Lcom/mopub/mobileads/VungleRewardedVideo$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    const-class v0, Lcom/mopub/mobileads/VungleRewardedVideo;

    const-string v1, "vngl_id"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V

    .line 168
    return-void
.end method
