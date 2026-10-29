.class final Lcom/google/android/exoplayer/extractor/ts/SeiReader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "SeiReader.java"


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 1
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 35
    const-string v0, "application/eia-608"

    invoke-static {v0}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 36
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V
    .locals 10
    .param p1, "seiBuffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "pesTimeUs"    # J
    .param p4, "startOfPacket"    # Z

    .prologue
    const/16 v9, 0xff

    const/4 v4, 0x1

    .line 46
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 48
    const/4 v8, 0x0

    .line 50
    .local v8, "payloadType":I
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 51
    .local v0, "b":I
    add-int/2addr v8, v0

    .line 52
    if-eq v0, v9, :cond_0

    .line 54
    const/4 v5, 0x0

    .line 56
    .local v5, "payloadSize":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 57
    add-int/2addr v5, v0

    .line 58
    if-eq v0, v9, :cond_1

    .line 60
    invoke-static {v8, v5, p1}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->isSeiMessageEia608(IILcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v5}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 62
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 67
    .end local v0    # "b":I
    .end local v5    # "payloadSize":I
    .end local v8    # "payloadType":I
    :cond_3
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
