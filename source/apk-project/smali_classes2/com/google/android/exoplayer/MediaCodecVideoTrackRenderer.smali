.class public Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
.super Lcom/google/android/exoplayer/MediaCodecTrackRenderer;
.source "MediaCodecVideoTrackRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;,
        Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    }
.end annotation


# static fields
.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field public static final MSG_SET_SURFACE:I = 0x1


# instance fields
.field private final allowedJoiningTimeUs:J

.field private currentHeight:I

.field private currentPixelWidthHeightRatio:F

.field private currentWidth:I

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrameCount:I

.field private final eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

.field private final frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

.field private joiningDeadlineUs:J

.field private lastReportedHeight:I

.field private lastReportedPixelWidthHeightRatio:F

.field private lastReportedWidth:I

.field private final maxDroppedFrameCountToNotify:I

.field private pendingPixelWidthHeightRatio:F

.field private renderedFirstFrame:Z

.field private reportedDrawnToSurface:Z

.field private surface:Landroid/view/Surface;

.field private final videoScalingMode:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;I)V
    .locals 2
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "videoScalingMode"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZI)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;IJ)V
    .locals 9
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "videoScalingMode"    # I
    .param p3, "allowedJoiningTimeMs"    # J

    .prologue
    .line 175
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZIJ)V

    .line 176
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V
    .locals 13
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "videoScalingMode"    # I
    .param p3, "allowedJoiningTimeMs"    # J
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    .param p7, "maxDroppedFrameCountToNotify"    # I

    .prologue
    .line 213
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZIJLcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 215
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZI)V
    .locals 8
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "drmSessionManager"    # Lcom/google/android/exoplayer/drm/DrmSessionManager;
    .param p3, "playClearSamplesWithoutKeys"    # Z
    .param p4, "videoScalingMode"    # I

    .prologue
    .line 163
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZIJ)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZIJ)V
    .locals 13
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "drmSessionManager"    # Lcom/google/android/exoplayer/drm/DrmSessionManager;
    .param p3, "playClearSamplesWithoutKeys"    # Z
    .param p4, "videoScalingMode"    # I
    .param p5, "allowedJoiningTimeMs"    # J

    .prologue
    .line 194
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZIJLcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZIJLcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V
    .locals 9
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "drmSessionManager"    # Lcom/google/android/exoplayer/drm/DrmSessionManager;
    .param p3, "playClearSamplesWithoutKeys"    # Z
    .param p4, "videoScalingMode"    # I
    .param p5, "allowedJoiningTimeMs"    # J
    .param p7, "frameReleaseTimeHelper"    # Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;
    .param p8, "eventHandler"    # Landroid/os/Handler;
    .param p9, "eventListener"    # Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    .param p10, "maxDroppedFrameCountToNotify"    # I

    .prologue
    .line 242
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;)V

    .line 243
    iput p4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->videoScalingMode:I

    .line 244
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p5

    iput-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->allowedJoiningTimeUs:J

    .line 245
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

    .line 246
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    .line 247
    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maxDroppedFrameCountToNotify:I

    .line 248
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    .line 249
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    .line 250
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    .line 251
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    .line 252
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->pendingPixelWidthHeightRatio:F

    .line 253
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    .line 254
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    .line 255
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    return-object v0
.end method

.method private maybeNotifyDrawnToSurface()V
    .locals 3

    .prologue
    .line 542
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->reportedDrawnToSurface:Z

    if-eqz v1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    .line 547
    .local v0, "surface":Landroid/view/Surface;
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;-><init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;Landroid/view/Surface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 554
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->reportedDrawnToSurface:Z

    goto :goto_0
.end method

.method private maybeNotifyDroppedFrameCount()V
    .locals 8

    .prologue
    .line 558
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    if-nez v1, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 563
    .local v4, "now":J
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    .line 564
    .local v0, "countToNotify":I
    iget-wide v6, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v4, v6

    .line 565
    .local v2, "elapsedToNotify":J
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;

    invoke-direct {v6, p0, v0, v2, v3}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;-><init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;IJ)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    .line 573
    iput-wide v4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameAccumulationStartTimeMs:J

    goto :goto_0
.end method

