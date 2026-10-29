.class Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedVideoListener;
.super Ljava/lang/Object;
.source "VungleRewardedVideo.java"

# interfaces
.implements Lcom/vungle/publisher/EventListener;
.implements Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VungleRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VungleRewardedVideoListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/VungleRewardedVideo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo$1;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedVideoListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdEnd(Z)V
    .locals 2
    .param p1, "wasCallToActionClicked"    # Z

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    const-class v0, Lcom/mopub/mobileads/VungleRewardedVideo;

    const-string v1, "vngl_id"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V

    .line 195
    :cond_0
    const-class v0, Lcom/mopub/mobileads/VungleRewardedVideo;

    const-string v1, "vngl_id"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public onAdPlayableChanged(Z)V
    .locals 0
    .param p1, "playable"    # Z

    .prologue
    .line 215
    return-void
.end method

.method public onAdStart()V
    .locals 2

    .prologue
    .line 201
    const-class v0, Lcom/mopub/mobileads/VungleRewardedVideo;

    const-string v1, "vngl_id"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public onAdUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 207
    const-class v0, Lcom/mopub/mobileads/VungleRewardedVideo;

    const-string v1, "vngl_id"

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 209
    return-void
.end method

.method public onVideoView(ZII)V
    .locals 8
    .param p1, "isCompletedView"    # Z
    .param p2, "watchedMillis"    # I
    .param p3, "videoMillis"    # I

    .prologue
    .line 219
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f%% of Vungle video watched."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-double v4, p2

    int-to-double v6, p3

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    .line 220
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    .line 219
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 221
    if-eqz p1, :cond_0

    .line 225
    const-class v0, Lcom/mopub/mobileads/VungleRewardedVideo;

    const-string v1, "vngl_id"

    const-string v2, ""

    const/16 v3, -0x7b

    .line 227
    invoke-static {v2, v3}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v2

    .line 225
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    .line 229
    :cond_0
    return-void
.end method
