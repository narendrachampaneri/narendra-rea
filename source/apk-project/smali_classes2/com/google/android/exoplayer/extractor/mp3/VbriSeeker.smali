.class final Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "VbriSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;


# instance fields
.field private final basePosition:J

.field private final durationUs:J

.field private final positions:[J

.field private final timesUs:[J


# direct methods
.method private constructor <init>([J[JJJ)V
    .locals 1
    .param p1, "timesUs"    # [J
    .param p2, "positions"    # [J
    .param p3, "basePosition"    # J
    .param p5, "durationUs"    # J

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 94
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->positions:[J

    .line 95
    iput-wide p3, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->basePosition:J

    .line 96
    iput-wide p5, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->durationUs:J

    .line 97
    return-void
.end method

.method public static create(Lcom/google/android/exoplayer/util/MpegAudioHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;
    .locals 24
    .param p0, "mpegAudioHeader"    # Lcom/google/android/exoplayer/util/MpegAudioHeader;
    .param p1, "frame"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "position"    # J

    .prologue
    .line 41
    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 43
    .local v15, "numFrames":I
    if-gtz v15, :cond_0

    .line 44
    const/4 v3, 0x0

    .line 84
    :goto_0
    return-object v3

    .line 46
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    move/from16 v16, v0

    .line 47
    .local v16, "sampleRate":I
    int-to-long v2, v15

    const-wide/32 v22, 0xf4240

    const/16 v6, 0x7d00

    move/from16 v0, v16

    if-lt v0, v6, :cond_1

    const/16 v6, 0x480

    :goto_1
    int-to-long v6, v6

    mul-long v4, v22, v6

    move/from16 v0, v16

    int-to-long v6, v0

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    .line 49
    .local v8, "durationUs":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v14

    .line 50
    .local v14, "numEntries":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v17

    .line 51
    .local v17, "scale":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 54
    .local v10, "entrySize":I
    new-array v4, v14, [J

    .line 55
    .local v4, "timesUs":[J
    new-array v5, v14, [J

    .line 56
    .local v5, "offsets":[J
    int-to-long v2, v14

    div-long v18, v8, v2

    .line 57
    .local v18, "segmentDurationUs":J
    const-wide/16 v12, 0x0

    .line 58
    .local v12, "now":J
    const/16 v20, 0x0

    .line 59
    .local v20, "segmentIndex":I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v14, :cond_2

    .line 61
    packed-switch v10, :pswitch_data_0

    .line 75
    const/4 v3, 0x0

    goto :goto_0

    .line 47
    .end local v4    # "timesUs":[J
    .end local v5    # "offsets":[J
    .end local v8    # "durationUs":J
    .end local v10    # "entrySize":I
    .end local v12    # "now":J
    .end local v14    # "numEntries":I
    .end local v17    # "scale":I
    .end local v18    # "segmentDurationUs":J
    .end local v20    # "segmentIndex":I
    :cond_1
    const/16 v6, 0x240

    goto :goto_1

    .line 63
    .restart local v4    # "timesUs":[J
    .restart local v5    # "offsets":[J
    .restart local v8    # "durationUs":J
    .restart local v10    # "entrySize":I
    .restart local v12    # "now":J
    .restart local v14    # "numEntries":I
    .restart local v17    # "scale":I
    .restart local v18    # "segmentDurationUs":J
    .restart local v20    # "segmentIndex":I
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    .line 77
    .local v11, "numBytes":I
    :goto_3
    add-long v12, v12, v18

    .line 78
    aput-wide v12, v4, v20

    .line 79
    mul-int v2, v11, v17

    int-to-long v2, v2

    add-long p2, p2, v2

    .line 80
    aput-wide p2, v5, v20

    .line 82
    add-int/lit8 v20, v20, 0x1

    .line 83
    goto :goto_2

    .line 66
    .end local v11    # "numBytes":I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 67
    .restart local v11    # "numBytes":I
    goto :goto_3

    .line 69
    .end local v11    # "numBytes":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v11

    .line 70
    .restart local v11    # "numBytes":I
    goto :goto_3

    .line 72
    .end local v11    # "numBytes":I
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    .line 73
    .restart local v11    # "numBytes":I
    goto :goto_3

    .line 84
    .end local v11    # "numBytes":I
    :cond_2
    new-instance v3, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    int-to-long v6, v2

    add-long v6, v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;-><init>([J[JJJ)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 7
    .param p1, "timeUs"    # J

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->timesUs:[J

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 107
    .local v0, "index":I
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->basePosition:J

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    add-long/2addr v2, v4

    return-wide v2

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->positions:[J

    aget-wide v2, v1, v0

    goto :goto_0
.end method

.method public getTimeUs(J)J
    .locals 3
    .param p1, "position"    # J

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->timesUs:[J

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->positions:[J

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method
