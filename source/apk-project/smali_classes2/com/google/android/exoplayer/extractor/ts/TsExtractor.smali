.class public final Lcom/google/android/exoplayer/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ts/TsExtractor$1;,
        Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;,
        Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;,
        Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;,
        Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
    }
.end annotation


# static fields
.field private static final MAX_PTS:J = 0x1ffffffffL

.field private static final TAG:Ljava/lang/String; = "TsExtractor"

.field private static final TS_PACKET_SIZE:I = 0xbc

.field private static final TS_PAT_PID:I = 0x0

.field private static final TS_STREAM_TYPE_AAC:I = 0xf

.field private static final TS_STREAM_TYPE_ATSC_AC3:I = 0x81

.field private static final TS_STREAM_TYPE_ATSC_E_AC3:I = 0x87

.field private static final TS_STREAM_TYPE_EIA608:I = 0x100

.field private static final TS_STREAM_TYPE_H264:I = 0x1b

.field private static final TS_STREAM_TYPE_H265:I = 0x24

.field private static final TS_STREAM_TYPE_ID3:I = 0x15

.field private static final TS_STREAM_TYPE_MPA:I = 0x3

.field private static final TS_STREAM_TYPE_MPA_LSF:I = 0x4

.field private static final TS_SYNC_BYTE:I = 0x47


# instance fields
.field final allowedPassthroughStreamTypes:Landroid/util/SparseBooleanArray;

.field private final firstSampleTimestampUs:J

.field id3Reader:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

.field private final idrKeyframesOnly:Z

.field private lastPts:J

.field private output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field final streamTypes:Landroid/util/SparseBooleanArray;

.field private timestampOffsetUs:J

.field private final tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field final tsPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field

.field private final tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;-><init>(J)V

    .line 73
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "firstSampleTimestampUs"    # J

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;-><init>(JLcom/google/android/exoplayer/audio/AudioCapabilities;)V

    .line 77
    return-void
.end method

.method public constructor <init>(JLcom/google/android/exoplayer/audio/AudioCapabilities;)V
    .locals 1
    .param p1, "firstSampleTimestampUs"    # J
    .param p3, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;-><init>(JLcom/google/android/exoplayer/audio/AudioCapabilities;Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(JLcom/google/android/exoplayer/audio/AudioCapabilities;Z)V
    .locals 3
    .param p1, "firstSampleTimestampUs"    # J
    .param p3, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;
    .param p4, "idrKeyframesOnly"    # Z

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->firstSampleTimestampUs:J

    .line 86
    iput-boolean p4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->idrKeyframesOnly:Z

    .line 87
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 88
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xbc

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 89
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->streamTypes:Landroid/util/SparseBooleanArray;

    .line 90
    invoke-static {p3}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->getPassthroughStreamTypes(Lcom/google/android/exoplayer/audio/AudioCapabilities;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->allowedPassthroughStreamTypes:Landroid/util/SparseBooleanArray;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->lastPts:J

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->idrKeyframesOnly:Z

    return v0
.end method

.method private static getPassthroughStreamTypes(Lcom/google/android/exoplayer/audio/AudioCapabilities;)Landroid/util/SparseBooleanArray;
    .locals 3
    .param p0, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .prologue
    .line 203
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 204
    .local v0, "streamTypes":Landroid/util/SparseBooleanArray;
    if-eqz p0, :cond_1

    .line 205
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const/16 v1, 0x81

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 208
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    :cond_1
    return-object v0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 1
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 114
    sget-object v0, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 115
    return-void
.end method

.method ptsToTimeUs(J)J
    .locals 13
    .param p1, "pts"    # J

    .prologue
    .line 178
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->lastPts:J

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 181
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->lastPts:J

    const-wide v10, 0xffffffffL

    add-long/2addr v8, v10

    const-wide v10, 0x1ffffffffL

    div-long v0, v8, v10

    .line 182
    .local v0, "closestWrapCount":J
    const-wide v8, 0x1ffffffffL

    const-wide/16 v10, 0x1

    sub-long v10, v0, v10

    mul-long/2addr v8, v10

    add-long v4, p1, v8

    .line 183
    .local v4, "ptsWrapBelow":J
    const-wide v8, 0x1ffffffffL

    mul-long/2addr v8, v0

    add-long v2, p1, v8

    .line 184
    .local v2, "ptsWrapAbove":J
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->lastPts:J

    sub-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->lastPts:J

    sub-long v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    move-wide p1, v4

    .line 188
    .end local v0    # "closestWrapCount":J
    .end local v2    # "ptsWrapAbove":J
    .end local v4    # "ptsWrapBelow":J
    :cond_0
    :goto_0
    const-wide/32 v8, 0xf4240

    mul-long/2addr v8, p1

    const-wide/32 v10, 0x15f90

    div-long v6, v8, v10

    .line 190
    .local v6, "timeUs":J
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->lastPts:J

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 191
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->firstSampleTimestampUs:J

    sub-long/2addr v8, v6

    iput-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->timestampOffsetUs:J

    .line 194
    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->lastPts:J

    .line 195
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->timestampOffsetUs:J

    add-long/2addr v8, v6

    return-wide v8

    .end local v6    # "timeUs":J
    .restart local v0    # "closestWrapCount":J
    .restart local v2    # "ptsWrapAbove":J
    .restart local v4    # "ptsWrapBelow":J
    :cond_2
    move-wide p1, v2

    .line 184
    goto :goto_0
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 12
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xbc

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 129
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v8, v7, v9, v11}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v8

    if-nez v8, :cond_1

    .line 130
    const/4 v7, -0x1

    .line 166
    :cond_0
    :goto_0
    return v7

    .line 135
    :cond_1
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 136
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 137
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 138
    .local v6, "syncByte":I
    const/16 v8, 0x47

    if-ne v6, v8, :cond_0

    .line 142
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v9, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 143
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 144
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v4

    .line 145
    .local v4, "payloadUnitStartIndicator":Z
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 146
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 147
    .local v5, "pid":I
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 148
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 149
    .local v0, "adaptationFieldExists":Z
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 153
    .local v2, "payloadExists":Z
    if-eqz v0, :cond_2

    .line 154
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 155
    .local v1, "adaptationFieldLength":I
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 159
    .end local v1    # "adaptationFieldLength":I
    :cond_2
    if-eqz v2, :cond_0

    .line 160
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;

    .line 161
    .local v3, "payloadReader":Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
    if-eqz v3, :cond_0

    .line 162
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v9, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-virtual {v3, v8, v4, v9}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;ZLcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    goto :goto_0
.end method

.method public seek()V
    .locals 4

    .prologue
    .line 119
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->timestampOffsetUs:J

    .line 120
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->lastPts:J

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;->seek()V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 6
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-array v1, v3, [B

    .line 101
    .local v1, "scratch":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_1

    .line 102
    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 103
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    .line 108
    :goto_1
    return v2

    .line 106
    :cond_0
    const/16 v4, 0xbb

    invoke-interface {p1, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 108
    goto :goto_1
.end method
