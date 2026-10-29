.class public final Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;
.super Ljava/lang/Object;
.source "VideoFormatSelectorUtil.java"


# static fields
.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 3
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    .line 188
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 189
    .local v0, "displaySize":Landroid/graphics/Point;
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 190
    invoke-static {p0, v0}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 196
    :goto_0
    return-object v0

    .line 191
    :cond_0
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 192
    invoke-static {p0, v0}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {p0, v0}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private static getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 207
    return-void
.end method

.method private static getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 202
    return-void
.end method

.method private static getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 212
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 213
    return-void
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .locals 4
    .param p0, "orientationMayChange"    # Z
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    if-eqz p0, :cond_0

    if-le p3, p4, :cond_1

    move v3, v1

    :goto_0
    if-le p1, p2, :cond_2

    :goto_1
    if-eq v3, v1, :cond_0

    .line 173
    move v0, p1

    .line 174
    .local v0, "tempViewportWidth":I
    move p1, p2

    .line 175
    move p2, v0

    .line 178
    .end local v0    # "tempViewportWidth":I
    :cond_0
    mul-int v1, p3, p2

    mul-int v2, p4, p1

    if-lt v1, v2, :cond_3

    .line 180
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p1, p4

    invoke-static {v2, p3}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 183
    :goto_2
    return-object v1

    :cond_1
    move v3, v2

    .line 171
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 183
    :cond_3
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p2, p3

    invoke-static {v2, p4}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2
.end method

.method private static isFormatPlayable(Lcom/google/android/exoplayer/chunk/Format;[Ljava/lang/String;ZI)Z
    .locals 3
    .param p0, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p1, "allowedContainerMimeTypes"    # [Ljava/lang/String;
    .param p2, "filterHdFormats"    # Z
    .param p3, "maxDecodableFrameSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 144
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    if-eqz p2, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    const/16 v2, 0x500

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    const/16 v2, 0x2d0

    if-ge v1, v2, :cond_0

    .line 153
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-lez v1, :cond_3

    .line 157
    iget v1, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    mul-int/2addr v1, v2

    if-gt v1, p3, :cond_0

    .line 162
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static selectVideoFormats(Ljava/util/List;[Ljava/lang/String;ZZII)[I
    .locals 14
    .param p1, "allowedContainerMimeTypes"    # [Ljava/lang/String;
    .param p2, "filterHdFormats"    # Z
    .param p3, "orientationMayChange"    # Z
    .param p4, "viewportWidth"    # I
    .param p5, "viewportHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/FormatWrapper;",
            ">;[",
            "Ljava/lang/String;",
            "ZZII)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "formatWrappers":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/FormatWrapper;>;"
    const v7, 0x7fffffff

    .line 97
    .local v7, "maxVideoPixelsToRetain":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v9, "selectedIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/android/exoplayer/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v6

    .line 101
    .local v6, "maxDecodableFrameSize":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 102
    .local v4, "formatWrapperCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 103
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer/chunk/FormatWrapper;

    invoke-interface {v11}, Lcom/google/android/exoplayer/chunk/FormatWrapper;->getFormat()Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v3

    .line 104
    .local v3, "format":Lcom/google/android/exoplayer/chunk/Format;
    move/from16 v0, p2

    invoke-static {v3, p1, v0, v6}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->isFormatPlayable(Lcom/google/android/exoplayer/chunk/Format;[Ljava/lang/String;ZI)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 107
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->width:I

    if-lez v11, :cond_0

    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-lez v11, :cond_0

    .line 112
    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v12, v3, Lcom/google/android/exoplayer/chunk/Format;->height:I

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2, v11, v12}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v8

    .line 114
    .local v8, "maxVideoSizeInViewport":Landroid/graphics/Point;
    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v12, v3, Lcom/google/android/exoplayer/chunk/Format;->height:I

    mul-int v10, v11, v12

    .line 115
    .local v10, "videoPixels":I
    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v12, v8, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    const v13, 0x3f7ae148    # 0.98f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    if-lt v11, v12, :cond_0

    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->height:I

    iget v12, v8, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    const v13, 0x3f7ae148    # 0.98f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    if-lt v11, v12, :cond_0

    if-ge v10, v7, :cond_0

    .line 118
    move v7, v10

    .line 102
    .end local v8    # "maxVideoSizeInViewport":Landroid/graphics/Point;
    .end local v10    # "videoPixels":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 127
    .end local v3    # "format":Lcom/google/android/exoplayer/chunk/Format;
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    :goto_1
    if-ltz v5, :cond_3

    .line 128
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer/chunk/FormatWrapper;

    invoke-interface {v11}, Lcom/google/android/exoplayer/chunk/FormatWrapper;->getFormat()Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v3

    .line 129
    .restart local v3    # "format":Lcom/google/android/exoplayer/chunk/Format;
    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->width:I

    if-lez v11, :cond_2

    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-lez v11, :cond_2

    iget v11, v3, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v12, v3, Lcom/google/android/exoplayer/chunk/Format;->height:I

    mul-int/2addr v11, v12

    if-le v11, v7, :cond_2

    .line 131
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 127
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 135
    .end local v3    # "format":Lcom/google/android/exoplayer/chunk/Format;
    :cond_3
    invoke-static {v9}, Lcom/google/android/exoplayer/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v11

    return-object v11
.end method

.method public static selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "allowedContainerMimeTypes"    # [Ljava/lang/String;
    .param p3, "filterHdFormats"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/FormatWrapper;",
            ">;[",
            "Ljava/lang/String;",
            "Z)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "formatWrappers":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/FormatWrapper;>;"
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 59
    .local v8, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 60
    .local v6, "display":Landroid/view/Display;
    invoke-static {v6}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v7

    .line 61
    .local v7, "displaySize":Landroid/graphics/Point;
    const/4 v3, 0x1

    iget v4, v7, Landroid/graphics/Point;->x:I

    iget v5, v7, Landroid/graphics/Point;->y:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormats(Ljava/util/List;[Ljava/lang/String;ZZII)[I

    move-result-object v0

    return-object v0
.end method
