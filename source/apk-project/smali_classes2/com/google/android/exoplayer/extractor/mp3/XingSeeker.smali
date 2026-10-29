.class final Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;


# instance fields
.field private final durationUs:J

.field private final firstFramePosition:J

.field private final inputLength:J

.field private final sizeBytes:J

.field private final tableOfContents:[J


# direct methods
.method private constructor <init>([JJJJJ)V
    .locals 0
    .param p1, "tableOfContents"    # [J
    .param p2, "firstFramePosition"    # J
    .param p4, "sizeBytes"    # J
    .param p6, "durationUs"    # J
    .param p8, "inputLength"    # J

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    .line 87
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    .line 88
    iput-wide p4, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    .line 89
    iput-wide p6, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    .line 90
    iput-wide p8, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    .line 91
    return-void
.end method

.method public static create(Lcom/google/android/exoplayer/util/MpegAudioHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;
    .locals 20
    .param p0, "mpegAudioHeader"    # Lcom/google/android/exoplayer/util/MpegAudioHeader;
    .param p1, "frame"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "inputLength"    # J

    .prologue
    .line 43
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    move/from16 v18, v0

    .line 44
    .local v18, "samplesPerFrame":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    move/from16 v17, v0

    .line 45
    .local v17, "sampleRate":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    int-to-long v4, v2

    add-long v12, p2, v4

    .line 47
    .local v12, "firstFramePosition":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 49
    .local v14, "flags":I
    and-int/lit8 v2, v14, 0x7

    const/4 v4, 0x7

    if-eq v2, v4, :cond_0

    .line 50
    const/4 v2, 0x0

    .line 74
    :goto_0
    return-object v2

    .line 54
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    .line 55
    .local v15, "frameCount":I
    if-nez v15, :cond_1

    .line 56
    const/4 v2, 0x0

    goto :goto_0

    .line 58
    :cond_1
    int-to-long v2, v15

    move/from16 v0, v18

    int-to-long v4, v0

    const-wide/32 v10, 0xf4240

    mul-long/2addr v4, v10

    move/from16 v0, v17

    int-to-long v6, v0

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    .line 62
    .local v8, "durationUs":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    int-to-long v6, v2

    .line 65
    .local v6, "sizeBytes":J
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 66
    const/16 v2, 0x63

    new-array v3, v2, [J

    .line 67
    .local v3, "tableOfContents":[J
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    const/16 v2, 0x63

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-long v4, v2

    aput-wide v4, v3, v16

    .line 67
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 74
    :cond_2
    new-instance v2, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;

    move-wide v4, v12

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;-><init>([JJJJJ)V

    goto :goto_0
.end method

.method private getTimeUsForTocIndex(I)J
    .locals 4
    .param p1, "tocIndex"    # I

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    add-int/lit8 v2, p1, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 13
    .param p1, "timeUs"    # J

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    .line 100
    long-to-float v5, p1

    mul-float/2addr v5, v10

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    long-to-float v8, v8

    div-float v4, v5, v8

    .line 102
    .local v4, "percent":F
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_1

    .line 103
    const/4 v3, 0x0

    .line 122
    .local v3, "fx":F
    :goto_0
    const/high16 v5, 0x3b800000    # 0.00390625f

    mul-float/2addr v5, v3

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    long-to-float v8, v8

    mul-float/2addr v5, v8

    float-to-long v8, v5

    iget-wide v10, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    add-long v6, v8, v10

    .line 123
    .local v6, "position":J
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_0

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .end local v6    # "position":J
    :cond_0
    return-wide v6

    .line 104
    .end local v3    # "fx":F
    :cond_1
    cmpl-float v5, v4, v10

    if-ltz v5, :cond_2

    .line 105
    const/high16 v3, 0x43800000    # 256.0f

    .restart local v3    # "fx":F
    goto :goto_0

    .line 107
    .end local v3    # "fx":F
    :cond_2
    float-to-int v0, v4

    .line 109
    .local v0, "a":I
    if-nez v0, :cond_3

    .line 110
    const/4 v1, 0x0

    .line 114
    .local v1, "fa":F
    :goto_1
    const/16 v5, 0x63

    if-ge v0, v5, :cond_4

    .line 115
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v8, v5, v0

    long-to-float v2, v8

    .line 119
    .local v2, "fb":F
    :goto_2
    sub-float v5, v2, v1

    int-to-float v8, v0

    sub-float v8, v4, v8

    mul-float/2addr v5, v8

    add-float v3, v1, v5

    .restart local v3    # "fx":F
    goto :goto_0

    .line 112
    .end local v1    # "fa":F
    .end local v2    # "fb":F
    .end local v3    # "fx":F
    :cond_3
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v8, v0, -0x1

    aget-wide v8, v5, v8

    long-to-float v1, v8

    .restart local v1    # "fa":F
    goto :goto_1

    .line 117
    :cond_4
    const/high16 v2, 0x43800000    # 256.0f

    .restart local v2    # "fb":F
    goto :goto_2
.end method

.method public getTimeUs(J)J
    .locals 21
    .param p1, "position"    # J

    .prologue
    .line 128
    const-wide/16 v16, 0x100

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    move-wide/from16 v18, v0

    sub-long v18, p1, v18

    mul-long v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    move-wide/from16 v18, v0

    div-long v6, v16, v18

    .line 129
    .local v6, "offsetByte":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v11, v6, v7, v0, v1}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v10

    .line 130
    .local v10, "previousIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->getTimeUsForTocIndex(I)J

    move-result-wide v12

    .line 131
    .local v12, "previousTime":J
    const/16 v11, 0x62

    if-ne v10, v11, :cond_0

    .line 141
    .end local v12    # "previousTime":J
    :goto_0
    return-wide v12

    .line 136
    .restart local v12    # "previousTime":J
    :cond_0
    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    const-wide/16 v8, 0x0

    .line 137
    .local v8, "previousByte":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v16, v10, 0x1

    aget-wide v2, v11, v16

    .line 138
    .local v2, "nextByte":J
    add-int/lit8 v11, v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->getTimeUsForTocIndex(I)J

    move-result-wide v4

    .line 139
    .local v4, "nextTime":J
    sub-long v16, v4, v12

    sub-long v18, v6, v8

    mul-long v16, v16, v18

    sub-long v18, v2, v8

    div-long v14, v16, v18

    .line 141
    .local v14, "timeOffset":J
    add-long/2addr v12, v14

    goto :goto_0

    .line 136
    .end local v2    # "nextByte":J
    .end local v4    # "nextTime":J
    .end local v8    # "previousByte":J
    .end local v14    # "timeOffset":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v8, v11, v10

    goto :goto_1
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method
