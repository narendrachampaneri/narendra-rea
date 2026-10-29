.class final Lcom/google/android/exoplayer/extractor/ts/H265Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "H265Reader.java"


# static fields
.field private static final BLA_N_LP:I = 0x12

.field private static final BLA_W_LP:I = 0x10

.field private static final BLA_W_RADL:I = 0x11

.field private static final CRA_NUT:I = 0x15

.field private static final IDR_N_LP:I = 0x14

.field private static final IDR_W_RADL:I = 0x13

.field private static final PPS_NUT:I = 0x22

.field private static final PREFIX_SEI_NUT:I = 0x27

.field private static final RASL_R:I = 0x9

.field private static final SPS_NUT:I = 0x21

.field private static final SUFFIX_SEI_NUT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "H265Reader"

.field private static final VPS_NUT:I = 0x20


# instance fields
.field private foundFirstSample:Z

.field private hasOutputFormat:Z

.field private isKeyframe:Z

.field private final pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private samplePosition:J

.field private sampleTimeUs:J

.field private final seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

.field private final seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J

.field private final vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;)V
    .locals 3
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p2, "seiReader"    # Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    .prologue
    const/16 v2, 0x80

    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 75
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 77
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 78
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 79
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x22

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 80
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x27

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 81
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 82
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 83
    return-void
.end method

