.class public Lcom/mopub/mobileads/VastVideoViewController;
.super Lcom/mopub/mobileads/BaseVideoViewController;
.source "VastVideoViewController.java"


# static fields
.field static final CURRENT_POSITION:Ljava/lang/String; = "current_position"

.field static final DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x1388

.field static final MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x3e80

.field private static final MOPUB_BROWSER_REQUEST_CODE:I = 0x1

.field static final RESUMED_VAST_CONFIG:Ljava/lang/String; = "resumed_vast_config"

.field private static final SEEKER_POSITION_NOT_INITIALIZED:I = -0x1

.field static final VAST_VIDEO_CONFIG:Ljava/lang/String; = "vast_video_config"

.field private static final VIDEO_COUNTDOWN_UPDATE_INTERVAL:J = 0xfaL

.field private static final VIDEO_PROGRESS_TIMER_CHECKER_DELAY:J = 0x32L

.field public static final WEBVIEW_PADDING:I = 0x10


# instance fields
.field private mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mClickThroughListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDuration:I

.field private mHasSkipOffset:Z

.field private final mIconView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsCalibrationDone:Z

.field private mIsClosing:Z

.field private mIsVideoFinishedPlaying:Z

.field private final mLandscapeCompanionAdView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPortraitCompanionAdView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSeekerPositionOnPause:I

.field private mShowCloseButtonDelay:I

.field private mShowCloseButtonEventFired:Z

.field private mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

.field private mVideoError:Z

