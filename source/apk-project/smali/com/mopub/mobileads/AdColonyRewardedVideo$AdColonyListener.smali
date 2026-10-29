.class Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;
.super Ljava/lang/Object;
.source "AdColonyRewardedVideo.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdListener;
.implements Lcom/jirbo/adcolony/AdColonyV4VCListener;
.implements Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdColonyRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdColonyListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/AdColonyRewardedVideo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mopub/mobileads/AdColonyRewardedVideo$1;

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 3
    .param p1, "adColonyAd"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 252
    invoke-static {}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$600()Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 253
    .local v1, "zoneId":Ljava/lang/String;
    const-class v2, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    invoke-static {v2, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->notShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->canceled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->skipped()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    :cond_0
    const-string v2, "User canceled ad playback"

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 261
    .local v0, "reason":Lcom/mopub/mobileads/MoPubErrorCode;
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->noFill()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 265
    :cond_3
    const-class v2, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    invoke-static {v2, v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2
    .param p1, "adColonyAd"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 274
    const-class v1, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .line 276
    invoke-static {}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$600()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    invoke-static {v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public onAdColonyV4VCReward(Lcom/jirbo/adcolony/AdColonyV4VCReward;)V
    .locals 3
    .param p1, "adColonyV4VCReward"    # Lcom/jirbo/adcolony/AdColonyV4VCReward;

    .prologue
    .line 282
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyV4VCReward;->success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyV4VCReward;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyV4VCReward;->amount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v0

    .line 287
    .local v0, "reward":Lcom/mopub/common/MoPubReward;
    :goto_0
    const-class v1, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    .line 291
    return-void

    .line 285
    .end local v0    # "reward":Lcom/mopub/common/MoPubReward;
    :cond_0
    invoke-static {}, Lcom/mopub/common/MoPubReward;->failure()Lcom/mopub/common/MoPubReward;

    move-result-object v0

    .restart local v0    # "reward":Lcom/mopub/common/MoPubReward;
    goto :goto_0
.end method
