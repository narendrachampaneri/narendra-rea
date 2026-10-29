.class public final Lcom/google/android/exoplayer/audio/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;,
        Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;,
        Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;,
        Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;,
        Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
    }
.end annotation


# static fields
.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MIN_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field public static final RESULT_BUFFER_CONSUMED:I = 0x2

.field public static final RESULT_POSITION_DISCONTINUITY:I = 0x1

.field public static final SESSION_ID_NOT_SET:I = 0x0

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field private static final UNKNOWN_AC3_BITRATE:I

.field public static enablePreV21AudioSessionWorkaround:Z

.field public static failOnSpuriousAudioTimestamp:Z


# instance fields
.field private ac3Bitrate:I

.field private audioTimestampSet:Z

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

.field private bufferSize:I

.field private channelConfig:I

.field private encoding:I

.field private frameSize:I

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private isAc3:Z

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private lastPlayheadSampleTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private latencyUs:J

.field private minBufferSize:I

.field private nextPlayheadOffsetIndex:I

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private resumeSystemTimeUs:J

.field private sampleRate:I

.field private smoothedPlayheadOffsetUs:J

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private submittedBytes:J

.field private temporaryBuffer:[B

.field private temporaryBufferOffset:I

.field private temporaryBufferSize:I

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    sput-boolean v0, Lcom/google/android/exoplayer/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    .line 163
    sput-boolean v0, Lcom/google/android/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 206
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 208
    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 215
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;

    invoke-direct {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    .line 219
    :goto_1
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    .line 220
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 222
    return-void

    .line 217
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/audio/AudioTrack;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/audio/AudioTrack;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private bytesToFrames(J)J
    .locals 5
    .param p1, "byteCount"    # J

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    if-eqz v0, :cond_1

    .line 758
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 761
    :goto_0
    return-wide v0

    .line 758
    :cond_0
    const-wide/16 v0, 0x8

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    .line 761
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    int-to-long v0, v0

    div-long v0, p1, v0

    goto :goto_0
.end method

.method private checkAudioTrackInitialized()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 739
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    .line 740
    .local v0, "state":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 741
    return-void

    .line 745
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 753
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;-><init>(IIII)V

    throw v1

    .line 746
    :catch_0
    move-exception v1

    .line 750
    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    throw v1
.end method

.method private durationUsToFrames(J)J
    .locals 5
    .param p1, "durationUs"    # J

    .prologue
    .line 770
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private framesToDurationUs(J)J
    .locals 5
    .param p1, "frameCount"    # J

    .prologue
    .line 766
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private hasCurrentPositionUs()Z
    .locals 1

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSampleSyncParams()V
    .locals 22

    .prologue
    .line 655
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v11}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v12

    .line 656
    .local v12, "playbackPositionUs":J
    const-wide/16 v16, 0x0

    cmp-long v11, v12, v16

    if-nez v11, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v14, v16, v18

    .line 661
    .local v14, "systemClockUs":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    move-wide/from16 v16, v0

    sub-long v16, v14, v16

    const-wide/16 v18, 0x7530

    cmp-long v11, v16, v18

    if-ltz v11, :cond_3

    .line 663
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    move/from16 v16, v0

    sub-long v18, v12, v14

    aput-wide v18, v11, v16

    .line 664
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    add-int/lit8 v11, v11, 0x1

    rem-int/lit8 v11, v11, 0xa

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 665
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v11, v0, :cond_2

    .line 666
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    .line 668
    :cond_2
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 669
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 670
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    if-ge v9, v11, :cond_3

    .line 671
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    aget-wide v18, v11, v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    int-to-long v0, v11

    move-wide/from16 v20, v0

    div-long v18, v18, v20

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 670
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 677
    .end local v9    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    move-wide/from16 v16, v0

    sub-long v16, v14, v16

    const-wide/32 v18, 0x7a120

    cmp-long v11, v16, v18

    if-ltz v11, :cond_0

    .line 678
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v11}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->updateTimestamp()Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 679
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v11, :cond_4

    .line 681
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v11}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v6, v16, v18

    .line 682
    .local v6, "audioTimestampUs":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v11}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v4

    .line 683
    .local v4, "audioTimestampFramePosition":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->resumeSystemTimeUs:J

    move-wide/from16 v16, v0

    cmp-long v11, v6, v16

    if-gez v11, :cond_6

    .line 685
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 709
    .end local v4    # "audioTimestampFramePosition":J
    .end local v6    # "audioTimestampUs":J
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v11, :cond_5

    .line 713
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    const/4 v11, 0x0

    check-cast v11, [Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v0, v11

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    int-to-long v0, v11

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->bytesToFrames(J)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v18

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    .line 716
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    .line 718
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x4c4b40

    cmp-long v11, v16, v18

    if-lez v11, :cond_5

    .line 719
    const-string v11, "AudioTrack"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Ignoring impossibly large audio latency: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    goto/16 :goto_0

    .line 686
    .restart local v4    # "audioTimestampFramePosition":J
    .restart local v6    # "audioTimestampUs":J
    :cond_6
    sub-long v16, v6, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    const-wide/32 v18, 0x4c4b40

    cmp-long v11, v16, v18

    if-lez v11, :cond_8

    .line 688
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Spurious audio timestamp (system clock mismatch): "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 691
    .local v10, "message":Ljava/lang/String;
    sget-boolean v11, Lcom/google/android/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v11, :cond_7

    .line 692
    new-instance v11, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v11, v10}, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 694
    :cond_7
    const-string v11, "AudioTrack"

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 696
    .end local v10    # "message":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    const-wide/32 v18, 0x4c4b40

    cmp-long v11, v16, v18

    if-lez v11, :cond_4

    .line 699
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Spurious audio timestamp (frame position mismatch): "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 702
    .restart local v10    # "message":Ljava/lang/String;
    sget-boolean v11, Lcom/google/android/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v11, :cond_9

    .line 703
    new-instance v11, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v11, v10}, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 705
    :cond_9
    const-string v11, "AudioTrack"

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 722
    .end local v4    # "audioTimestampFramePosition":J
    .end local v6    # "audioTimestampUs":J
    .end local v10    # "message":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 724
    .local v8, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_3
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .locals 2

    .prologue
    .line 631
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_0

    .line 644
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 637
    .local v0, "toRelease":Landroid/media/AudioTrack;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 638
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack$2;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer/audio/AudioTrack$2;->start()V

    goto :goto_0
