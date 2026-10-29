.class public final Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;
.super Ljava/lang/Object;
.source "WebmExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;,
        Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;,
        Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;
    }
.end annotation


# static fields
.field private static final BLOCK_STATE_DATA:I = 0x2

.field private static final BLOCK_STATE_HEADER:I = 0x1

.field private static final BLOCK_STATE_START:I = 0x0

.field private static final CODEC_ID_AAC:Ljava/lang/String; = "A_AAC"

.field private static final CODEC_ID_AC3:Ljava/lang/String; = "A_AC3"

.field private static final CODEC_ID_H264:Ljava/lang/String; = "V_MPEG4/ISO/AVC"

.field private static final CODEC_ID_H265:Ljava/lang/String; = "V_MPEGH/ISO/HEVC"

.field private static final CODEC_ID_MP3:Ljava/lang/String; = "A_MPEG/L3"

.field private static final CODEC_ID_MPEG4_AP:Ljava/lang/String; = "V_MPEG4/ISO/AP"

.field private static final CODEC_ID_MPEG4_ASP:Ljava/lang/String; = "V_MPEG4/ISO/ASP"

.field private static final CODEC_ID_MPEG4_SP:Ljava/lang/String; = "V_MPEG4/ISO/SP"

.field private static final CODEC_ID_OPUS:Ljava/lang/String; = "A_OPUS"

.field private static final CODEC_ID_VORBIS:Ljava/lang/String; = "A_VORBIS"

.field private static final CODEC_ID_VP8:Ljava/lang/String; = "V_VP8"

.field private static final CODEC_ID_VP9:Ljava/lang/String; = "V_VP9"

.field private static final CUES_STATE_BUILDING:I = 0x1

.field private static final CUES_STATE_BUILT:I = 0x2

.field private static final CUES_STATE_NOT_BUILT:I = 0x0

.field private static final DOC_TYPE_MATROSKA:Ljava/lang/String; = "matroska"

.field private static final DOC_TYPE_WEBM:Ljava/lang/String; = "webm"

.field private static final ENCRYPTION_IV_SIZE:I = 0x8

.field private static final ID_AUDIO:I = 0xe1

.field private static final ID_BLOCK:I = 0xa1

.field private static final ID_BLOCK_GROUP:I = 0xa0

.field private static final ID_CHANNELS:I = 0x9f

.field private static final ID_CLUSTER:I = 0x1f43b675

.field private static final ID_CODEC_DELAY:I = 0x56aa

.field private static final ID_CODEC_ID:I = 0x86

.field private static final ID_CODEC_PRIVATE:I = 0x63a2

.field private static final ID_CONTENT_COMPRESSION:I = 0x5034

.field private static final ID_CONTENT_COMPRESSION_ALGORITHM:I = 0x4254

.field private static final ID_CONTENT_COMPRESSION_SETTINGS:I = 0x4255

.field private static final ID_CONTENT_ENCODING:I = 0x6240

.field private static final ID_CONTENT_ENCODINGS:I = 0x6d80

.field private static final ID_CONTENT_ENCODING_ORDER:I = 0x5031

.field private static final ID_CONTENT_ENCODING_SCOPE:I = 0x5032

.field private static final ID_CONTENT_ENCRYPTION:I = 0x5035

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS:I = 0x47e7

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE:I = 0x47e8

.field private static final ID_CONTENT_ENCRYPTION_ALGORITHM:I = 0x47e1

.field private static final ID_CONTENT_ENCRYPTION_KEY_ID:I = 0x47e2

.field private static final ID_CUES:I = 0x1c53bb6b

.field private static final ID_CUE_CLUSTER_POSITION:I = 0xf1

.field private static final ID_CUE_POINT:I = 0xbb

.field private static final ID_CUE_TIME:I = 0xb3

.field private static final ID_CUE_TRACK_POSITIONS:I = 0xb7

.field private static final ID_DEFAULT_DURATION:I = 0x23e383

.field private static final ID_DOC_TYPE:I = 0x4282

.field private static final ID_DOC_TYPE_READ_VERSION:I = 0x4285

.field private static final ID_DURATION:I = 0x4489

.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final ID_EBML_READ_VERSION:I = 0x42f7

.field private static final ID_INFO:I = 0x1549a966

.field private static final ID_PIXEL_HEIGHT:I = 0xba

.field private static final ID_PIXEL_WIDTH:I = 0xb0

.field private static final ID_REFERENCE_BLOCK:I = 0xfb

.field private static final ID_SAMPLING_FREQUENCY:I = 0xb5

.field private static final ID_SEEK:I = 0x4dbb