.method private maybeNotifyVideoSizeChanged()V
    .locals 5

    .prologue
    .line 520
    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    iget v4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    iget v4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    iget v4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    .line 527
    .local v2, "currentWidth":I
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    .line 528
    .local v0, "currentHeight":I
    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    .line 529
    .local v1, "currentPixelWidthHeightRatio":F
    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;-><init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;IIF)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 536
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    .line 537
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    .line 538
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    goto :goto_0
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    if-ne v1, p1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->reportedDrawnToSurface:Z

    .line 350
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->getState()I

    move-result v0

    .line 351
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 352
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->releaseCodec()V

    .line 353
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeInitCodec()V

    goto :goto_0
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/MediaFormat;)Z
    .locals 2
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "codecIsAdaptive"    # Z
    .param p3, "oldFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p4, "newFormat"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 402
    iget-object v0, p4, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    iget-object v1, p3, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p3, Lcom/google/android/exoplayer/MediaFormat;->width:I

    iget v1, p4, Lcom/google/android/exoplayer/MediaFormat;->width:I

    if-ne v0, v1, :cond_1

    iget v0, p3, Lcom/google/android/exoplayer/MediaFormat;->height:I

    iget v1, p4, Lcom/google/android/exoplayer/MediaFormat;->height:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 2
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "codecName"    # Ljava/lang/String;
    .param p3, "format"    # Landroid/media/MediaFormat;
    .param p4, "crypto"    # Landroid/media/MediaCrypto;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 367
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->videoScalingMode:I

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 368
    return-void
.end method

.method protected dropOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 2
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "bufferIndex"    # I

    .prologue
    .line 488
    const-string v0, "dropVideoBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 490
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 491
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->droppedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->droppedOutputBufferCount:I

    .line 492
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    .line 493
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maxDroppedFrameCountToNotify:I

    if-ne v0, v1, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDroppedFrameCount()V

    .line 496
    :cond_0
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 334
    check-cast p2, Landroid/view/Surface;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->setSurface(Landroid/view/Surface;)V

    .line 338
    :goto_0
    return-void

    .line 336
    .restart local p2    # "message":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected handlesMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {p1}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->handlesMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final haveRenderedFirstFrame()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    return v0
.end method

.method protected isReady()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v6, -0x1

    .line 284
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->getSourceState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 287
    :cond_0
    iput-wide v6, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    .line 298
    :cond_1
    :goto_0
    return v0

    .line 289
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    move v0, v1

    .line 291
    goto :goto_0

    .line 292
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 297
    iput-wide v6, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    move v0, v1

    .line 298
    goto :goto_0
.end method

