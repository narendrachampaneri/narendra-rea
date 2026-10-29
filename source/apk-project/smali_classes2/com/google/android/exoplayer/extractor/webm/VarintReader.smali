.class final Lcom/google/android/exoplayer/extractor/webm/VarintReader;
.super Ljava/lang/Object;
.source "VarintReader.java"


# static fields
.field private static final STATE_BEGIN_READING:I = 0x0

.field private static final STATE_READ_CONTENTS:I = 0x1

.field private static final VARINT_LENGTH_MASKS:[I


# instance fields
.field private length:I

.field private final scratch:[B

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->VARINT_LENGTH_MASKS:[I

    return-void

    :array_0
    .array-data 4
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    .line 33
    return-void
.end method


# virtual methods
.method public getLastLength()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    return v0
.end method

.method public readUnsignedVarint(Lcom/google/android/exoplayer/extractor/ExtractorInput;ZZ)J
    .locals 9
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "allowEndOfInput"    # Z
    .param p3, "removeLengthMask"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 66
    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->state:I

    if-nez v4, :cond_4

    .line 68
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    invoke-interface {p1, v4, v8, v6, p2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    const-wide/16 v2, -0x1

    .line 97
    :goto_0
    return-wide v2

    .line 71
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    aget-byte v4, v4, v8

    and-int/lit16 v0, v4, 0xff

    .line 72
    .local v0, "firstByte":I
    iput v5, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->VARINT_LENGTH_MASKS:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 74
    sget-object v4, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->VARINT_LENGTH_MASKS:[I

    aget v4, v4, v1

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 75
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    .line 79
    :cond_1
    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    if-ne v4, v5, :cond_3

    .line 80
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "No valid varint length mask found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_3
    iput v6, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->state:I

    .line 86
    .end local v0    # "firstByte":I
    .end local v1    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    iget v5, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v4, v6, v5}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 89
    if-eqz p3, :cond_5

    .line 90
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    aget-byte v5, v4, v8

    sget-object v6, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->VARINT_LENGTH_MASKS:[I

    iget v7, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 92
    :cond_5
    const-wide/16 v2, 0x0

    .line 93
    .local v2, "varint":J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    if-ge v1, v4, :cond_6

    .line 94
    const/16 v4, 0x8

    shl-long v4, v2, v4

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    aget-byte v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long v2, v4, v6

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 96
    :cond_6
    iput v8, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->state:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->state:I

    .line 40
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    .line 41
    return-void
.end method