.field private static final ID_SEEK_HEAD:I = 0x114d9b74

.field private static final ID_SEEK_ID:I = 0x53ab

.field private static final ID_SEEK_POSITION:I = 0x53ac

.field private static final ID_SEEK_PRE_ROLL:I = 0x56bb

.field private static final ID_SEGMENT:I = 0x18538067

.field private static final ID_SEGMENT_INFO:I = 0x1549a966

.field private static final ID_SIMPLE_BLOCK:I = 0xa3

.field private static final ID_TIMECODE_SCALE:I = 0x2ad7b1

.field private static final ID_TIME_CODE:I = 0xe7

.field private static final ID_TRACKS:I = 0x1654ae6b

.field private static final ID_TRACK_ENTRY:I = 0xae

.field private static final ID_TRACK_NUMBER:I = 0xd7

.field private static final ID_TRACK_TYPE:I = 0x83

.field private static final ID_VIDEO:I = 0xe0

.field private static final LACING_EBML:I = 0x3

.field private static final LACING_FIXED_SIZE:I = 0x2

.field private static final LACING_NONE:I = 0x0

.field private static final LACING_XIPH:I = 0x1

.field private static final MP3_MAX_INPUT_SIZE:I = 0x1000

.field private static final OPUS_MAX_INPUT_SIZE:I = 0x1680

.field private static final TRACK_TYPE_AUDIO:I = 0x2

.field private static final TRACK_TYPE_VIDEO:I = 0x1

.field private static final UNKNOWN:I = -0x1

.field private static final VORBIS_MAX_INPUT_SIZE:I = 0x2000


# instance fields
.field private audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