.field private final mVideoView:Lcom/mopub/mobileads/VastVideoView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intentExtras"    # Landroid/os/Bundle;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "broadcastIdentifier"    # J
    .param p6, "baseVideoViewControllerListener"    # Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 102
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, p1, v3, p6}, Lcom/mopub/mobileads/BaseVideoViewController;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    .line 82
    const/16 v3, 0x1388

    iput v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 87
    iput-boolean v6, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSkipOffset:Z

    .line 88
    iput-boolean v6, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    .line 94
    iput-boolean v6, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    .line 103
    iput v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, "resumedVastConfiguration":Ljava/io/Serializable;
    if-eqz p3, :cond_0

    .line 107
    const-string v3, "resumed_vast_config"

    .line 108
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 110
    :cond_0
    const-string v3, "vast_video_config"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 111
    .local v2, "serializable":Ljava/io/Serializable;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/mopub/mobileads/VastVideoConfig;

    if-eqz v3, :cond_1

    .line 113
    check-cast v1, Lcom/mopub/mobileads/VastVideoConfig;

    .end local v1    # "resumedVastConfiguration":Ljava/io/Serializable;
    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 114
    const-string v3, "current_position"

    .line 115
    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 122
    .end local v2    # "serializable":Ljava/io/Serializable;
    :goto_0
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 123
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "VastVideoConfig does not have a video disk path"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    .restart local v1    # "resumedVastConfiguration":Ljava/io/Serializable;
    .restart local v2    # "serializable":Ljava/io/Serializable;
    :cond_1
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/mopub/mobileads/VastVideoConfig;

    if-eqz v3, :cond_2

    .line 117
    check-cast v2, Lcom/mopub/mobileads/VastVideoConfig;

    .end local v2    # "serializable":Ljava/io/Serializable;
    iput-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    goto :goto_0

    .line 119
    .restart local v2    # "serializable":Ljava/io/Serializable;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "VastVideoConfig is invalid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    .end local v1    # "resumedVastConfiguration":Ljava/io/Serializable;
    .end local v2    # "serializable":Ljava/io/Serializable;
    :cond_3
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 127
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 126
    invoke-virtual {v3, v4}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 128
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    .line 130
    new-instance v3, Lcom/mopub/mobileads/VastVideoViewController$1;

    invoke-direct {v3, p0, p1}, Lcom/mopub/mobileads/VastVideoViewController$1;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    .line 148
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 151
    invoke-direct {p0, p1, v6}, Lcom/mopub/mobileads/VastVideoViewController;->createVideoView(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    .line 152
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoView;->requestFocus()Z

    .line 155
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const/4 v4, 0x2

    .line 156
    invoke-virtual {v3, v4}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v3

    .line 155
    invoke-virtual {p0, p1, v3, v5}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionAdView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    .line 158
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const/4 v4, 0x1

    .line 159
    invoke-virtual {v3, v4}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v3

    .line 158
    invoke-virtual {p0, p1, v3, v5}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionAdView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    .line 163
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->addTopGradientStripWidget(Landroid/content/Context;)V

    .line 166
    invoke-direct {p0, p1, v5}, Lcom/mopub/mobileads/VastVideoViewController;->addProgressBarWidget(Landroid/content/Context;I)V

    .line 169
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->addBottomGradientStripWidget(Landroid/content/Context;)V

    .line 172
    invoke-direct {p0, p1, v5}, Lcom/mopub/mobileads/VastVideoViewController;->addRadialCountdownWidget(Landroid/content/Context;I)V

    .line 175
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {p0, p1, v3, v5}, Lcom/mopub/mobileads/VastVideoViewController;->createIconView(Landroid/content/Context;Lcom/mopub/mobileads/VastIconConfig;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    .line 178
    invoke-direct {p0, p1, v5}, Lcom/mopub/mobileads/VastVideoViewController;->addBlurredLastVideoFrameImageView(Landroid/content/Context;I)V

    .line 181
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->addCtaButtonWidget(Landroid/content/Context;)V

    .line 185
    const/16 v3, 0x8

    invoke-direct {p0, p1, v3}, Lcom/mopub/mobileads/VastVideoViewController;->addCloseButtonWidget(Landroid/content/Context;I)V

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 188
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v3, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {v3, p0, v4, v0}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoConfig;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    .line 190
    new-instance v3, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    invoke-direct {v3, p0, v0}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->shouldAllowClickThrough()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopRunnables()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoCtaButtonWidget;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/VastVideoViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    return v0
.end method

.method static synthetic access$302(Lcom/mopub/mobileads/VastVideoViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    return p1
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->adjustSkipOffset()V

    return-void
.end method

.method static synthetic access$700(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mopub/mobileads/VastVideoViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 39
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    return v0
.end method

.method private addBlurredLastVideoFrameImageView(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialVisibility"    # I

    .prologue
    const/4 v2, -0x1

    .line 500
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    .line 501
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 506
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    return-void
.end method

.method private addBottomGradientStripWidget(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 415
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 417
    .local v4, "hasCompanionAd":Z
    :goto_0
    new-instance v0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 419
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x2

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 423
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->getId()I

    move-result v7

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;Lcom/mopub/common/util/DeviceUtils$ForceOrientation;ZIII)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    .line 424
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 425
    return-void

    .line 415
    .end local v4    # "hasCompanionAd":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private addCloseButtonWidget(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialVisibility"    # I

    .prologue
    .line 459
    new-instance v3, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-direct {v3, p1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    .line 460
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, p2}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setVisibility(I)V

    .line 462
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 464
    new-instance v0, Lcom/mopub/mobileads/VastVideoViewController$5;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/VastVideoViewController$5;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 482
    .local v0, "closeOnTouchListener":Landroid/view/View$OnTouchListener;
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, v0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    .line 485
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "customSkipText":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 487
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, v2}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->updateCloseButtonText(Ljava/lang/String;)V

    .line 491
    :cond_0
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "customCloseIconUrl":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 493
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, v1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->updateCloseButtonIcon(Ljava/lang/String;)V

    .line 495
    :cond_1
    return-void
.end method

.method private addCtaButtonWidget(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 440
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v5, :cond_1

    move v2, v3

    .line 441
    .local v2, "hasCompanionAd":Z
    :goto_0
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 442
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v5

    .line 441
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    .line 444
    .local v1, "hasClickthroughUrl":Z
    :goto_1
    new-instance v3, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoView;->getId()I

    move-result v4

    invoke-direct {v3, p1, v4, v2, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;-><init>(Landroid/content/Context;IZZ)V

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    .line 447
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 449
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 452
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "customCtaText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 454
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v3, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->updateCtaText(Ljava/lang/String;)V

    .line 456
    :cond_0
    return-void

    .end local v0    # "customCtaText":Ljava/lang/String;
    .end local v1    # "hasClickthroughUrl":Z
    .end local v2    # "hasCompanionAd":Z
    :cond_1
    move v2, v4

    .line 440
    goto :goto_0

    .restart local v2    # "hasCompanionAd":Z
    :cond_2
    move v1, v4

    .line 441
    goto :goto_1
.end method

.method private addProgressBarWidget(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialVisibility"    # I

    .prologue
    .line 428
    new-instance v0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoView;->getId()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 429
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 430
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 431
    return-void
.end method

.method private addRadialCountdownWidget(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialVisibility"    # I

    .prologue
    .line 434
    new-instance v0, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    .line 435
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setVisibility(I)V

    .line 436
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 437
    return-void
.end method

.method private addTopGradientStripWidget(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 402
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 404
    .local v4, "hasCompanionAd":Z
    :goto_0
    new-instance v0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 406
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v3

    const/4 v6, 0x6

    .line 410
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;Lcom/mopub/common/util/DeviceUtils$ForceOrientation;ZIII)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    .line 411
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 412
    return-void

    .end local v4    # "hasCompanionAd":Z
    :cond_0
    move v4, v5

    .line 402
    goto :goto_0
.end method

.method private adjustSkipOffset()V
    .locals 3

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v1

    .line 296
    .local v1, "videoDuration":I
    const/16 v2, 0x3e80

    if-ge v1, v2, :cond_0

    .line 297
    iput v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffsetMillis(I)Ljava/lang/Integer;

    move-result-object v0

    .line 302
    .local v0, "skipOffsetMillis":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 304
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSkipOffset:Z

    .line 306
    :cond_1
    return-void
.end method

.method private createVideoView(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialVisibility"    # I

    .prologue
    .line 309
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 310
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VastVideoConfig does not have a video disk path"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/VastVideoView;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastVideoView;-><init>(Landroid/content/Context;)V

    .line 314
    .local v0, "videoView":Lcom/mopub/mobileads/VastVideoView;
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setId(I)V

    .line 316
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$2;

    invoke-direct {v1, p0, v0}, Lcom/mopub/mobileads/VastVideoViewController$2;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 333
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 335
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/mopub/mobileads/VastVideoViewController$3;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 375
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$4;

    invoke-direct {v1, p0, v0}, Lcom/mopub/mobileads/VastVideoViewController$4;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 395
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoView;->setVisibility(I)V

    .line 398
    return-object v0
.end method

.method private shouldAllowClickThrough()Z
    .locals 1

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method private startRunnables()V
    .locals 4

    .prologue
    .line 698
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->startRepeating(J)V

    .line 699
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->startRepeating(J)V

    .line 700
    return-void
.end method

.method private stopRunnables()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->stop()V

    .line 704
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->stop()V

    .line 705
    return-void
.end method


# virtual methods
.method public backButtonEnabled()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method createCompanionAdView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;I)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "vastCompanionAdConfig"    # Lcom/mopub/mobileads/VastCompanionAdConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "initialVisibility"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 521
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 523
    if-nez p2, :cond_0

    .line 524
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 525
    .local v2, "emptyView":Landroid/view/View;
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 576
    .end local v2    # "emptyView":Landroid/view/View;
    :goto_0
    return-object v2

    .line 529
    :cond_0
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 530
    .local v4, "relativeLayout":Landroid/widget/RelativeLayout;
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 531
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 535
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v5

    .line 537
    invoke-static {p1, v5}, Lcom/mopub/mobileads/VastWebView;->createView(Landroid/content/Context;Lcom/mopub/mobileads/VastResource;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v1

    .line 545
    .local v1, "companionView":Lcom/mopub/mobileads/VastWebView;
    new-instance v5, Lcom/mopub/mobileads/VastVideoViewController$6;

    invoke-direct {v5, p0, p2, p1}, Lcom/mopub/mobileads/VastVideoViewController$6;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastCompanionAdConfig;Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Lcom/mopub/mobileads/VastWebView;->setVastWebViewClickListener(Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;)V

    .line 559
    new-instance v5, Lcom/mopub/mobileads/VastVideoViewController$7;

    invoke-direct {v5, p0, p2, p1}, Lcom/mopub/mobileads/VastVideoViewController$7;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastCompanionAdConfig;Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Lcom/mopub/mobileads/VastWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 567
    invoke-virtual {v1, p3}, Lcom/mopub/mobileads/VastWebView;->setVisibility(I)V

    .line 569
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 570
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    int-to-float v5, v5

    invoke-static {v5, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v5

    .line 571
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    int-to-float v6, v6

    invoke-static {v6, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 573
    .local v0, "companionAdLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 575
    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v1

    .line 576
    goto :goto_0
.end method

.method createIconView(Landroid/content/Context;Lcom/mopub/mobileads/VastIconConfig;I)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "vastIconConfig"    # Lcom/mopub/mobileads/VastIconConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "initialVisibility"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 589
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 591
    if-nez p2, :cond_0

    .line 592
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 628
    :goto_0
    return-object v0

    .line 595
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastIconConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/mopub/mobileads/VastWebView;->createView(Landroid/content/Context;Lcom/mopub/mobileads/VastResource;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v0

    .line 596
    .local v0, "iconView":Lcom/mopub/mobileads/VastWebView;
    new-instance v2, Lcom/mopub/mobileads/VastVideoViewController$8;

    invoke-direct {v2, p0, p2, p1}, Lcom/mopub/mobileads/VastVideoViewController$8;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastIconConfig;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastWebView;->setVastWebViewClickListener(Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;)V

    .line 609
    new-instance v2, Lcom/mopub/mobileads/VastVideoViewController$9;

    invoke-direct {v2, p0, p2}, Lcom/mopub/mobileads/VastVideoViewController$9;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastIconConfig;)V

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 616
    invoke-virtual {v0, p3}, Lcom/mopub/mobileads/VastWebView;->setVisibility(I)V

    .line 619
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 621
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastIconConfig;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    invoke-static {v2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 622
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastIconConfig;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    invoke-static {v3, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 623
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 624
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 626
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method getBlurredLastVideoFrameImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 857
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method getBottomGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method getCloseButtonWidget()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 850
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    return-object v0
.end method

.method getCountdownRunnable()Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 717
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    return-object v0
.end method

.method getCtaButtonWidget()Lcom/mopub/mobileads/VastVideoCtaButtonWidget;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    return-object v0
.end method

.method getCurrentPosition()I
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method getDuration()I
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method getHasSkipOffset()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSkipOffset:Z

    return v0
.end method

.method getIconView()Landroid/view/View;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method getLandscapeCompanionAdView()Landroid/view/View;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    return-object v0
.end method

.method getNetworkMediaFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    if-nez v0, :cond_0

    .line 664
    const/4 v0, 0x0

    .line 666
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getPortraitCompanionAdView()Landroid/view/View;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 773
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    return-object v0
.end method

.method getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 815
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    return-object v0
.end method

.method getProgressCheckerRunnable()Lcom/mopub/mobileads/VastVideoViewProgressRunnable;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    return-object v0
.end method

.method getRadialCountdownWidget()Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 829
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    return-object v0
.end method

.method getShowCloseButtonDelay()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 731
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    return v0
.end method

.method getTopGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method getVastVideoView()Lcom/mopub/mobileads/VastVideoView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 864
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    return-object v0
.end method

.method getVideoError()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return v0
.end method

.method protected getVideoView()Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    return-object v0
.end method

.method handleIconDisplay(I)V
    .locals 3
    .param p1, "currentPosition"    # I

    .prologue
    .line 677
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getOffsetMS()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/mopub/mobileads/VastIconConfig;->handleImpression(Landroid/content/Context;ILjava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getDurationMS()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getOffsetMS()I

    move-result v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastIconConfig;->getDurationMS()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method isCalibrationDone()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 759
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    return v0
.end method

.method isShowCloseButtonEventFired()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method isVideoFinishedPlaying()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return v0
.end method

.method makeVideoInteractable()V
    .locals 2

    .prologue
    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    .line 642
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->notifyVideoSkippable()V

    .line 646
    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 287
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    .line 290
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 263
    .local v0, "orientation":I
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 264
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    .line 265
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    invoke-virtual {v1, v2, v3}, Lcom/mopub/mobileads/VastCompanionAdConfig;->handleImpression(Landroid/content/Context;I)V

    .line 277
    :cond_1
    return-void

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate()V
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->onCreate()V

    .line 202
    sget-object v0, Lcom/mopub/mobileads/VastVideoViewController$10;->$SwitchMap$com$mopub$common$util$DeviceUtils$ForceOrientation:[I

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleImpression(Landroid/content/Context;I)V

    .line 218
    const-string v0, "com.mopub.action.interstitial.show"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 219
    return-void

    .line 204
    :pswitch_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onSetRequestedOrientation(I)V

    goto :goto_0

    .line 207
    :pswitch_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onSetRequestedOrientation(I)V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopRunnables()V

    .line 249
    const-string v0, "com.mopub.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->onDestroy()V

    .line 252
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopRunnables()V

    .line 239
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 240
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->pause()V

    .line 241
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handlePause(Landroid/content/Context;I)V

    .line 244
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->startRunnables()V

    .line 225
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    if-lez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->seekTo(I)V

    .line 228
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->start()V

    .line 231
    :cond_1
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 232
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleResume(Landroid/content/Context;I)V

    .line 234
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 256
    const-string v0, "current_position"

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    const-string v0, "resumed_vast_config"

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 258
    return-void
.end method

.method setCloseButtonVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 745
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    .line 746
    return-void
.end method

.method setIsClosing(Z)V
    .locals 0
    .param p1, "isClosing"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 870
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    .line 871
    return-void
.end method

.method setProgressBarWidget(Lcom/mopub/mobileads/VastVideoProgressBarWidget;)V
    .locals 0
    .param p1, "progressBarWidget"    # Lcom/mopub/mobileads/VastVideoProgressBarWidget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 822
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 823
    return-void
.end method

.method setRadialCountdownWidget(Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;)V
    .locals 0
    .param p1, "radialCountdownWidget"    # Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 836
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    .line 837
    return-void
.end method

.method setVideoError()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    .line 788
    return-void
.end method

.method shouldBeInteractable()Z
    .locals 2

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateCountdown()V
    .locals 3

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->updateCountdownProgress(II)V

    .line 656
    :cond_0
    return-void
.end method

.method updateProgressBar()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->updateProgress(I)V

    .line 660
    return-void
.end method
