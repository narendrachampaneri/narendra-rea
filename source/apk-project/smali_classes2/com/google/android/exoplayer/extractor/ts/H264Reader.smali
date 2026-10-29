.class final Lcom/google/android/exoplayer/extractor/ts/H264Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;
    }
.end annotation


# static fields
.field private static final FRAME_TYPE_ALL_I:I = 0x7

.field private static final FRAME_TYPE_I:I = 0x2

.field private static final NAL_UNIT_TYPE_AUD:I = 0x9

.field private static final NAL_UNIT_TYPE_IDR:I = 0x5

.field private static final NAL_UNIT_TYPE_IFR:I = 0x1

.field private static final NAL_UNIT_TYPE_PPS:I = 0x8

.field private static final NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "H264Reader"


# instance fields
.field private foundFirstSample:Z

.field private hasOutputFormat:Z

.field private final ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

.field private isKeyframe:Z

.field private final pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private final sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

.field private final seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;Z)V
    .locals 3
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p2, "seiReader"    # Lcom/google/android/exoplayer/extractor/ts/SeiReader;
    .param p3, "idrKeyframesOnly"    # Z

    .prologue
    const/16 v2, 0x80

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 72
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 74
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 77
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 78
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 79
    return-void

    .line 74
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;-><init>()V

    goto :goto_0
.end method