.field private blockEncryptionKeyId:[B

.field private blockFlags:I

.field private blockLacingSampleCount:I

.field private blockLacingSampleIndex:I

.field private blockLacingSampleSizes:[I

.field private blockState:I

.field private blockTimeUs:J

.field private blockTrackNumber:I

.field private blockTrackNumberLength:I

.field private clusterTimecodeUs:J

.field private cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

.field private cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

.field private cuesContentPosition:J

.field private cuesState:I

.field private durationTimecode:J

.field private durationUs:J

.field private extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleEncodingHandled:Z

.field private sampleRead:Z

.field private sampleSeenReferenceBlock:Z

.field private final sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private seekEntryId:I

.field private final seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private seekEntryPosition:J

.field private seekForCues:Z

.field private seekPositionAfterBuildingCues:J

.field private seenClusterPositionForCurrentCuePoint:Z

.field private segmentContentPosition:J

.field private segmentContentSize:J

.field private sentDrmInitData:Z

.field private timecodeScale:J

.field private trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

.field private final varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

.field private videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

.field private final vorbisNumPageSamples:Lcom/google/android/exoplayer/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;-><init>(Lcom/google/android/exoplayer/extractor/webm/EbmlReader;)V

    .line 204
    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer/extractor/webm/EbmlReader;)V
    .locals 5
    .param p1, "reader"    # Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    .prologue
    const/4 v4, 0x4

    const-wide/16 v2, -0x1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    .line 155
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentSize:J

    .line 156
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    .line 157
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    .line 158
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    .line 172
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    .line 173
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesState:I

    .line 175
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    .line 207
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    new-instance v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;-><init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/webm/EbmlReader;->init(Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;)V

    .line 209
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    .line 210
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 211
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 212
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 213
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 214
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 215
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 216
    return-void
.end method

.method private buildSeekMap()Lcom/google/android/exoplayer/extractor/SeekMap;
    .locals 13

    .prologue
    const-wide/16 v8, -0x1

    const/4 v12, 0x0

    .line 902
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 906
    :cond_0
    iput-object v12, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    .line 907
    iput-object v12, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    .line 908
    sget-object v6, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    .line 928
    :goto_0
    return-object v6

    .line 910
    :cond_1
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v0

    .line 911
    .local v0, "cuePointsSize":I
    new-array v4, v0, [I

    .line 912
    .local v4, "sizes":[I
    new-array v3, v0, [J

    .line 913
    .local v3, "offsets":[J
    new-array v1, v0, [J

    .line 914
    .local v1, "durationsUs":[J
    new-array v5, v0, [J

    .line 915
    .local v5, "timesUs":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 916
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer/util/LongArray;->get(I)J

    move-result-wide v6

    aput-wide v6, v5, v2

    .line 917
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer/util/LongArray;->get(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v3, v2

    .line 915
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 919
    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v6, v0, -0x1

    if-ge v2, v6, :cond_3

    .line 920
    add-int/lit8 v6, v2, 0x1

    aget-wide v6, v3, v6

    aget-wide v8, v3, v2

    sub-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v4, v2

    .line 921
    add-int/lit8 v6, v2, 0x1

    aget-wide v6, v5, v6

    aget-wide v8, v5, v2

    sub-long/2addr v6, v8

    aput-wide v6, v1, v2

    .line 919
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 923
    :cond_3
    add-int/lit8 v6, v0, -0x1

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    iget-wide v10, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentSize:J

    add-long/2addr v8, v10

    add-int/lit8 v7, v0, -0x1

    aget-wide v10, v3, v7

    sub-long/2addr v8, v10

    long-to-int v7, v8

    aput v7, v4, v6

    .line 925
    add-int/lit8 v6, v0, -0x1

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    add-int/lit8 v7, v0, -0x1

    aget-wide v10, v5, v7

    sub-long/2addr v8, v10

    aput-wide v8, v1, v6

    .line 926
    iput-object v12, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    .line 927
    iput-object v12, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    .line 928
    new-instance v6, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    invoke-direct {v6, v4, v3, v1, v5}, Lcom/google/android/exoplayer/extractor/ChunkIndex;-><init>([I[J[J[J)V

    goto :goto_0
.end method

.method private static ensureArrayCapacity([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "length"    # I

    .prologue
    .line 985
    if-nez p0, :cond_1

    .line 986
    new-array p0, p1, [I

    .line 991
    .end local p0    # "array":[I
    :cond_0
    :goto_0
    return-object p0

    .line 987
    .restart local p0    # "array":[I
    :cond_1
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 991
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array p0, v0, [I

    goto :goto_0
.end method

.method private static isCodecSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "codecId"    # Ljava/lang/String;

    .prologue
    .line 966
    const-string v0, "V_VP8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_VP9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEG4/ISO/SP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEG4/ISO/ASP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEG4/ISO/AP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEG4/ISO/AVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_OPUS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_VORBIS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_AAC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_MPEG/L3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_AC3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private maybeSeekForCues(Lcom/google/android/exoplayer/extractor/PositionHolder;J)Z
    .locals 6
    .param p1, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .param p2, "currentPosition"    # J

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 941
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekForCues:Z

    if-eqz v2, :cond_0

    .line 942
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    .line 943
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    iput-wide v2, p1, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 944
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesState:I

    .line 945
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekForCues:Z

    .line 955
    :goto_0
    return v0

    .line 950
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 951
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    iput-wide v2, p1, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 952
    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    goto :goto_0

    :cond_1
    move v0, v1

    .line 955
    goto :goto_0
.end method

.method private outputSampleMetadata(Lcom/google/android/exoplayer/extractor/TrackOutput;J)V
    .locals 8
    .param p1, "trackOutput"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p2, "timeUs"    # J

    .prologue
    .line 755
    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    iget v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockEncryptionKeyId:[B

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleRead:Z

    .line 757
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->resetSample()V

    .line 758
    return-void
.end method

.method private readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V
    .locals 3
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "requiredLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 783
    :goto_0
    return-void

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 778
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 782
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    goto :goto_0
.end method

.method private readToOutput(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;I)I
    .locals 3
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 883
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    .line 884
    .local v1, "strippedBytesLeft":I
    if-lez v1, :cond_0

    .line 885
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 886
    .local v0, "bytesRead":I
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {p2, v2, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 890
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 891
    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    .line 892
    return v0

    .line 888
    .end local v0    # "bytesRead":I
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p2, p1, p3, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    .restart local v0    # "bytesRead":I
    goto :goto_0
.end method

.method private readToTarget(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)V
    .locals 3
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "target"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 868
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 869
    .local v0, "pendingStrippedBytes":I
    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-interface {p1, p2, v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 870
    if-lez v0, :cond_0

    .line 871
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, p2, p3, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 873
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    add-int/2addr v1, p4

    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 874
    return-void
.end method

.method private resetSample()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 761
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 762
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    .line 763
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    .line 764
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleEncodingHandled:Z

    .line 765
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 766
    return-void
.end method

.method private scaleTimecodeToUs(J)J
    .locals 7
    .param p1, "unscaledTimecode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 959
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 960
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private writeSampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;I)V
    .locals 9
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p3, "format"    # Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 787
    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleEncodingHandled:Z

    if-nez v3, :cond_2

    .line 788
    iget-boolean v3, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->hasContentEncryption:Z

    if-eqz v3, :cond_4

    .line 791
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    .line 792
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v6, v7}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 793
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 794
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    .line 795
    new-instance v3, Lcom/google/android/exoplayer/ParserException;

    const-string v4, "Extension bit is set in signal byte"

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 797
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v7, :cond_1

    .line 798
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v4, 0x8

    aput-byte v4, v3, v6

    .line 799
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 800
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {p2, v3, v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 801
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    .line 802
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    .line 808
    :cond_1
    :goto_0
    iput-boolean v7, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleEncodingHandled:Z

    .line 810
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v3

    add-int/2addr p4, v3

    .line 812
    const-string v3, "V_MPEG4/ISO/AVC"

    iget-object v4, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "V_MPEGH/ISO/HEVC"

    iget-object v4, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 817
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 818
    .local v0, "nalLengthData":[B
    aput-byte v6, v0, v6

    .line 819
    aput-byte v6, v0, v7

    .line 820
    const/4 v3, 0x2

    aput-byte v6, v0, v3

    .line 821
    iget v1, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->nalUnitLengthFieldLength:I

    .line 822
    .local v1, "nalUnitLengthFieldLength":I
    iget v3, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v2, v3, 0x4

    .line 826
    .local v2, "nalUnitLengthFieldLengthDiff":I
    :goto_1
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    if-ge v3, p4, :cond_7

    .line 827
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v3, :cond_5

    .line 829
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readToTarget(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)V

    .line 831
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 832
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    .line 834
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 835
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {p2, v3, v8}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 836
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    goto :goto_1

    .line 804
    .end local v0    # "nalLengthData":[B
    .end local v1    # "nalUnitLengthFieldLength":I
    .end local v2    # "nalUnitLengthFieldLengthDiff":I
    :cond_4
    iget-object v3, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleStrippedBytes:[B

    if-eqz v3, :cond_1

    .line 806
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleStrippedBytes:[B

    iget-object v5, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleStrippedBytes:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    goto :goto_0

    .line 839
    .restart local v0    # "nalLengthData":[B
    .restart local v1    # "nalUnitLengthFieldLength":I
    .restart local v2    # "nalUnitLengthFieldLengthDiff":I
    :cond_5
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    invoke-direct {p0, p1, p2, v4}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readToOutput(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_1

    .line 844
    .end local v0    # "nalLengthData":[B
    .end local v1    # "nalUnitLengthFieldLength":I
    .end local v2    # "nalUnitLengthFieldLengthDiff":I
    :cond_6
    :goto_2
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    if-ge v3, p4, :cond_7

    .line 845
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    sub-int v3, p4, v3

    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readToOutput(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;I)I

    goto :goto_2

    .line 849
    :cond_7
    const-string v3, "A_VORBIS"

    iget-object v4, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 856
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 857
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {p2, v3, v8}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 858
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    .line 860
    :cond_8
    return-void
.end method


# virtual methods
.method binaryElement(IILcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .locals 30
    .param p1, "id"    # I
    .param p2, "contentSize"    # I
    .param p3, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 587
    sparse-switch p1, :sswitch_data_0

    .line 750
    new-instance v26, Lcom/google/android/exoplayer/ParserException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unexpected id: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 589
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Ljava/util/Arrays;->fill([BB)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v26, v0

    rsub-int/lit8 v27, p2, 0x4

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    .line 748
    :goto_0
    return-void

    .line 595
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    move/from16 v0, p2

    new-array v0, v0, [B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_0

    .line 600
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    move/from16 v0, p2

    new-array v0, v0, [B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleStrippedBytes:[B

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleStrippedBytes:[B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_0

    .line 604
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    move/from16 v0, p2

    new-array v0, v0, [B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->encryptionKeyId:[B

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->encryptionKeyId:[B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_0

    .line 614
    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer/extractor/ExtractorInput;ZZ)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->getLastLength()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    .line 617
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 622
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    if-nez v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    if-nez v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_4

    .line 629
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v26, v0

    sub-int v26, p2, v26

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 630
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    goto/16 :goto_0

    .line 634
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v22, v0

    .line 637
    .local v22, "sampleTrackFormat":Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;
    :goto_1
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v25, v0

    .line 639
    .local v25, "trackOutput":Lcom/google/android/exoplayer/extractor/TrackOutput;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 641
    const/16 v26, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget-byte v26, v26, v27

    and-int/lit8 v26, v26, 0x6

    shr-int/lit8 v13, v26, 0x1

    .line 643
    .local v13, "lacing":I
    if-nez v13, :cond_7

    .line 644
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->ensureArrayCapacity([II)[I

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    add-int/lit8 v28, v28, -0x3

    aput v28, v26, v27

    .line 720
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v23, v26, v27

    .line 721
    .local v23, "timecode":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    move-wide/from16 v26, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v28

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTimeUs:J

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget-byte v26, v26, v27

    and-int/lit8 v26, v26, 0x8

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    const/4 v11, 0x1

    .line 723
    .local v11, "isInvisible":Z
    :goto_3
    const/16 v26, 0xa3

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget-byte v26, v26, v27

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    const/16 v27, 0x80

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    const/4 v12, 0x1

    .line 724
    .local v12, "isKeyframe":Z
    :goto_4
    if-eqz v12, :cond_18

    const/16 v26, 0x1

    move/from16 v27, v26

    :goto_5
    if-eqz v11, :cond_19

    const/high16 v26, 0x8000000

    :goto_6
    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    .line 726
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->encryptionKeyId:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockEncryptionKeyId:[B

    .line 727
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    .line 728
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    .line 731
    .end local v11    # "isInvisible":Z
    .end local v12    # "isKeyframe":Z
    .end local v13    # "lacing":I
    .end local v23    # "timecode":I
    :cond_5
    const/16 v26, 0xa3

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_1b

    .line 733
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    move/from16 v27, v0

    aget v26, v26, v27

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->writeSampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;I)V

    .line 736
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTimeUs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->defaultSampleDurationNs:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    move/from16 v0, v28

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v20, v26, v28

    .line 738
    .local v20, "sampleTimeUs":J
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->outputSampleMetadata(Lcom/google/android/exoplayer/extractor/TrackOutput;J)V

    .line 739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    goto :goto_7

    .line 634
    .end local v20    # "sampleTimeUs":J
    .end local v22    # "sampleTrackFormat":Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;
    .end local v25    # "trackOutput":Lcom/google/android/exoplayer/extractor/TrackOutput;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move-object/from16 v22, v0

    goto/16 :goto_1

    .line 648
    .restart local v13    # "lacing":I
    .restart local v22    # "sampleTrackFormat":Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;
    .restart local v25    # "trackOutput":Lcom/google/android/exoplayer/extractor/TrackOutput;
    :cond_7
    const/16 v26, 0xa3

    move/from16 v0, p1

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 649
    new-instance v26, Lcom/google/android/exoplayer/ParserException;

    const-string v27, "Lacing only supported in SimpleBlocks."

    invoke-direct/range {v26 .. v27}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 653
    :cond_8
    const/16 v26, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget-byte v26, v26, v27

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->ensureArrayCapacity([II)[I

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    .line 657
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v13, v0, :cond_9

    .line 658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v26, v0

    sub-int v26, p2, v26

    add-int/lit8 v26, v26, -0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v27, v0

    div-int v6, v26, v27

    .line 660
    .local v6, "blockLacingSampleSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_2

    .line 661
    .end local v6    # "blockLacingSampleSize":I
    :cond_9
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v13, v0, :cond_c

    .line 662
    const/16 v24, 0x0

    .line 663
    .local v24, "totalSamplesSize":I
    const/4 v8, 0x4

    .line 664
    .local v8, "headerSize":I
    const/16 v17, 0x0

    .local v17, "sampleIndex":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput v27, v26, v17

    .line 668
    :cond_a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v26, v0

    add-int/lit8 v27, v8, -0x1

    aget-byte v26, v26, v27

    move/from16 v0, v26

    and-int/lit16 v7, v0, 0xff

    .line 670
    .local v7, "byteValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    aget v27, v26, v17

    add-int v27, v27, v7

    aput v27, v26, v17

    .line 671
    const/16 v26, 0xff

    move/from16 v0, v26

    if-eq v7, v0, :cond_a

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    aget v26, v26, v17

    add-int v24, v24, v26

    .line 664
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 674
    .end local v7    # "byteValue":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    sub-int v28, v28, v8

    sub-int v28, v28, v24

    aput v28, v26, v27

    goto/16 :goto_2

    .line 676
    .end local v8    # "headerSize":I
    .end local v17    # "sampleIndex":I
    .end local v24    # "totalSamplesSize":I
    :cond_c
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v13, v0, :cond_15

    .line 677
    const/16 v24, 0x0

    .line 678
    .restart local v24    # "totalSamplesSize":I
    const/4 v8, 0x4

    .line 679
    .restart local v8    # "headerSize":I
    const/16 v17, 0x0

    .restart local v17    # "sampleIndex":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_14

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput v27, v26, v17

    .line 681
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v26, v0

    add-int/lit8 v27, v8, -0x1

    aget-byte v26, v26, v27

    if-nez v26, :cond_d

    .line 683
    new-instance v26, Lcom/google/android/exoplayer/ParserException;

    const-string v27, "No valid varint length mask found"

    invoke-direct/range {v26 .. v27}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 685
    :cond_d
    const-wide/16 v18, 0x0

    .line 686
    .local v18, "readValue":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_a
    const/16 v26, 0x8

    move/from16 v0, v26

    if-ge v9, v0, :cond_f

    .line 687
    const/16 v26, 0x1

    rsub-int/lit8 v27, v9, 0x7

    shl-int v14, v26, v27

    .line 688
    .local v14, "lengthMask":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v26, v0

    add-int/lit8 v27, v8, -0x1

    aget-byte v26, v26, v27

    and-int v26, v26, v14

    if-eqz v26, :cond_11

    .line 689
    add-int/lit8 v15, v8, -0x1

    .line 690
    .local v15, "readPosition":I
    add-int/2addr v8, v9

    .line 691
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v26, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "readPosition":I
    .local v16, "readPosition":I
    aget-byte v26, v26, v15

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    xor-int/lit8 v27, v14, -0x1

    and-int v26, v26, v27

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 693
    :goto_b
    move/from16 v0, v16

    if-ge v0, v8, :cond_e

    .line 694
    const/16 v26, 0x8

    shl-long v18, v18, v26

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v26, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "readPosition":I
    .restart local v15    # "readPosition":I
    aget-byte v26, v26, v16

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    or-long v18, v18, v26

    move/from16 v16, v15

    .end local v15    # "readPosition":I
    .restart local v16    # "readPosition":I
    goto :goto_b

    .line 698
    :cond_e
    if-lez v17, :cond_f

    .line 699
    const-wide/16 v26, 0x1

    mul-int/lit8 v28, v9, 0x7

    add-int/lit8 v28, v28, 0x6

    shl-long v26, v26, v28

    const-wide/16 v28, 0x1

    sub-long v26, v26, v28

    sub-long v18, v18, v26

    .line 704
    .end local v14    # "lengthMask":I
    .end local v16    # "readPosition":I
    :cond_f
    const-wide/32 v26, -0x80000000

    cmp-long v26, v18, v26

    if-ltz v26, :cond_10

    const-wide/32 v26, 0x7fffffff

    cmp-long v26, v18, v26

    if-lez v26, :cond_12

    .line 705
    :cond_10
    new-instance v26, Lcom/google/android/exoplayer/ParserException;

    const-string v27, "EBML lacing sample size out of range."

    invoke-direct/range {v26 .. v27}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 686
    .restart local v14    # "lengthMask":I
    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a

    .line 707
    .end local v14    # "lengthMask":I
    :cond_12
    move-wide/from16 v0, v18

    long-to-int v10, v0

    .line 708
    .local v10, "intReadValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    if-nez v17, :cond_13

    .end local v10    # "intReadValue":I
    :goto_c
    aput v10, v26, v17

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    aget v26, v26, v17

    add-int v24, v24, v26

    .line 679
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_9

    .line 708
    .restart local v10    # "intReadValue":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v17, -0x1

    aget v27, v27, v28

    add-int v10, v10, v27

    goto :goto_c

    .line 712
    .end local v9    # "i":I
    .end local v10    # "intReadValue":I
    .end local v18    # "readValue":J
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    sub-int v28, v28, v8

    sub-int v28, v28, v24

    aput v28, v26, v27

    goto/16 :goto_2

    .line 716
    .end local v8    # "headerSize":I
    .end local v17    # "sampleIndex":I
    .end local v24    # "totalSamplesSize":I
    :cond_15
    new-instance v26, Ljava/lang/IllegalStateException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unexpected lacing value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 722
    .restart local v23    # "timecode":I
    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 723
    .restart local v11    # "isInvisible":Z
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 724
    .restart local v12    # "isKeyframe":Z
    :cond_18
    const/16 v26, 0x0

    move/from16 v27, v26

    goto/16 :goto_5

    :cond_19
    const/16 v26, 0x0

    goto/16 :goto_6

    .line 741
    .end local v11    # "isInvisible":Z
    .end local v12    # "isKeyframe":Z
    .end local v13    # "lacing":I
    .end local v23    # "timecode":I
    :cond_1a
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    goto/16 :goto_0

    .line 745
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->writeSampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;I)V

    goto/16 :goto_0

    .line 587
    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_4
        0xa3 -> :sswitch_4
        0x4255 -> :sswitch_2
        0x47e2 -> :sswitch_3
        0x53ab -> :sswitch_0
        0x63a2 -> :sswitch_1
    .end sparse-switch
.end method

.method endMasterElement(I)V
    .locals 8
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x2

    .line 366
    sparse-switch p1, :sswitch_data_0

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 368
    :sswitch_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    .line 370
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    .line 372
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 373
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    goto :goto_0

    .line 377
    :sswitch_1
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    if-eq v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    .line 378
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    const v1, 0x1c53bb6b

    if-ne v0, v1, :cond_0

    .line 381
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    goto :goto_0

    .line 385
    :sswitch_2
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesState:I

    if-eq v0, v2, :cond_0

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->buildSeekMap()Lcom/google/android/exoplayer/extractor/SeekMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 387
    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesState:I

    goto :goto_0

    .line 393
    :sswitch_3
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    if-ne v0, v2, :cond_0

    .line 398
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSeenReferenceBlock:Z

    if-nez v0, :cond_4

    .line 399
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    .line 401
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    :goto_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTimeUs:J

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->outputSampleMetadata(Lcom/google/android/exoplayer/extractor/TrackOutput;J)V

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    goto :goto_0

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    goto :goto_1

    .line 407
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->hasContentEncryption:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->encryptionKeyId:[B

    if-nez v0, :cond_6

    .line 409
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sentDrmInitData:Z

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;

    const-string v2, "video/webm"

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v3, v3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->encryptionKeyId:[B

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V

    .line 414
    iput-boolean v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sentDrmInitData:Z

    goto/16 :goto_0

    .line 419
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->hasContentEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleStrippedBytes:[B

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Combining encryption and compression is not supported"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->type:I

    if-ne v0, v1, :cond_8

    .line 425
    :cond_7
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Mandatory element TrackNumber or TrackType not found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->type:I

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->type:I

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_b

    .line 430
    :cond_a
    iput-object v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    goto/16 :goto_0

    .line 433
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->type:I

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->getMediaFormat(J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 444
    :cond_c
    :goto_2
    iput-object v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    goto/16 :goto_0

    .line 437
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->type:I

    if-ne v0, v4, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 438
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 440
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->getMediaFormat(J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    goto :goto_2

    .line 447
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-nez v0, :cond_e

    .line 448
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "No valid tracks were found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    goto/16 :goto_0

    .line 366
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_3
        0xae -> :sswitch_6
        0x4dbb -> :sswitch_1
        0x6240 -> :sswitch_4
        0x6d80 -> :sswitch_5
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_7
        0x1c53bb6b -> :sswitch_2
    .end sparse-switch
.end method

.method floatElement(ID)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # D

    .prologue
    .line 557
    sparse-switch p1, :sswitch_data_0

    .line 565
    :goto_0
    return-void

    .line 559
    :sswitch_0
    double-to-long v0, p2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    goto :goto_0

    .line 562
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    double-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleRate:I

    goto :goto_0

    .line 557
    :sswitch_data_0
    .sparse-switch
        0xb5 -> :sswitch_1
        0x4489 -> :sswitch_0
    .end sparse-switch
.end method

.method getElementType(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 252
    sparse-switch p1, :sswitch_data_0

    .line 309
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 272
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 294
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 297
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 304
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 307
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1
        0x86 -> :sswitch_2
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_3
        0xa3 -> :sswitch_3
        0xae -> :sswitch_0
        0xb0 -> :sswitch_1
        0xb3 -> :sswitch_1
        0xb5 -> :sswitch_4
        0xb7 -> :sswitch_0
        0xba -> :sswitch_1
        0xbb -> :sswitch_0
        0xd7 -> :sswitch_1
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0xe7 -> :sswitch_1
        0xf1 -> :sswitch_1
        0xfb -> :sswitch_1
        0x4254 -> :sswitch_1
        0x4255 -> :sswitch_3
        0x4282 -> :sswitch_2
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_1
        0x4489 -> :sswitch_4
        0x47e1 -> :sswitch_1
        0x47e2 -> :sswitch_3
        0x47e7 -> :sswitch_0
        0x47e8 -> :sswitch_1
        0x4dbb -> :sswitch_0
        0x5031 -> :sswitch_1
        0x5032 -> :sswitch_1
        0x5034 -> :sswitch_0
        0x5035 -> :sswitch_0
        0x53ab -> :sswitch_3
        0x53ac -> :sswitch_1
        0x56aa -> :sswitch_1
        0x56bb -> :sswitch_1
        0x6240 -> :sswitch_0
        0x63a2 -> :sswitch_3
        0x6d80 -> :sswitch_0
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_1
        0x114d9b74 -> :sswitch_0
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_0
        0x18538067 -> :sswitch_0
        0x1a45dfa3 -> :sswitch_0
        0x1c53bb6b -> :sswitch_0
        0x1f43b675 -> :sswitch_0
    .end sparse-switch
.end method

.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 226
    return-void
.end method

.method integerElement(IJ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x1

    .line 458
    sparse-switch p1, :sswitch_data_0

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 461
    :sswitch_0
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EBMLReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :sswitch_1
    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x2

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 468
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocTypeReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :sswitch_2
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    goto :goto_0

    .line 477
    :sswitch_3
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    goto :goto_0

    .line 480
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->pixelWidth:I

    goto :goto_0

    .line 483
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->pixelHeight:I

    goto :goto_0

    .line 486
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    goto :goto_0

    .line 489
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->type:I

    goto :goto_0

    .line 492
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->defaultSampleDurationNs:I

    goto :goto_0

    .line 495
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-wide p2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecDelayNs:J

    goto :goto_0

    .line 498
    :sswitch_a
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-wide p2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->seekPreRollNs:J

    goto :goto_0

    .line 501
    :sswitch_b
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->channelCount:I

    goto/16 :goto_0

    .line 504
    :sswitch_c
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSeenReferenceBlock:Z

    goto/16 :goto_0

    .line 508
    :sswitch_d
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 509
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncodingOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :sswitch_e
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncodingScope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :sswitch_f
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentCompAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :sswitch_10
    const-wide/16 v0, 0x5

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :sswitch_11
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 533
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AESSettingsCipherMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :sswitch_12
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/util/LongArray;->add(J)V

    goto/16 :goto_0

    .line 540
    :sswitch_13
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer/util/LongArray;->add(J)V

    .line 545
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto/16 :goto_0

    .line 549
    :sswitch_14
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    goto/16 :goto_0

    .line 458
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_7
        0x9f -> :sswitch_b
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_12
        0xba -> :sswitch_5
        0xd7 -> :sswitch_6
        0xe7 -> :sswitch_14
        0xf1 -> :sswitch_13
        0xfb -> :sswitch_c
        0x4254 -> :sswitch_f
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_0
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_11
        0x5031 -> :sswitch_d
        0x5032 -> :sswitch_e
        0x53ac -> :sswitch_2
        0x56aa -> :sswitch_9
        0x56bb -> :sswitch_a
        0x23e383 -> :sswitch_8
        0x2ad7b1 -> :sswitch_3
    .end sparse-switch
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 4
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 240
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleRead:Z

    .line 241
    const/4 v0, 0x1

    .line 242
    .local v0, "continueReading":Z
    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleRead:Z

    if-nez v2, :cond_2

    .line 243
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer/extractor/webm/EbmlReader;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    .line 244
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, p2, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->maybeSeekForCues(Lcom/google/android/exoplayer/extractor/PositionHolder;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const/4 v1, 0x1

    .line 248
    :cond_1
    :goto_0
    return v1

    :cond_2
    if-nez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 230
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/webm/EbmlReader;->reset()V

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->reset()V

    .line 234
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->resetSample()V

    .line 235
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/webm/Sniffer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method

.method startMasterElement(IJJ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "contentPosition"    # J
    .param p4, "contentSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    .line 315
    sparse-switch p1, :sswitch_data_0

    .line 361
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 317
    :sswitch_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    .line 318
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Multiple Segment elements not supported"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_1
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    .line 321
    iput-wide p4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentSize:J

    goto :goto_0

    .line 324
    :sswitch_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    .line 325
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    goto :goto_0

    .line 328
    :sswitch_3
    new-instance v0, Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    .line 329
    new-instance v0, Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    goto :goto_0

    .line 332
    :sswitch_4
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_0

    .line 335
    :sswitch_5
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesState:I

    if-nez v0, :cond_0

    .line 337
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 339
    iput-boolean v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekForCues:Z

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    sget-object v1, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 344
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesState:I

    goto :goto_0

    .line 349
    :sswitch_6
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSeenReferenceBlock:Z

    goto :goto_0

    .line 355
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->hasContentEncryption:Z

    goto :goto_0

    .line 358
    :sswitch_8
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;-><init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    goto :goto_0

    .line 315
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_6
        0xae -> :sswitch_8
        0xbb -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5035 -> :sswitch_7
        0x6240 -> :sswitch_0
        0x18538067 -> :sswitch_1
        0x1c53bb6b -> :sswitch_3
        0x1f43b675 -> :sswitch_5
    .end sparse-switch
.end method

.method stringElement(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 570
    sparse-switch p1, :sswitch_data_0

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 573
    :sswitch_0
    const-string v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-object p2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecId:Ljava/lang/String;

    goto :goto_0

    .line 570
    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_1
        0x4282 -> :sswitch_0
    .end sparse-switch
.end method
