.class public final Lcom/google/android/exoplayer/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 40
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([BI)V

    .line 41
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    .line 51
    iput p2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    .line 52
    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 229
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readExpGolombCodeNum()I
    .locals 3

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "leadingZeros":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v2, v1, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    :goto_1
    add-int/2addr v1, v2

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bitsLeft()I
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public peekExpGolombCodedNumLength()I
    .locals 6

    .prologue
    .line 185
    iget v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 186
    .local v2, "initialByteOffset":I
    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 187
    .local v1, "initialBitOffset":I
    const/4 v3, 0x0

    .line 188
    .local v3, "leadingZeros":I
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v5, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v5, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 192
    .local v0, "hitLimit":Z
    :goto_1
    iput v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 193
    iput v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 194
    if-eqz v0, :cond_2

    const/4 v4, -0x1

    :goto_2
    return v4

    .line 191
    .end local v0    # "hitLimit":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 194
    .restart local v0    # "hitLimit":Z
    :cond_2
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public readBit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBits(I)I
    .locals 8
    .param p1, "n"    # I

    .prologue
    const/16 v7, 0x8

    .line 134
    if-nez p1, :cond_0

    .line 135
    const/4 v2, 0x0

    .line 175
    :goto_0
    return v2

    .line 138
    :cond_0
    const/4 v2, 0x0

    .line 141
    .local v2, "returnValue":I
    :goto_1
    if-lt p1, v7, :cond_2

    .line 143
    iget v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-eqz v4, :cond_1

    .line 144
    iget-object v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v5, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iget v5, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v6, v6, 0x8

    ushr-int/2addr v5, v6

    or-int v0, v4, v5

    .line 149
    .local v0, "byteValue":I
    :goto_2
    add-int/lit8 p1, p1, -0x8

    .line 150
    and-int/lit16 v4, v0, 0xff

    shl-int/2addr v4, p1

    or-int/2addr v2, v4

    .line 151
    iget v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    goto :goto_1

    .line 147
    .end local v0    # "byteValue":I
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v5, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v4, v5

    .restart local v0    # "byteValue":I
    goto :goto_2

    .line 154
    .end local v0    # "byteValue":I
    :cond_2
    if-lez p1, :cond_4

    .line 155
    iget v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int v1, v4, p1

    .line 156
    .local v1, "nextBit":I
    const/16 v4, 0xff

    rsub-int/lit8 v5, p1, 0x8

    shr-int/2addr v4, v5

    int-to-byte v3, v4

    .line 158
    .local v3, "writeMask":B
    if-le v1, v7, :cond_5

    .line 160
    iget-object v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v5, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v1, -0x8

    shl-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    rsub-int/lit8 v6, v1, 0x10

    shr-int/2addr v5, v6

    or-int/2addr v4, v5

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    .line 162
    iget v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 171
    :cond_3
    :goto_3
    rem-int/lit8 v4, v1, 0x8

    iput v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 174
    .end local v1    # "nextBit":I
    .end local v3    # "writeMask":B
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    goto :goto_0

    .line 165
    .restart local v1    # "nextBit":I
    .restart local v3    # "writeMask":B
    :cond_5
    iget-object v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v5, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v5, v1, 0x8

    shr-int/2addr v4, v5

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    .line 166
    if-ne v1, v7, :cond_3

    .line 167
    iget v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    goto :goto_3
.end method

.method public readSignedExpGolombCodedInt()I
    .locals 3

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v0

    .line 213
    .local v0, "codeNum":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public readUnsignedExpGolombCodedInt()I
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v0

    return v0
.end method

.method public reset([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 60
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->reset([BI)V

    .line 61
    return-void
.end method

.method public reset([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    .line 71
    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 73
    iput p2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    .line 74
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 99
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 100
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    .line 101
    return-void
.end method

.method public skipBits(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 110
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 111
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 113
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    .line 116
    return-void
.end method