.method private feedNalUnitTargetBuffersData([BII)V
    .locals 1
    .param p1, "dataArray"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 178
    return-void
.end method

.method private feedNalUnitTargetBuffersStart(I)V
    .locals 1
    .param p1, "nalUnitType"    # I

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 168
    return-void
.end method

.method private feedNalUnitTargetEnd(JI)V
    .locals 5
    .param p1, "pesTimeUs"    # J
    .param p3, "discardPadding"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 181
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 182
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 183
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 184
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 186
    .local v0, "unescapedLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 189
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 190
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V

    .line 192
    .end local v0    # "unescapedLength":I
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 194
    .restart local v0    # "unescapedLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 197
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 198
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V

    .line 200
    .end local v0    # "unescapedLength":I
    :cond_1
    return-void
.end method

.method public static isFirstSliceSegmentInPic([BI)Z
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/util/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v0

    .line 396
    .local v0, "nalUnitType":I
    const/16 v2, 0x9

    if-le v0, v2, :cond_0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    const/16 v2, 0x15

    if-gt v0, v2, :cond_1

    .line 397
    :cond_0
    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 399
    :cond_1
    return v1
.end method

.method private static isRandomAccessPoint(I)Z
    .locals 1
    .param p0, "nalUnitType"    # I

    .prologue
    .line 380
    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x15

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseMediaFormat(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)V
    .locals 28
    .param p1, "vps"    # Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;
    .param p2, "sps"    # Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;
    .param p3, "pps"    # Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .prologue
    .line 205
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v3

    move-object/from16 v0, p3

    iget v3, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v3

    new-array v0, v2, [B

    move-object/from16 v17, v0

    .line 206
    .local v17, "csd":[B
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v4, v5

    move-object/from16 v0, p3

    iget v5, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    .line 212
    new-instance v11, Lcom/google/android/exoplayer/util/ParsableBitArray;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-direct {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 213
    .local v11, "bitArray":Lcom/google/android/exoplayer/util/ParsableBitArray;
    const/16 v2, 0x2c

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 214
    const/4 v2, 0x3

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v21

    .line 215
    .local v21, "maxSubLayersMinus1":I
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 218
    const/16 v2, 0x58

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 219
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 220
    const/16 v26, 0x0

    .line 221
    .local v26, "toSkip":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 222
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 223
    add-int/lit8 v26, v26, 0x59

    .line 225
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 226
    add-int/lit8 v26, v26, 0x8

    .line 221
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 229
    :cond_2
    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 230
    if-lez v21, :cond_3

    .line 231
    rsub-int/lit8 v2, v21, 0x8

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 234
    :cond_3
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 235
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 236
    .local v12, "chromaFormatIdc":I
    const/4 v2, 0x3

    if-ne v12, v2, :cond_4

    .line 237
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 239
    :cond_4
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    .line 240
    .local v6, "picWidthInLumaSamples":I
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 241
    .local v7, "picHeightInLumaSamples":I
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 242
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    .line 243
    .local v14, "confWinLeftOffset":I
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 244
    .local v15, "confWinRightOffset":I
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    .line 245
    .local v16, "confWinTopOffset":I
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 247
    .local v13, "confWinBottomOffset":I
    const/4 v2, 0x1

    if-eq v12, v2, :cond_5

    const/4 v2, 0x2

    if-ne v12, v2, :cond_7

    :cond_5
    const/16 v25, 0x2

    .line 248
    .local v25, "subWidthC":I
    :goto_1
    const/4 v2, 0x1

    if-ne v12, v2, :cond_8

    const/16 v24, 0x2

    .line 249
    .local v24, "subHeightC":I
    :goto_2
    add-int v2, v14, v15

    mul-int v2, v2, v25

    sub-int/2addr v6, v2

    .line 250
    add-int v2, v16, v13

    mul-int v2, v2, v24

    sub-int/2addr v7, v2

    .line 252
    .end local v13    # "confWinBottomOffset":I
    .end local v14    # "confWinLeftOffset":I
    .end local v15    # "confWinRightOffset":I
    .end local v16    # "confWinTopOffset":I
    .end local v24    # "subHeightC":I
    .end local v25    # "subWidthC":I
    :cond_6
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 253
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 254
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 256
    .local v19, "log2MaxPicOrderCntLsbMinus4":I
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v21

    if-gt v0, v1, :cond_a

    .line 257
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 258
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 259
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 256
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 247
    .end local v19    # "log2MaxPicOrderCntLsbMinus4":I
    .restart local v13    # "confWinBottomOffset":I
    .restart local v14    # "confWinLeftOffset":I
    .restart local v15    # "confWinRightOffset":I
    .restart local v16    # "confWinTopOffset":I
    :cond_7
    const/16 v25, 0x1

    goto :goto_1

    .line 248
    .restart local v25    # "subWidthC":I
    :cond_8
    const/16 v24, 0x1

    goto :goto_2

    .end local v13    # "confWinBottomOffset":I
    .end local v14    # "confWinLeftOffset":I
    .end local v15    # "confWinRightOffset":I
    .end local v16    # "confWinTopOffset":I
    .end local v25    # "subWidthC":I
    .restart local v19    # "log2MaxPicOrderCntLsbMinus4":I
    :cond_9
    move/from16 v18, v21

    .line 256
    goto :goto_3

    .line 261
    :cond_a
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 262
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 263
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 264
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 265
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 266
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 268
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 269
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;)V

    .line 271
    :cond_b
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 272
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 274
    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 275
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 276
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 277
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 280
    :cond_c
    invoke-static {v11}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->skipShortTermRefPicSets(Lcom/google/android/exoplayer/util/ParsableBitArray;)V

    .line 281
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 283
    const/16 v18, 0x0

    :goto_4
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_d

    .line 284
    add-int/lit8 v20, v19, 0x4

    .line 286
    .local v20, "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v2, v20, 0x1

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 283
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 289
    .end local v20    # "ltRefPicPocLsbSpsLength":I
    :cond_d
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 290
    const/high16 v8, 0x3f800000    # 1.0f

    .line 291
    .local v8, "pixelWidthHeightRatio":F
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 292
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 293
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 294
    .local v10, "aspectRatioIdc":I
    const/16 v2, 0xff

    if-ne v10, v2, :cond_f

    .line 295
    const/16 v2, 0x10

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v23

    .line 296
    .local v23, "sarWidth":I
    const/16 v2, 0x10

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v22

    .line 297
    .local v22, "sarHeight":I
    if-eqz v23, :cond_e

    if-eqz v22, :cond_e

    .line 298
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v22

    int-to-float v3, v0

    div-float v8, v2, v3

    .line 308
    .end local v10    # "aspectRatioIdc":I
    .end local v22    # "sarHeight":I
    .end local v23    # "sarWidth":I
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v27, v0

    const-string v2, "video/hevc"

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;IJIIFLjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 311
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    .line 312
    return-void

    .line 300
    .restart local v10    # "aspectRatioIdc":I
    :cond_f
    sget-object v2, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v2, v2

    if-ge v10, v2, :cond_10

    .line 301
    sget-object v2, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v8, v2, v10

    goto :goto_5

    .line 303
    :cond_10
    const-string v2, "H265Reader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;)V
    .locals 8
    .param p1, "bitArray"    # Lcom/google/android/exoplayer/util/ParsableBitArray;

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 316
    const/4 v3, 0x0

    .local v3, "sizeId":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_5

    .line 317
    const/4 v2, 0x0

    .local v2, "matrixId":I
    :goto_1
    const/4 v4, 0x6

    if-ge v2, v4, :cond_4

    .line 318
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_1

    .line 320
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 317
    :cond_0
    if-ne v3, v5, :cond_3

    move v4, v5

    :goto_2
    add-int/2addr v2, v4

    goto :goto_1

    .line 322
    :cond_1
    const/16 v4, 0x40

    add-int/lit8 v7, v3, 0x4

    shl-int/lit8 v7, v7, 0x1

    shl-int v7, v6, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 323
    .local v0, "coefNum":I
    if-le v3, v6, :cond_2

    .line 325
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 327
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_0

    .line 328
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "coefNum":I
    .end local v1    # "i":I
    :cond_3
    move v4, v6

    .line 317
    goto :goto_2

    .line 316
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 333
    .end local v2    # "matrixId":I
    :cond_5
    return-void
.end method

.method private static skipShortTermRefPicSets(Lcom/google/android/exoplayer/util/ParsableBitArray;)V
    .locals 10
    .param p0, "bitArray"    # Lcom/google/android/exoplayer/util/ParsableBitArray;

    .prologue
    const/4 v9, 0x1

    .line 340
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 341
    .local v5, "numShortTermRefPicSets":I
    const/4 v1, 0x0

    .line 342
    .local v1, "interRefPicSetPredictionFlag":Z
    const/4 v3, 0x0

    .line 343
    .local v3, "numNegativePics":I
    const/4 v4, 0x0

    .line 347
    .local v4, "numPositivePics":I
    const/4 v6, 0x0

    .line 348
    .local v6, "previousNumDeltaPocs":I
    const/4 v7, 0x0

    .local v7, "stRpsIdx":I
    :goto_0
    if-ge v7, v5, :cond_5

    .line 349
    if-eqz v7, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 352
    :cond_0
    if-eqz v1, :cond_2

    .line 353
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 354
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 355
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-gt v2, v6, :cond_4

    .line 356
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 357
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 355
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 361
    .end local v2    # "j":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 362
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 363
    add-int v6, v3, v4

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v3, :cond_3

    .line 365
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 366
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 368
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_4

    .line 369
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 370
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 348
    .end local v0    # "i":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 374
    :cond_5
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V
    .locals 20
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "pesTimeUs"    # J
    .param p4, "startOfPacket"    # Z

    .prologue
    .line 100
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-lez v5, :cond_8

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v16

    .line 102
    .local v16, "offset":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v13

    .line 103
    .local v13, "limit":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 106
    .local v4, "dataArray":[B
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 107
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 110
    :goto_0
    move/from16 v0, v16

    if-ge v0, v13, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixFlags:[Z

    move/from16 v0, v16

    invoke-static {v4, v0, v13, v5}, Lcom/google/android/exoplayer/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v15

    .line 112
    .local v15, "nextNalUnitOffset":I
    if-ge v15, v13, :cond_7

    .line 117
    sub-int v12, v15, v16

    .line 118
    .local v12, "lengthToNalUnit":I
    if-lez v12, :cond_1

    .line 119
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v1, v15}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->feedNalUnitTargetBuffersData([BII)V

    .line 122
    :cond_1
    invoke-static {v4, v15}, Lcom/google/android/exoplayer/util/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v14

    .line 123
    .local v14, "nalUnitType":I
    sub-int v10, v13, v15

    .line 124
    .local v10, "bytesWrittenPastNalUnit":I
    invoke-static {v4, v15}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->isFirstSliceSegmentInPic([BI)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 125
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->foundFirstSample:Z

    if-eqz v5, :cond_3

    .line 126
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->isKeyframe:Z

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 128
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->parseMediaFormat(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)V

    .line 130
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->isKeyframe:Z

    if-eqz v5, :cond_5

    const/4 v8, 0x1

    .line 131
    .local v8, "flags":I
    :goto_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->samplePosition:J

    move-wide/from16 v18, v0

    sub-long v6, v6, v18

    long-to-int v5, v6

    sub-int v9, v5, v10

    .line 132
    .local v9, "size":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sampleTimeUs:J

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 134
    .end local v8    # "flags":I
    .end local v9    # "size":I
    :cond_3
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->foundFirstSample:Z

    .line 135
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v0, v10

    move-wide/from16 v18, v0

    sub-long v6, v6, v18

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->samplePosition:J

    .line 136
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sampleTimeUs:J

    .line 137
    invoke-static {v14}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->isRandomAccessPoint(I)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->isKeyframe:Z

    .line 142
    :cond_4
    if-gez v12, :cond_6

    neg-int v5, v12

    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v5}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->feedNalUnitTargetEnd(JI)V

    .line 144
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->feedNalUnitTargetBuffersStart(I)V

    .line 146
    add-int/lit8 v16, v15, 0x3

    .line 147
    goto/16 :goto_0

    .line 130
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 142
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 148
    .end local v10    # "bytesWrittenPastNalUnit":I
    .end local v12    # "lengthToNalUnit":I
    .end local v14    # "nalUnitType":I
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v1, v13}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->feedNalUnitTargetBuffersData([BII)V

    .line 149
    move/from16 v16, v13

    goto/16 :goto_0

    .line 153
    .end local v4    # "dataArray":[B
    .end local v13    # "limit":I
    .end local v15    # "nextNalUnitOffset":I
    .end local v16    # "offset":I
    :cond_8
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->seek()V

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->foundFirstSample:Z

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 96
    return-void
.end method
