.class final Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;
.super Ljava/lang/Object;
.source "WebmExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackFormat"
.end annotation


# instance fields
.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public defaultSampleDurationNs:I

.field public encryptionKeyId:[B

.field public hasContentEncryption:Z

.field public nalUnitLengthFieldLength:I

.field public number:I

.field public pixelHeight:I

.field public pixelWidth:I

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    .line 1044
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->type:I

    .line 1045
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->defaultSampleDurationNs:I

    .line 1052
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->pixelWidth:I

    .line 1053
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->pixelHeight:I

    .line 1054
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->nalUnitLengthFieldLength:I

    .line 1057
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->channelCount:I

    .line 1058
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleRate:I

    .line 1059
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecDelayNs:J

    .line 1060
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->seekPreRollNs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;

    .prologue
    .line 1039
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;-><init>()V

    return-void
.end method

.method private static parseAvcCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 9
    .param p0, "buffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1146
    const/4 v7, 0x4

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1147
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x3

    add-int/lit8 v4, v7, 0x1

    .line 1148
    .local v4, "nalUnitLengthFieldLength":I
    const/4 v7, 0x3

    if-eq v4, v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 1149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v6, v7, 0x1f

    .line 1151
    .local v6, "numSequenceParameterSets":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 1152
    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1148
    .end local v1    # "i":I
    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v6    # "numSequenceParameterSets":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1154
    .restart local v1    # "i":I
    .restart local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v6    # "numSequenceParameterSets":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 1155
    .local v5, "numPictureParameterSets":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_2

    .line 1156
    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1158
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 1159
    .end local v1    # "i":I
    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v3    # "j":I
    .end local v4    # "nalUnitLengthFieldLength":I
    .end local v5    # "numPictureParameterSets":I
    .end local v6    # "numSequenceParameterSets":I
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v7, Lcom/google/android/exoplayer/ParserException;

    const-string v8, "Error parsing AVC codec private"

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static parseHevcCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 15
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1174
    const/16 v12, 0x15

    :try_start_0
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1175
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    and-int/lit8 v8, v12, 0x3

    .line 1178
    .local v8, "lengthSizeMinusOne":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 1179
    .local v10, "numberOfArrays":I
    const/4 v2, 0x0

    .line 1180
    .local v2, "csdLength":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 1181
    .local v3, "csdStartPosition":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v10, :cond_1

    .line 1182
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1183
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 1184
    .local v11, "numberOfNalUnits":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v11, :cond_0

    .line 1185
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 1186
    .local v9, "nalUnitLength":I
    add-int/lit8 v12, v9, 0x4

    add-int/2addr v2, v12

    .line 1187
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1184
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1181
    .end local v9    # "nalUnitLength":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1192
    .end local v7    # "j":I
    .end local v11    # "numberOfNalUnits":I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1193
    new-array v0, v2, [B

    .line 1194
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 1195
    .local v1, "bufferPosition":I
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v10, :cond_3

    .line 1196
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1197
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 1198
    .restart local v11    # "numberOfNalUnits":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_3
    if-ge v7, v11, :cond_2

    .line 1199
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 1200
    .restart local v9    # "nalUnitLength":I
    sget-object v12, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    const/4 v13, 0x0

    sget-object v14, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v14, v14

    invoke-static {v12, v13, v0, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1202
    sget-object v12, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v12, v12

    add-int/2addr v1, v12

    .line 1203
    iget-object v12, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v13

    invoke-static {v12, v13, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1205
    add-int/2addr v1, v9

    .line 1206
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1198
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1195
    .end local v9    # "nalUnitLength":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1210
    .end local v7    # "j":I
    .end local v11    # "numberOfNalUnits":I
    :cond_3
    if-nez v2, :cond_4

    const/4 v6, 0x0

    .line 1211
    .local v6, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_4
    add-int/lit8 v12, v8, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    return-object v12

    .line 1210
    .end local v6    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_4

    .line 1212
    .end local v0    # "buffer":[B
    .end local v1    # "bufferPosition":I
    .end local v2    # "csdLength":I
    .end local v3    # "csdStartPosition":I
    .end local v5    # "i":I
    .end local v8    # "lengthSizeMinusOne":I
    .end local v10    # "numberOfArrays":I
    :catch_0
    move-exception v4

    .line 1213
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v12, Lcom/google/android/exoplayer/ParserException;

    const-string v13, "Error parsing HEVC codec private"

    invoke-direct {v12, v13}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .locals 11
    .param p0, "codecPrivate"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    .line 1226
    const/4 v8, 0x0

    :try_start_0
    aget-byte v8, p0, v8

    if-eq v8, v10, :cond_0

    .line 1227
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1229
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    const/4 v2, 0x1

    .line 1230
    .local v2, "offset":I
    const/4 v6, 0x0

    .local v6, "vorbisInfoLength":I
    move v3, v2

    .line 1231
    .end local v2    # "offset":I
    .local v3, "offset":I
    :goto_0
    :try_start_1
    aget-byte v8, p0, v3

    if-ne v8, v9, :cond_1

    .line 1232
    add-int/lit16 v6, v6, 0xff

    .line 1233
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1235
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v8, p0, v3

    add-int/2addr v6, v8

    .line 1237
    const/4 v7, 0x0

    .local v7, "vorbisSkipLength":I
    move v3, v2

    .line 1238
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :goto_1
    aget-byte v8, p0, v3

    if-ne v8, v9, :cond_2

    .line 1239
    add-int/lit16 v7, v7, 0xff

    .line 1240
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_1

    .line 1242
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v8, p0, v3

    add-int/2addr v7, v8

    .line 1244
    aget-byte v8, p0, v2

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    .line 1245
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1247
    :cond_3
    new-array v5, v6, [B

    .line 1248
    .local v5, "vorbisInfo":[B
    const/4 v8, 0x0

    invoke-static {p0, v2, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1249
    add-int/2addr v2, v6

    .line 1250
    aget-byte v8, p0, v2

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    .line 1251
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1253
    :cond_4
    add-int/2addr v2, v7

    .line 1254
    aget-byte v8, p0, v2

    const/4 v9, 0x5

    if-eq v8, v9, :cond_5

    .line 1255
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1257
    :cond_5
    array-length v8, p0

    sub-int/2addr v8, v2

    new-array v4, v8, [B

    .line 1258
    .local v4, "vorbisBooks":[B
    const/4 v8, 0x0

    array-length v9, p0

    sub-int/2addr v9, v2

    invoke-static {p0, v2, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1259
    new-instance v1, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1260
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1262
    return-object v1
.end method


# virtual methods
.method public getMediaFormat(J)Lcom/google/android/exoplayer/MediaFormat;
    .locals 11
    .param p1, "durationUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x40

    const/4 v3, 0x3

    .line 1067
    const/4 v6, 0x0

    .line 1068
    .local v6, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v1, -0x1

    .line 1069
    .local v1, "maxInputSize":I
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecId:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1122
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    const-string v3, "Unrecognized codec identifier."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1069
    :sswitch_0
    const-string v5, "V_VP8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v5, "V_VP9"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v5, "V_MPEG4/ISO/SP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v5, "V_MPEG4/ISO/ASP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_4
    const-string v5, "V_MPEG4/ISO/AP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v5, "V_MPEG4/ISO/AVC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v5, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v5, "A_VORBIS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string v5, "A_OPUS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_9
    const-string v5, "A_AAC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_a
    const-string v5, "A_MPEG/L3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_b
    const-string v5, "A_AC3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_0

    .line 1071
    :pswitch_0
    const-string v0, "video/x-vnd.on2.vp8"

    .line 1125
    .local v0, "mimeType":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1126
    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->channelCount:I

    iget v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleRate:I

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    .line 1129
    :goto_2
    return-object v2

    .line 1074
    .end local v0    # "mimeType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "video/x-vnd.on2.vp9"

    .line 1075
    .restart local v0    # "mimeType":Ljava/lang/String;
    goto :goto_1

    .line 1079
    .end local v0    # "mimeType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "video/mp4v-es"

    .line 1080
    .restart local v0    # "mimeType":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    if-nez v2, :cond_1

    const/4 v6, 0x0

    .line 1082
    :goto_3
    goto :goto_1

    .line 1080
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_3

    .line 1084
    .end local v0    # "mimeType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "video/avc"

    .line 1085
    .restart local v0    # "mimeType":Ljava/lang/String;
    new-instance v2, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->parseAvcCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v7

    .line 1087
    .local v7, "h264Data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v6    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    check-cast v6, Ljava/util/List;

    .line 1088
    .restart local v6    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->nalUnitLengthFieldLength:I

    goto :goto_1

    .line 1091
    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v7    # "h264Data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    :pswitch_4
    const-string v0, "video/hevc"

    .line 1092
    .restart local v0    # "mimeType":Ljava/lang/String;
    new-instance v2, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->parseHevcCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v8

    .line 1094
    .local v8, "hevcData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    iget-object v6, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v6    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    check-cast v6, Ljava/util/List;

    .line 1095
    .restart local v6    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v2, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->nalUnitLengthFieldLength:I

    goto :goto_1

    .line 1098
    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v8    # "hevcData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    :pswitch_5
    const-string v0, "audio/vorbis"

    .line 1099
    .restart local v0    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x2000

    .line 1100
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v6

    .line 1101
    goto :goto_1

    .line 1103
    .end local v0    # "mimeType":Ljava/lang/String;
    :pswitch_6
    const-string v0, "audio/opus"

    .line 1104
    .restart local v0    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x1680

    .line 1105
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1106
    .restart local v6    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1107
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecDelayNs:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->seekPreRollNs:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1111
    .end local v0    # "mimeType":Ljava/lang/String;
    :pswitch_7
    const-string v0, "audio/mp4a-latm"

    .line 1112
    .restart local v0    # "mimeType":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1113
    goto/16 :goto_1

    .line 1115
    .end local v0    # "mimeType":Ljava/lang/String;
    :pswitch_8
    const/16 v1, 0x1000

    .line 1116
    const-string v0, "audio/mpeg"

    .line 1117
    .restart local v0    # "mimeType":Ljava/lang/String;
    goto/16 :goto_1

    .line 1119
    .end local v0    # "mimeType":Ljava/lang/String;
    :pswitch_9
    const-string v0, "audio/ac3"

    .line 1120
    .restart local v0    # "mimeType":Ljava/lang/String;
    goto/16 :goto_1

    .line 1128
    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1129
    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->pixelWidth:I

    iget v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->pixelHeight:I

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    goto/16 :goto_2

    .line 1132
    :cond_3
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    const-string v3, "Unexpected MIME type."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1069
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_4
        -0x7ce7f3b0 -> :sswitch_2
        -0x672350af -> :sswitch_7
        -0x585f4fcd -> :sswitch_a
        -0x2016c535 -> :sswitch_3
        -0x2016c4e5 -> :sswitch_5
        0x3c02325 -> :sswitch_9
        0x3c02353 -> :sswitch_b
        0x4e86155 -> :sswitch_0
        0x4e86156 -> :sswitch_1
        0x32fdf009 -> :sswitch_6
        0x744ad97d -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