.method public onDisabled()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, -0x1

    .line 318
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    .line 319
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    .line 320
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    .line 321
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->pendingPixelWidthHeightRatio:F

    .line 322
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    .line 323
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    .line 324
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

    invoke-interface {v0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;->disable()V

    .line 328
    :cond_0
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onDisabled()V

    .line 329
    return-void
.end method

.method protected onEnabled(JZ)V
    .locals 5
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .prologue
    .line 265
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onEnabled(JZ)V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    .line 267
    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->allowedJoiningTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->allowedJoiningTimeUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

    invoke-interface {v0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;->enable()V

    .line 273
    :cond_1
    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/google/android/exoplayer/MediaFormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-super {p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 373
    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->pendingPixelWidthHeightRatio:F

    .line 375
    return-void

    .line 373
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    goto :goto_0
.end method

.method protected onOutputFormatChanged(Lcom/google/android/exoplayer/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 3
    .param p1, "inputFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p2, "outputFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 387
    const-string v1, "crop-right"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "crop-left"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "crop-bottom"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "crop-top"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 390
    .local v0, "hasCrop":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "crop-right"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "crop-left"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    :goto_1
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    .line 393
    if-eqz v0, :cond_2

    const-string v1, "crop-bottom"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "crop-top"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    :goto_2
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    .line 396
    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->pendingPixelWidthHeightRatio:F

    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    .line 397
    return-void

    .line 387
    .end local v0    # "hasCrop":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 390
    .restart local v0    # "hasCrop":Z
    :cond_1
    const-string v1, "width"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 393
    :cond_2
    const-string v1, "height"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onStarted()V

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 307
    return-void
.end method

.method protected onStopped()V
    .locals 2

    .prologue
    .line 311
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    .line 312
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDroppedFrameCount()V

    .line 313
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onStopped()V

    .line 314
    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .locals 23
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "codec"    # Landroid/media/MediaCodec;
    .param p6, "buffer"    # Ljava/nio/ByteBuffer;
    .param p7, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;
    .param p8, "bufferIndex"    # I
    .param p9, "shouldSkip"    # Z

    .prologue
    .line 410
    if-eqz p9, :cond_0

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;I)V

    .line 412
    const/4 v9, 0x1

    .line 477
    :goto_0
    return v9

    .line 416
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    sub-long v12, v18, p3

    .line 417
    .local v12, "elapsedSinceStartOfLoopUs":J
    move-object/from16 v0, p7

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v18, v0

    sub-long v18, v18, p1

    sub-long v10, v18, v12

    .line 420
    .local v10, "earlyUs":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 421
    .local v14, "systemTimeNs":J
    const-wide/16 v18, 0x3e8

    mul-long v18, v18, v10

    add-long v16, v14, v18

    .line 425
    .local v16, "unadjustedFrameReleaseTimeNs":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

    if-eqz v9, :cond_1

    .line 426
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

    move-object/from16 v0, p7

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v16

    invoke-interface {v9, v0, v1, v2, v3}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;->adjustReleaseTime(JJ)J

    move-result-wide v6

    .line 428
    .local v6, "adjustedReleaseTimeNs":J
    sub-long v18, v6, v14

    const-wide/16 v20, 0x3e8

    div-long v10, v18, v20

    .line 433
    :goto_1
    const-wide/16 v18, -0x7530

    cmp-long v9, v10, v18

    if-gez v9, :cond_2

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->dropOutputBuffer(Landroid/media/MediaCodec;I)V

    .line 436
    const/4 v9, 0x1

    goto :goto_0

    .line 430
    .end local v6    # "adjustedReleaseTimeNs":J
    :cond_1
    move-wide/from16 v6, v16

    .restart local v6    # "adjustedReleaseTimeNs":J
    goto :goto_1

    .line 439
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    if-nez v9, :cond_4

    .line 440
    sget v9, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v18

    if-lt v9, v0, :cond_3

    .line 441
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V

    .line 445
    :goto_2
    const/4 v9, 0x1

    goto :goto_0

    .line 443
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;I)V

    goto :goto_2

    .line 448
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->getState()I

    move-result v9

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v9, v0, :cond_5

    .line 449
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 452
    :cond_5
    sget v9, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v18

    if-lt v9, v0, :cond_6

    .line 454
    const-wide/32 v18, 0xc350

    cmp-long v9, v10, v18

    if-gez v9, :cond_8

    .line 455
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V

    .line 456
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 460
    :cond_6
    const-wide/16 v18, 0x7530

    cmp-long v9, v10, v18

    if-gez v9, :cond_8

    .line 461
    const-wide/16 v18, 0x2af8

    cmp-long v9, v10, v18

    if-lez v9, :cond_7

    .line 466
    const-wide/16 v18, 0x2710

    sub-long v18, v10, v18

    const-wide/16 v20, 0x3e8

    :try_start_0
    div-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;I)V

    .line 472
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 467
    :catch_0
    move-exception v8

    .line 468
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    .line 477
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method protected renderOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "bufferIndex"    # I

    .prologue
    const/4 v2, 0x1

    .line 499
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyVideoSizeChanged()V

    .line 500
    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 502
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 503
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    .line 504
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    .line 505
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDrawnToSurface()V

    .line 506
    return-void
.end method

.method protected renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V
    .locals 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "bufferIndex"    # I
    .param p3, "releaseTimeNs"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyVideoSizeChanged()V

    .line 511
    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 513
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 514
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    .line 516
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDrawnToSurface()V

    .line 517
    return-void
.end method

.method protected seekTo(J)V
    .locals 3
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->seekTo(J)V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    .line 279
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    .line 280
    return-void
.end method

.method protected shouldInitCodec()Z
    .locals 1

    .prologue
    .line 359
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldInitCodec()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected skipOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 2
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "bufferIndex"    # I

    .prologue
    .line 481
    const-string v0, "skipVideoBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 482
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 483
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 484
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    .line 485
    return-void
.end method