.method private feedNalUnitTargetBuffersData([BII)V
    .locals 1
    .param p1, "dataArray"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->appendToNalUnit([BII)V

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 186
    return-void
.end method

.method private feedNalUnitTargetBuffersStart(I)V
    .locals 1
    .param p1, "nalUnitType"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->startNalUnit(I)V

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 175
    return-void
.end method

.method private feedNalUnitTargetEnd(JI)V
    .locals 5
    .param p1, "pesTimeUs"    # J
    .param p3, "discardPadding"    # I

    .prologue
    .line 189
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 190
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 191
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 193
    .local v0, "unescapedLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 194
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 195
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V

    .line 197
    .end local v0    # "unescapedLength":I
    :cond_0
    return-void
.end method

.method private parseMediaFormat(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)V
    .locals 42
    .param p1, "sps"    # Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;
    .param p2, "pps"    # Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .prologue
    .line 200
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    new-array v0, v2, [B

    move-object/from16 v37, v0

    .line 201
    .local v37, "spsData":[B
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    new-array v0, v2, [B

    move-object/from16 v31, v0

    .line 202
    .local v31, "ppsData":[B
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v37

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v9, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v0, v37

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v0, v31

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    .line 210
    new-instance v12, Lcom/google/android/exoplayer/util/ParsableBitArray;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-direct {v12, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 211
    .local v12, "bitArray":Lcom/google/android/exoplayer/util/ParsableBitArray;
    const/16 v2, 0x20

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 212
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v32

    .line 213
    .local v32, "profileIdc":I
    const/16 v2, 0x10

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 214
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 216
    const/4 v13, 0x1

    .line 217
    .local v13, "chromaFormatIdc":I
    const/16 v2, 0x64

    move/from16 v0, v32

    if-eq v0, v2, :cond_0

    const/16 v2, 0x6e

    move/from16 v0, v32

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7a

    move/from16 v0, v32

    if-eq v0, v2, :cond_0

    const/16 v2, 0xf4

    move/from16 v0, v32

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2c

    move/from16 v0, v32

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    move/from16 v0, v32

    if-eq v0, v2, :cond_0

    const/16 v2, 0x56

    move/from16 v0, v32

    if-eq v0, v2, :cond_0

    const/16 v2, 0x76

    move/from16 v0, v32

    if-eq v0, v2, :cond_0

    const/16 v2, 0x80

    move/from16 v0, v32

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8a

    move/from16 v0, v32

    if-ne v0, v2, :cond_5

    .line 220
    :cond_0
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 221
    const/4 v2, 0x3

    if-ne v13, v2, :cond_1

    .line 222
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 224
    :cond_1
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 225
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 226
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 227
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v36

    .line 228
    .local v36, "seqScalingMatrixPresentFlag":Z
    if-eqz v36, :cond_5

    .line 229
    const/4 v2, 0x3

    if-eq v13, v2, :cond_3

    const/16 v24, 0x8

    .line 230
    .local v24, "limit":I
    :goto_0
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 231
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v35

    .line 232
    .local v35, "seqScalingListPresentFlag":Z
    if-eqz v35, :cond_2

    .line 233
    const/4 v2, 0x6

    move/from16 v0, v23

    if-ge v0, v2, :cond_4

    const/16 v2, 0x10

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 230
    :cond_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 229
    .end local v23    # "i":I
    .end local v24    # "limit":I
    .end local v35    # "seqScalingListPresentFlag":Z
    :cond_3
    const/16 v24, 0xc

    goto :goto_0

    .line 233
    .restart local v23    # "i":I
    .restart local v24    # "limit":I
    .restart local v35    # "seqScalingListPresentFlag":Z
    :cond_4
    const/16 v2, 0x40

    goto :goto_2

    .line 239
    .end local v23    # "i":I
    .end local v24    # "limit":I
    .end local v35    # "seqScalingListPresentFlag":Z
    .end local v36    # "seqScalingMatrixPresentFlag":Z
    :cond_5
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 240
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v28, v0

    .line 241
    .local v28, "picOrderCntType":J
    const-wide/16 v2, 0x0

    cmp-long v2, v28, v2

    if-nez v2, :cond_a

    .line 242
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 252
    :cond_6
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 253
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 255
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v30, v2, 0x1

    .line 256
    .local v30, "picWidthInMbs":I
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v25, v2, 0x1

    .line 257
    .local v25, "picHeightInMapUnits":I
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v22

    .line 258
    .local v22, "frameMbsOnlyFlag":Z
    if-eqz v22, :cond_b

    const/4 v2, 0x1

    :goto_3
    rsub-int/lit8 v2, v2, 0x2

    mul-int v21, v2, v25

    .line 259
    .local v21, "frameHeightInMbs":I
    if-nez v22, :cond_7

    .line 260
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 263
    :cond_7
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 264
    mul-int/lit8 v6, v30, 0x10

    .line 265
    .local v6, "frameWidth":I
    mul-int/lit8 v7, v21, 0x10

    .line 266
    .local v7, "frameHeight":I
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v20

    .line 267
    .local v20, "frameCroppingFlag":Z
    if-eqz v20, :cond_8

    .line 268
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 269
    .local v17, "frameCropLeftOffset":I
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 270
    .local v18, "frameCropRightOffset":I
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 271
    .local v19, "frameCropTopOffset":I
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    .line 273
    .local v16, "frameCropBottomOffset":I
    if-nez v13, :cond_d

    .line 274
    const/4 v14, 0x1

    .line 275
    .local v14, "cropUnitX":I
    if-eqz v22, :cond_c

    const/4 v2, 0x1

    :goto_4
    rsub-int/lit8 v15, v2, 0x2

    .line 282
    .local v15, "cropUnitY":I
    :goto_5
    add-int v2, v17, v18

    mul-int/2addr v2, v14

    sub-int/2addr v6, v2

    .line 283
    add-int v2, v19, v16

    mul-int/2addr v2, v15

    sub-int/2addr v7, v2

    .line 286
    .end local v14    # "cropUnitX":I
    .end local v15    # "cropUnitY":I
    .end local v16    # "frameCropBottomOffset":I
    .end local v17    # "frameCropLeftOffset":I
    .end local v18    # "frameCropRightOffset":I
    .end local v19    # "frameCropTopOffset":I
    :cond_8
    const/high16 v8, 0x3f800000    # 1.0f

    .line 287
    .local v8, "pixelWidthHeightRatio":F
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v40

    .line 288
    .local v40, "vuiParametersPresentFlag":Z
    if-eqz v40, :cond_9

    .line 289
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v11

    .line 290
    .local v11, "aspectRatioInfoPresentFlag":Z
    if-eqz v11, :cond_9

    .line 291
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 292
    .local v10, "aspectRatioIdc":I
    const/16 v2, 0xff

    if-ne v10, v2, :cond_11

    .line 293
    const/16 v2, 0x10

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v34

    .line 294
    .local v34, "sarWidth":I
    const/16 v2, 0x10

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v33

    .line 295
    .local v33, "sarHeight":I
    if-eqz v34, :cond_9

    if-eqz v33, :cond_9

    .line 296
    move/from16 v0, v34

    int-to-float v2, v0

    move/from16 v0, v33

    int-to-float v3, v0

    div-float v8, v2, v3

    .line 306
    .end local v10    # "aspectRatioIdc":I
    .end local v11    # "aspectRatioInfoPresentFlag":Z
    .end local v33    # "sarHeight":I
    .end local v34    # "sarWidth":I
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v41, v0

    const-string v2, "video/avc"

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    invoke-static/range {v2 .. v9}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;IJIIFLjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 308
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 309
    return-void

    .line 243
    .end local v6    # "frameWidth":I
    .end local v7    # "frameHeight":I
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v20    # "frameCroppingFlag":Z
    .end local v21    # "frameHeightInMbs":I
    .end local v22    # "frameMbsOnlyFlag":Z
    .end local v25    # "picHeightInMapUnits":I
    .end local v30    # "picWidthInMbs":I
    .end local v40    # "vuiParametersPresentFlag":Z
    :cond_a
    const-wide/16 v2, 0x1

    cmp-long v2, v28, v2

    if-nez v2, :cond_6

    .line 244
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 245
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 246
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 247
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v26, v0

    .line 248
    .local v26, "numRefFramesInPicOrderCntCycle":J
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_7
    move/from16 v0, v23

    int-to-long v2, v0

    cmp-long v2, v2, v26

    if-gez v2, :cond_6

    .line 249
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 248
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 258
    .end local v23    # "i":I
    .end local v26    # "numRefFramesInPicOrderCntCycle":J
    .restart local v22    # "frameMbsOnlyFlag":Z
    .restart local v25    # "picHeightInMapUnits":I
    .restart local v30    # "picWidthInMbs":I
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 275
    .restart local v6    # "frameWidth":I
    .restart local v7    # "frameHeight":I
    .restart local v14    # "cropUnitX":I
    .restart local v16    # "frameCropBottomOffset":I
    .restart local v17    # "frameCropLeftOffset":I
    .restart local v18    # "frameCropRightOffset":I
    .restart local v19    # "frameCropTopOffset":I
    .restart local v20    # "frameCroppingFlag":Z
    .restart local v21    # "frameHeightInMbs":I
    :cond_c
    const/4 v2, 0x0

    goto :goto_4

    .line 277
    .end local v14    # "cropUnitX":I
    :cond_d
    const/4 v2, 0x3

    if-ne v13, v2, :cond_e

    const/16 v39, 0x1

    .line 278
    .local v39, "subWidthC":I
    :goto_8
    const/4 v2, 0x1

    if-ne v13, v2, :cond_f

    const/16 v38, 0x2

    .line 279
    .local v38, "subHeightC":I
    :goto_9
    move/from16 v14, v39

    .line 280
    .restart local v14    # "cropUnitX":I
    if-eqz v22, :cond_10

    const/4 v2, 0x1

    :goto_a
    rsub-int/lit8 v2, v2, 0x2

    mul-int v15, v38, v2

    .restart local v15    # "cropUnitY":I
    goto/16 :goto_5

    .line 277
    .end local v14    # "cropUnitX":I
    .end local v15    # "cropUnitY":I
    .end local v38    # "subHeightC":I
    .end local v39    # "subWidthC":I
    :cond_e
    const/16 v39, 0x2

    goto :goto_8

    .line 278
    .restart local v39    # "subWidthC":I
    :cond_f
    const/16 v38, 0x1

    goto :goto_9

    .line 280
    .restart local v14    # "cropUnitX":I
    .restart local v38    # "subHeightC":I
    :cond_10
    const/4 v2, 0x0

    goto :goto_a

    .line 298
    .end local v14    # "cropUnitX":I
    .end local v16    # "frameCropBottomOffset":I
    .end local v17    # "frameCropLeftOffset":I
    .end local v18    # "frameCropRightOffset":I
    .end local v19    # "frameCropTopOffset":I
    .end local v38    # "subHeightC":I
    .end local v39    # "subWidthC":I
    .restart local v8    # "pixelWidthHeightRatio":F
    .restart local v10    # "aspectRatioIdc":I
    .restart local v11    # "aspectRatioInfoPresentFlag":Z
    .restart local v40    # "vuiParametersPresentFlag":Z
    :cond_11
    sget-object v2, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v2, v2

    if-ge v10, v2, :cond_12

    .line 299
    sget-object v2, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v8, v2, v10

    goto :goto_6

    .line 301
    :cond_12
    const-string v2, "H264Reader"

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

    goto/16 :goto_6
.end method

.method private skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V
    .locals 5
    .param p1, "bitArray"    # Lcom/google/android/exoplayer/util/ParsableBitArray;
    .param p2, "size"    # I

    .prologue
    .line 312
    const/16 v2, 0x8

    .line 313
    .local v2, "lastScale":I
    const/16 v3, 0x8

    .line 314
    .local v3, "nextScale":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 315
    if-eqz v3, :cond_0

    .line 316
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    .line 317
    .local v0, "deltaScale":I
    add-int v4, v2, v0

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v3, v4, 0x100

    .line 319
    .end local v0    # "deltaScale":I
    :cond_0
    if-nez v3, :cond_1

    .line 314
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 319
    goto :goto_1

    .line 321
    :cond_2
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V
    .locals 20
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "pesTimeUs"    # J
    .param p4, "startOfPacket"    # Z

    .prologue
    .line 97
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-lez v5, :cond_a

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v16

    .line 99
    .local v16, "offset":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v13

    .line 100
    .local v13, "limit":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 103
    .local v4, "dataArray":[B
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 104
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 107
    :goto_0
    move/from16 v0, v16

    if-ge v0, v13, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    move/from16 v0, v16

    invoke-static {v4, v0, v13, v5}, Lcom/google/android/exoplayer/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v15

    .line 109
    .local v15, "nextNalUnitOffset":I
    if-ge v15, v13, :cond_9

    .line 114
    sub-int v12, v15, v16

    .line 115
    .local v12, "lengthToNalUnit":I
    if-lez v12, :cond_1

    .line 116
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v1, v15}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->feedNalUnitTargetBuffersData([BII)V

    .line 119
    :cond_1
    invoke-static {v4, v15}, Lcom/google/android/exoplayer/util/NalUnitUtil;->getNalUnitType([BI)I

    move-result v14

    .line 120
    .local v14, "nalUnitType":I
    sub-int v10, v13, v15

    .line 121
    .local v10, "bytesWrittenPastNalUnit":I
    sparse-switch v14, :sswitch_data_0

    .line 148
    :goto_1
    if-gez v12, :cond_8

    neg-int v5, v12

    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v5}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->feedNalUnitTargetEnd(JI)V

    .line 150
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->feedNalUnitTargetBuffersStart(I)V

    .line 152
    add-int/lit8 v16, v15, 0x3

    .line 153
    goto :goto_0

    .line 123
    :sswitch_0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    goto :goto_1

    .line 126
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->foundFirstSample:Z

    if-eqz v5, :cond_5

    .line 127
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 128
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->getSliceType()I

    move-result v17

    .line 129
    .local v17, "sliceType":I
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    const/4 v5, 0x2

    move/from16 v0, v17

    if-eq v0, v5, :cond_2

    const/4 v5, 0x7

    move/from16 v0, v17

    if-ne v0, v5, :cond_6

    :cond_2
    const/4 v5, 0x1

    :goto_3
    or-int/2addr v5, v6

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    .line 130
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->reset()V

    .line 132
    .end local v17    # "sliceType":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 133
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->parseMediaFormat(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)V

    .line 135
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    if-eqz v5, :cond_7

    const/4 v8, 0x1

    .line 136
    .local v8, "flags":I
    :goto_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->samplePosition:J

    move-wide/from16 v18, v0

    sub-long v6, v6, v18

    long-to-int v5, v6

    sub-int v9, v5, v10

    .line 137
    .local v9, "size":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleTimeUs:J

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 139
    .end local v8    # "flags":I
    .end local v9    # "size":I
    :cond_5
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->foundFirstSample:Z

    .line 140
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v0, v10

    move-wide/from16 v18, v0

    sub-long v6, v6, v18

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->samplePosition:J

    .line 141
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleTimeUs:J

    .line 142
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    goto/16 :goto_1

    .line 129
    .restart local v17    # "sliceType":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 135
    .end local v17    # "sliceType":I
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 148
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 154
    .end local v10    # "bytesWrittenPastNalUnit":I
    .end local v12    # "lengthToNalUnit":I
    .end local v14    # "nalUnitType":I
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v1, v13}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->feedNalUnitTargetBuffersData([BII)V

    .line 155
    move/from16 v16, v13

    goto/16 :goto_0

    .line 159
    .end local v4    # "dataArray":[B
    .end local v13    # "limit":I
    .end local v15    # "nextNalUnitOffset":I
    .end local v16    # "offset":I
    :cond_a
    return-void

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->seek()V

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->reset()V

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->foundFirstSample:Z

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 93
    return-void
.end method
