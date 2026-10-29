.class public Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source "ChartboostShared.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/ChartboostShared;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChartboostSingletonDelegate"
.end annotation


# static fields
.field private static final NULL_LISTENER:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# instance fields
.field private mInterstitialListenersForLocation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedVideoLocationsToLoad:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate$1;

    invoke-direct {v0}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate$1;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->NULL_LISTENER:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    .line 125
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->mInterstitialListenersForLocation:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->mRewardedVideoLocationsToLoad:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v0, "Chartboost interstitial loaded successfully."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->getInterstitialListener(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 173
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheRewardedVideo(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->mRewardedVideoLocationsToLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chartboost rewarded video cached for location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 215
    const-class v0, Lcom/mopub/mobileads/ChartboostRewardedVideo;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->mRewardedVideoLocationsToLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string v0, "Chartboost interstitial ad clicked."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->getInterstitialListener(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 198
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickRewardedVideo(Ljava/lang/String;)V

    .line 252
    const-class v0, Lcom/mopub/mobileads/ChartboostRewardedVideo;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chartboost rewarded video clicked for location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string v0, "Chartboost interstitial ad closed."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseRewardedVideo(Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chartboost rewarded video closed for location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "reward"    # I

    .prologue
    .line 258
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chartboost rewarded video completed for location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "reward amount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 261
    const-class v0, Lcom/mopub/mobileads/ChartboostRewardedVideo;

    const-string v1, ""

    .line 264
    invoke-static {v1, p2}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v1

    .line 261
    invoke-static {v0, p1, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    .line 265
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v0, "Chartboost interstitial ad dismissed."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->getInterstitialListener(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 187
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissRewardedVideo(Ljava/lang/String;)V

    .line 239
    const-class v0, Lcom/mopub/mobileads/ChartboostRewardedVideo;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chartboost rewarded video dismissed for location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v0, "Chartboost interstitial ad shown."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->getInterstitialListener(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 204
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayRewardedVideo(Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chartboost rewarded video displayed for location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 271
    const-class v0, Lcom/mopub/mobileads/ChartboostRewardedVideo;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 177
    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "suffix":Ljava/lang/String;
    :goto_0
    const-string v1, "MoPub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chartboost interstitial ad failed to load."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->getInterstitialListener(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v1, v2}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 180
    return-void

    .line 177
    .end local v0    # "suffix":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 223
    if-eqz p2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " with error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "suffix":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->mRewardedVideoLocationsToLoad:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 226
    .local v0, "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chartboost rewarded video cache failed for location "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 227
    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v2, p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 230
    :cond_0
    const-class v2, Lcom/mopub/mobileads/ChartboostRewardedVideo;

    invoke-static {v2, p1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 231
    iget-object v2, p0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->mRewardedVideoLocationsToLoad:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 233
    .end local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    :cond_1
    return-void

    .line 223
    .end local v1    # "suffix":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public getInterstitialListener(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->mInterstitialListenersForLocation:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 155
    .local v0, "listener":Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    if-eqz v0, :cond_0

    .end local v0    # "listener":Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    :goto_0
    return-object v0

    .restart local v0    # "listener":Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->NULL_LISTENER:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    goto :goto_0
.end method

.method public hasInterstitialLocation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->mInterstitialListenersForLocation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public registerInterstitialListener(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "interstitialListener"    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 133
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->mInterstitialListenersForLocation:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public registerRewardedVideoLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 143
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->mRewardedVideoLocationsToLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public shouldDisplayMoreApps(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public shouldRequestMoreApps(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterInterstitialListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->mInterstitialListenersForLocation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public unregisterRewardedVideoLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->mRewardedVideoLocationsToLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method
