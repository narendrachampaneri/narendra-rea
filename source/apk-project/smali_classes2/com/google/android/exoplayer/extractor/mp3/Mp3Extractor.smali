.class public final Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;
    }
.end annotation


# static fields
.field private static final HEADER_MASK:I = -0x1f400

.field private static final ID3_TAG:I

.field private static final INFO_HEADER:I

.field private static final MAX_SNIFF_BYTES:I = 0x1000

.field private static final MAX_SYNC_BYTES:I = 0x20000

.field private static final VBRI_HEADER:I

.field private static final XING_HEADER:I


# instance fields
.field private basisTimeUs:J

.field private extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

.field private sampleBytesRemaining:I

.field private samplesRead:I

.field private final scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

.field private final synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

.field private synchronizedHeaderData:I

.field private trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "ID3"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->ID3_TAG:I

    .line 47
    const-string v0, "Xing"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->XING_HEADER:I

    .line 48
    const-string v0, "Info"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->INFO_HEADER:I

    .line 49
    const-string v0, "VBRI"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->VBRI_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    const/16 v1, 0x3000

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    .line 69
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 70
    new-instance v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    .line 71
    return-void
.end method

.method private static getPosition(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;)J
    .locals 4
    .param p0, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p1, "bufferingInput"    # Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    .prologue
    .line 405
    invoke-interface {p0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->getAvailableByteCount()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private maybeResynchronize(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    .locals 7
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const v6, -0x1f400

    const/4 v5, 0x0

    .line 193
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->mark()V

    .line 194
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v4, 0x4

    invoke-virtual {v2, p1, v3, v5, v4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readAllowingEndOfInput(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    const-wide/16 v2, -0x1

    .line 211
    :goto_0
    return-wide v2

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->returnToMark()V

    .line 199
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 200
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 201
    .local v1, "sampleHeaderData":I
    and-int v2, v1, v6

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    and-int/2addr v3, v6

    if-ne v2, v3, :cond_1

    .line 202
    invoke-static {v1}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->getFrameSize(I)I

    move-result v0

    .line 203
    .local v0, "frameSize":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->populateHeader(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z

    .line 205
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 209
    .end local v0    # "frameSize":I
    :cond_1
    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 210
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->skip(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 211
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizeCatchingEndOfInput(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v2

    goto :goto_0
.end method

.method private parseSeekerFrame(Lcom/google/android/exoplayer/extractor/ExtractorInput;JJ)Z
    .locals 10
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "headerPosition"    # J
    .param p4, "inputLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->mark()V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    .line 364
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v2, v2, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    invoke-virtual {v0, p1, v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->getParsableByteArray(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-result-object v1

    .line 369
    .local v1, "frame":Lcom/google/android/exoplayer/util/ParsableByteArray;
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->version:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v8, :cond_2

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->channels:I

    if-eq v0, v8, :cond_1

    .line 372
    const/16 v7, 0x20

    .line 384
    .local v7, "xingBase":I
    :goto_0
    add-int/lit8 v0, v7, 0x4

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 385
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 386
    .local v6, "headerData":I
    sget v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->XING_HEADER:I

    if-eq v6, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->INFO_HEADER:I

    if-ne v6, v0, :cond_4

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->create(Lcom/google/android/exoplayer/util/MpegAudioHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    move v0, v8

    .line 400
    :goto_1
    return v0

    .line 374
    .end local v6    # "headerData":I
    .end local v7    # "xingBase":I
    :cond_1
    const/16 v7, 0x11

    .restart local v7    # "xingBase":I
    goto :goto_0

    .line 378
    .end local v7    # "xingBase":I
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->channels:I

    if-eq v0, v8, :cond_3

    .line 379
    const/16 v7, 0x11

    .restart local v7    # "xingBase":I
    goto :goto_0

    .line 381
    .end local v7    # "xingBase":I
    :cond_3
    const/16 v7, 0x9

    .restart local v7    # "xingBase":I
    goto :goto_0

    .line 392
    .restart local v6    # "headerData":I
    :cond_4
    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 393
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 394
    sget v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->VBRI_HEADER:I

    if-ne v6, v0, :cond_5

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->create(Lcom/google/android/exoplayer/util/MpegAudioHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    move v0, v8

    .line 396
    goto :goto_1

    .line 400
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    .locals 12
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 156
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-nez v1, :cond_2

    .line 157
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->maybeResynchronize(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v8

    .line 158
    .local v8, "headerPosition":J
    const-wide/16 v4, -0x1

    cmp-long v1, v8, v4

    if-nez v1, :cond_0

    .line 159
    const/4 v1, -0x1

    .line 187
    .end local v8    # "headerPosition":J
    :goto_0
    return v1

    .line 161
    .restart local v8    # "headerPosition":J
    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-static {p1, v4}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->getPosition(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;)J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 167
    .end local v8    # "headerPosition":J
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:I

    int-to-long v6, v1

    const-wide/32 v10, 0xf4240

    mul-long/2addr v6, v10

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    int-to-long v10, v1

    div-long/2addr v6, v10

    add-long v2, v4, v6

    .line 170
    .local v2, "timeUs":J
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->drainToOutput(Lcom/google/android/exoplayer/extractor/TrackOutput;I)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 171
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v1, :cond_4

    .line 172
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->mark()V

    .line 173
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v5, 0x1

    invoke-interface {v1, p1, v4, v5}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    .line 174
    .local v0, "bytesAppended":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 175
    const/4 v1, -0x1

    goto :goto_0

    .line 177
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 179
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v1, :cond_4

    .line 180
    const/4 v1, 0x0

    goto :goto_0

    .line 184
    .end local v0    # "bytesAppended":I
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v5, v5, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 185
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:I

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v4, v4, Lcom/google/android/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:I

    .line 186
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 187
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupSeeker(Lcom/google/android/exoplayer/extractor/ExtractorInput;J)V
    .locals 8
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "headerPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 331
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->parseSeekerFrame(Lcom/google/android/exoplayer/extractor/ExtractorInput;JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->mark()V

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    if-eqz v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v1, v6, v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)V

    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    int-to-long v0, v0

    add-long/2addr p2, v0

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->populateHeader(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->returnToMark()V

    .line 348
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp3/ConstantBitrateSeeker;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lcom/google/android/exoplayer/util/MpegAudioHeader;->bitrate:I

    mul-int/lit16 v3, v1, 0x3e8

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    move-wide v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp3/ConstantBitrateSeeker;-><init>(JIJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    goto :goto_0
.end method

.method private synchronize(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    .locals 19
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->reset()V

    .line 237
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->getPosition(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;)J

    move-result-wide v16

    .line 240
    .local v16, "startPosition":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_0

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->ID3_TAG:I

    if-ne v2, v3, :cond_2

    .line 244
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x7f

    or-int v12, v2, v3

    .line 248
    .local v12, "headerLength":I
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->reset()V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->getPosition(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;)J

    move-result-wide v16

    .line 257
    .end local v12    # "headerLength":I
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->mark()V

    .line 258
    move-wide/from16 v14, v16

    .line 259
    .local v14, "headerPosition":J
    const/4 v13, 0x0

    .line 260
    .local v13, "validFrameCount":I
    const/4 v9, 0x0

    .line 262
    .local v9, "candidateSynchronizedHeaderData":I
    :goto_2
    sub-long v2, v14, v16

    const-wide/32 v4, 0x20000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 263
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    const-string v3, "Searched too many bytes while resynchronizing."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    .end local v9    # "candidateSynchronizedHeaderData":I
    .end local v13    # "validFrameCount":I
    .end local v14    # "headerPosition":J
    .end local v16    # "startPosition":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->returnToMark()V

    goto/16 :goto_0

    .line 252
    .restart local v16    # "startPosition":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->returnToMark()V

    goto :goto_1

    .line 266
    .restart local v9    # "candidateSynchronizedHeaderData":I
    .restart local v13    # "validFrameCount":I
    .restart local v14    # "headerPosition":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readAllowingEndOfInput(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)Z

    move-result v2

    if-nez v2, :cond_5

    .line 267
    const-wide/16 v14, -0x1

    .line 313
    .end local v14    # "headerPosition":J
    :cond_4
    :goto_3
    return-wide v14

    .line 270
    .restart local v14    # "headerPosition":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 273
    .local v11, "headerData":I
    if-eqz v9, :cond_6

    const v2, -0x1f400

    and-int/2addr v2, v11

    const v3, -0x1f400

    and-int/2addr v3, v9

    if-ne v2, v3, :cond_7

    :cond_6
    invoke-static {v11}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->getFrameSize(I)I

    move-result v10

    .local v10, "frameSize":I
    const/4 v2, -0x1

    if-ne v10, v2, :cond_8

    .line 276
    .end local v10    # "frameSize":I
    :cond_7
    const/4 v13, 0x0

    .line 277
    const/4 v9, 0x0

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->returnToMark()V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->skip(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->mark()V

    .line 283
    const-wide/16 v2, 0x1

    add-long/2addr v14, v2

    .line 284
    goto :goto_2

    .line 287
    .restart local v10    # "frameSize":I
    :cond_8
    if-nez v13, :cond_9

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v11, v2}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->populateHeader(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z

    .line 289
    move v9, v11

    .line 293
    :cond_9
    add-int/lit8 v13, v13, 0x1

    .line 294
    const/4 v2, 0x4

    if-ne v13, v2, :cond_a

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->returnToMark()V

    .line 304
    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    if-nez v2, :cond_4

    .line 306
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->setupSeeker(Lcom/google/android/exoplayer/extractor/ExtractorInput;J)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/16 v3, 0x1000

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {v4}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;->getDurationUs()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v6, v6, Lcom/google/android/exoplayer/util/MpegAudioHeader;->channels:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v7, v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    goto/16 :goto_3

    .line 299
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    add-int/lit8 v3, v10, -0x4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->skip(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    goto/16 :goto_2
.end method

.method private synchronizeCatchingEndOfInput(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    .locals 4
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 220
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronize(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 222
    :goto_0
    return-wide v2

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/EOFException;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 1
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 131
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 132
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 133
    return-void
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 4
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 147
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizeCatchingEndOfInput(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 149
    const/4 v0, -0x1

    .line 152
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I

    move-result v0

    goto :goto_0
.end method

.method public seek()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 138
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:I

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 140
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->reset()V

    .line 142
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 11
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v5, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v8, 0x4

    invoke-direct {v5, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    .line 76
    .local v5, "scratch":Lcom/google/android/exoplayer/util/ParsableByteArray;
    const/4 v6, 0x0

    .line 77
    .local v6, "startPosition":I
    iget-object v8, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-interface {p1, v8, v9, v10}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 78
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v8

    sget v9, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->ID3_TAG:I

    if-ne v8, v9, :cond_0

    .line 79
    const/4 v8, 0x3

    invoke-interface {p1, v8}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 80
    iget-object v8, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-interface {p1, v8, v9, v10}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 81
    iget-object v8, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0x7f

    shl-int/lit8 v8, v8, 0x15

    iget-object v9, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    and-int/lit8 v9, v9, 0x7f

    shl-int/lit8 v9, v9, 0xe

    or-int/2addr v8, v9

    iget-object v9, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    and-int/lit8 v9, v9, 0x7f

    shl-int/lit8 v9, v9, 0x7

    or-int/2addr v8, v9

    iget-object v9, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    and-int/lit8 v9, v9, 0x7f

    or-int v3, v8, v9

    .line 83
    .local v3, "headerLength":I
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 84
    add-int/lit8 v6, v3, 0xa

    .line 90
    .end local v3    # "headerLength":I
    :goto_0
    move v4, v6

    .line 91
    .local v4, "headerPosition":I
    const/4 v7, 0x0

    .line 92
    .local v7, "validFrameCount":I
    const/4 v0, 0x0

    .line 94
    .local v0, "candidateSynchronizedHeaderData":I
    :goto_1
    sub-int v8, v4, v6

    const/16 v9, 0x1000

    if-lt v8, v9, :cond_1

    .line 95
    const/4 v8, 0x0

    .line 120
    :goto_2
    return v8

    .line 86
    .end local v0    # "candidateSynchronizedHeaderData":I
    .end local v4    # "headerPosition":I
    .end local v7    # "validFrameCount":I
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_0

    .line 98
    .restart local v0    # "candidateSynchronizedHeaderData":I
    .restart local v4    # "headerPosition":I
    .restart local v7    # "validFrameCount":I
    :cond_1
    iget-object v8, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-interface {p1, v8, v9, v10}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 99
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 100
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 102
    .local v2, "headerData":I
    if-eqz v0, :cond_2

    const v8, -0x1f400

    and-int/2addr v8, v2

    const v9, -0x1f400

    and-int/2addr v9, v0

    if-ne v8, v9, :cond_3

    :cond_2
    invoke-static {v2}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->getFrameSize(I)I

    move-result v1

    .local v1, "frameSize":I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_4

    .line 105
    .end local v1    # "frameSize":I
    :cond_3
    const/4 v7, 0x0

    .line 106
    const/4 v0, 0x0

    .line 109
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 110
    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1

    .line 114
    .restart local v1    # "frameSize":I
    :cond_4
    if-nez v7, :cond_5

    .line 115
    move v0, v2

    .line 119
    :cond_5
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    .line 120
    const/4 v8, 0x1

    goto :goto_2

    .line 124
    :cond_6
    add-int/lit8 v8, v1, -0x4

    invoke-interface {p1, v8}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1
.end method