.end method

.method private resetSyncParams()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 774
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 775
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    .line 776
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 777
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 778
    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 779
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    .line 780
    return-void
.end method

.method private static setVolumeV21(Landroid/media/AudioTrack;F)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 574
    return-void
.end method

.method private static setVolumeV3(Landroid/media/AudioTrack;F)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F

    .prologue
    .line 578
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 579
    return-void
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 542
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCurrentPositionUs(Z)J
    .locals 14
    .param p1, "sourceEnded"    # Z

    .prologue
    const-wide/16 v12, 0x3e8

    .line 244
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->hasCurrentPositionUs()Z

    move-result v10

    if-nez v10, :cond_1

    .line 245
    const-wide/high16 v2, -0x8000000000000000L

    .line 276
    :cond_0
    :goto_0
    return-wide v2

    .line 248
    :cond_1
    iget-object v10, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v10}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 249
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->maybeSampleSyncParams()V

    .line 252
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    div-long v8, v10, v12

    .line 254
    .local v8, "systemClockUs":J
    iget-boolean v10, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v10, :cond_3

    .line 256
    iget-object v10, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v10}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v10

    div-long/2addr v10, v12

    sub-long v6, v8, v10

    .line 257
    .local v6, "presentationDiff":J
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v4

    .line 259
    .local v4, "framesDiff":J
    iget-object v10, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v10}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v10

    add-long v0, v10, v4

    .line 260
    .local v0, "currentFramePosition":J
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    add-long v2, v10, v12

    .line 261
    .local v2, "currentPositionUs":J
    goto :goto_0

    .line 262
    .end local v0    # "currentFramePosition":J
    .end local v2    # "currentPositionUs":J
    .end local v4    # "framesDiff":J
    .end local v6    # "presentationDiff":J
    :cond_3
    iget v10, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    if-nez v10, :cond_4

    .line 264
    iget-object v10, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v10}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    add-long v2, v10, v12

    .line 271
    .restart local v2    # "currentPositionUs":J
    :goto_1
    if-nez p1, :cond_0

    .line 272
    iget-wide v10, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    sub-long/2addr v2, v10

    goto :goto_0

    .line 269
    .end local v2    # "currentPositionUs":J
    :cond_4
    iget-wide v10, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-long/2addr v10, v8

    iget-wide v12, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    add-long v2, v10, v12

    .restart local v2    # "currentPositionUs":J
    goto :goto_1
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;IIJ)I
    .locals 16
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 444
    if-nez p3, :cond_1

    .line 445
    const/4 v7, 0x2

    .line 536
    :cond_0
    :goto_0
    return v7

    .line 449
    :cond_1
    sget v10, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v11, 0x16

    if-gt v10, v11, :cond_3

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    if-eqz v10, :cond_3

    .line 452
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v10}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 453
    const/4 v7, 0x0

    goto :goto_0

    .line 459
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v10}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v10}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    .line 461
    const/4 v7, 0x0

    goto :goto_0

    .line 465
    :cond_3
    const/4 v7, 0x0

    .line 466
    .local v7, "result":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    if-nez v10, :cond_5

    .line 467
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    if-nez v10, :cond_4

    .line 468
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    move/from16 v0, p3

    invoke-static {v0, v10}, Lcom/google/android/exoplayer/util/Ac3Util;->getBitrate(II)I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    .line 473
    :cond_4
    move/from16 v0, p3

    int-to-long v10, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/exoplayer/audio/AudioTrack;->bytesToFrames(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v10

    sub-long v2, p4, v10

    .line 474
    .local v2, "bufferStartTime":J
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    if-nez v10, :cond_a

    .line 475
    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    .line 476
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 497
    .end local v2    # "bufferStartTime":J
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    if-nez v10, :cond_8

    .line 498
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    .line 499
    invoke-virtual/range {p1 .. p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 500
    sget v10, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v11, 0x15

    if-ge v10, v11, :cond_8

    .line 502
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    array-length v10, v10

    move/from16 v0, p3

    if-ge v10, v0, :cond_7

    .line 503
    :cond_6
    move/from16 v0, p3

    new-array v10, v0, [B

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    .line 505
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 506
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    .line 510
    :cond_8
    const/4 v6, 0x0

    .line 511
    .local v6, "bytesWritten":I
    sget v10, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v11, 0x15

    if-ge v10, v11, :cond_c

    .line 513
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v12}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    int-to-long v14, v14

    mul-long/2addr v12, v14

    sub-long/2addr v10, v12

    long-to-int v4, v10

    .line 515
    .local v4, "bytesPending":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    sub-int v5, v10, v4

    .line 516
    .local v5, "bytesToWrite":I
    if-lez v5, :cond_9

    .line 517
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 518
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    invoke-virtual {v10, v11, v12, v5}, Landroid/media/AudioTrack;->write([BII)I

    move-result v6

    .line 519
    if-ltz v6, :cond_9

    .line 520
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    add-int/2addr v10, v6

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    .line 527
    .end local v4    # "bytesPending":I
    .end local v5    # "bytesToWrite":I
    :cond_9
    :goto_2
    if-gez v6, :cond_d

    .line 528
    new-instance v10, Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    invoke-direct {v10, v6}, Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;-><init>(I)V

    throw v10

    .line 479
    .end local v6    # "bytesWritten":I
    .restart local v2    # "bufferStartTime":J
    :cond_a
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/android/exoplayer/audio/AudioTrack;->bytesToFrames(J)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v12

    add-long v8, v10, v12

    .line 481
    .local v8, "expectedBufferStartTime":J
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    sub-long v10, v8, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x30d40

    cmp-long v10, v10, v12

    if-lez v10, :cond_b

    .line 483
    const-string v10, "AudioTrack"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Discontinuity detected [expected "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", got "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v10, 0x2

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 487
    :cond_b
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 490
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    sub-long v12, v2, v8

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    .line 491
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 492
    or-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 524
    .end local v2    # "bufferStartTime":J
    .end local v8    # "expectedBufferStartTime":J
    .restart local v6    # "bytesWritten":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    move-object/from16 v0, p1

    invoke-static {v10, v0, v11}, Lcom/google/android/exoplayer/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v6

    goto/16 :goto_2

    .line 531
    :cond_d
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    sub-int/2addr v10, v6

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    .line 532
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    int-to-long v12, v6

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    .line 533
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    if-nez v10, :cond_0

    .line 534
    or-int/lit8 v7, v7, 0x2

    goto/16 :goto_0
.end method

.method public handleDiscontinuity()V
    .locals 2

    .prologue
    .line 422
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 423
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 425
    :cond_0
    return-void
.end method

.method public hasEnoughDataToBeginPlayback()Z
    .locals 4

    .prologue
    .line 556
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->minBufferSize:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPendingData()Z
    .locals 4

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->bytesToFrames(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->overrideHasPendingData()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->initialize(I)I

    move-result v0

    return v0
.end method

.method public initialize(I)I
    .locals 8
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x3

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 303
    if-nez p1, :cond_2

    .line 304
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    iget v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 311
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->checkAudioTrackInitialized()V

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    .line 314
    sget-boolean v0, Lcom/google/android/exoplayer/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v0, :cond_1

    .line 315
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v0, v6, :cond_1

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 323
    const/16 v2, 0xfa0

    .line 324
    .local v2, "sampleRate":I
    const/4 v3, 0x4

    .line 325
    .local v3, "channelConfig":I
    const/4 v4, 0x2

    .line 326
    .local v4, "encoding":I
    const/4 v5, 0x2

    .line 327
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v6, 0x0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 334
    .end local v2    # "sampleRate":I
    .end local v3    # "channelConfig":I
    .end local v4    # "encoding":I
    .end local v5    # "bufferSize":I
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget-boolean v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    invoke-virtual {v0, v1, v6}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 335
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->setVolume(F)V

    .line 337
    return p1

    .line 308
    :cond_2
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    iget v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->resetSyncParams()V

    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 587
    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->resumeSystemTimeUs:J

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 417
    :cond_0
    return-void
.end method

.method public reconfigure(Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->reconfigure(Landroid/media/MediaFormat;I)V

    .line 346
    return-void
.end method

.method public reconfigure(Landroid/media/MediaFormat;I)V
    .locals 18
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "specifiedBufferSize"    # I

    .prologue
    .line 356
    const-string v11, "channel-count"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 358
    .local v3, "channelCount":I
    packed-switch v3, :pswitch_data_0

    .line 372
    :pswitch_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported channel count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 360
    :pswitch_1
    const/4 v2, 0x4

    .line 375
    .local v2, "channelConfig":I
    :goto_0
    const-string v11, "sample-rate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    .line 376
    .local v10, "sampleRate":I
    const-string v11, "mime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 379
    .local v7, "mimeType":Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/exoplayer/util/MimeTypes;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v4

    .line 380
    .local v4, "encoding":I
    const/4 v11, 0x5

    if-eq v4, v11, :cond_0

    const/4 v11, 0x6

    if-ne v4, v11, :cond_1

    :cond_0
    const/4 v5, 0x1

    .line 381
    .local v5, "isAc3":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    if-ne v11, v10, :cond_2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    if-ne v11, v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    if-nez v11, :cond_2

    if-nez v5, :cond_2

    .line 409
    :goto_2
    return-void

    .line 363
    .end local v2    # "channelConfig":I
    .end local v4    # "encoding":I
    .end local v5    # "isAc3":Z
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v10    # "sampleRate":I
    :pswitch_2
    const/16 v2, 0xc

    .line 364
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 366
    .end local v2    # "channelConfig":I
    :pswitch_3
    const/16 v2, 0xfc

    .line 367
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 369
    .end local v2    # "channelConfig":I
    :pswitch_4
    const/16 v2, 0x3fc

    .line 370
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 380
    .restart local v4    # "encoding":I
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v10    # "sampleRate":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 387
    .restart local v5    # "isAc3":Z
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->reset()V

    .line 389
    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    .line 390
    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    .line 391
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    .line 392
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->isAc3:Z

    .line 393
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->ac3Bitrate:I

    .line 394
    mul-int/lit8 v11, v3, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    .line 395
    invoke-static {v10, v2, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->minBufferSize:I

    .line 396
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->minBufferSize:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_3

    const/4 v11, 0x1

    :goto_3
    invoke-static {v11}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 398
    if-eqz p2, :cond_4

    .line 399
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_2

    .line 396
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 401
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->minBufferSize:I

    mul-int/lit8 v9, v11, 0x4

    .line 402
    .local v9, "multipliedBufferSize":I
    const-wide/32 v12, 0x3d090

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v12

    long-to-int v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    mul-int v8, v11, v12

    .line 403
    .local v8, "minAppBufferSize":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->minBufferSize:I

    int-to-long v12, v11

    const-wide/32 v14, 0xb71b0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->frameSize:I

    int-to-long v0, v11

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    long-to-int v6, v12

    .line 405
    .local v6, "maxAppBufferSize":I
    if-ge v9, v8, :cond_5

    .end local v8    # "minAppBufferSize":I
    :goto_4
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_2

    .restart local v8    # "minAppBufferSize":I
    :cond_5
    if-le v9, v6, :cond_6

    move v8, v6

    goto :goto_4

    :cond_6
    move v8, v9

    goto :goto_4

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->reset()V

    .line 626
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 627
    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 595
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 596
    iput-wide v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedBytes:J

    .line 597
    iput v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferSize:I

    .line 598
    iput v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 599
    iput-wide v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    .line 600
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->resetSyncParams()V

    .line 601
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 602
    .local v0, "playState":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 603
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 607
    .local v1, "toRelease":Landroid/media/AudioTrack;
    iput-object v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 608
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 609
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 610
    new-instance v2, Lcom/google/android/exoplayer/audio/AudioTrack$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack$1;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$1;->start()V

    .line 621
    .end local v0    # "playState":I
    .end local v1    # "toRelease":Landroid/media/AudioTrack;
    :cond_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .prologue
    .line 561
    iput p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    .line 562
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 564
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer/audio/AudioTrack;->setVolumeV21(Landroid/media/AudioTrack;F)V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer/audio/AudioTrack;->setVolumeV3(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method
