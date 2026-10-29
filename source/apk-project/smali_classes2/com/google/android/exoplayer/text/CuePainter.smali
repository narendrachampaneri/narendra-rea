.class final Lcom/google/android/exoplayer/text/CuePainter;
.super Ljava/lang/Object;
.source "CuePainter.java"


# static fields
.field private static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.08f

.field private static final INNER_PADDING_RATIO:F = 0.125f

.field private static final LINE_HEIGHT_FRACTION:F = 0.0533f

.field private static final TAG:Ljava/lang/String; = "CuePainter"


# instance fields
.field private backgroundColor:I

.field private final cornerRadius:F

.field private cueAlignment:Landroid/text/Layout$Alignment;

.field private cuePosition:I

.field private cueText:Ljava/lang/CharSequence;

.field private edgeColor:I

.field private edgeType:I

.field private foregroundColor:I

.field private final lineBounds:Landroid/graphics/RectF;

.field private final outlineWidth:F

.field private final paint:Landroid/graphics/Paint;

.field private parentBottom:I

.field private parentLeft:I

.field private parentRight:I

.field private parentTop:I

.field private final shadowOffset:F

.field private final shadowRadius:F

.field private final spacingAdd:F

.field private final spacingMult:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:I

.field private textPaddingX:I

.field private final textPaint:Landroid/text/TextPaint;

.field private textTop:I

.field private windowColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->lineBounds:Landroid/graphics/RectF;

    .line 97
    const/4 v5, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 98
    .local v4, "viewAttr":[I
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 99
    .local v2, "styledAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->spacingAdd:F

    .line 100
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->spacingMult:F

    .line 101
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 105
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    const/high16 v5, 0x40000000    # 2.0f

    iget v6, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x43200000    # 160.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 106
    .local v3, "twoDpInPx":I
    int-to-float v5, v3

    iput v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->cornerRadius:F

    .line 107
    int-to-float v5, v3

    iput v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->outlineWidth:F

    .line 108
    int-to-float v5, v3

    iput v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->shadowRadius:F

    .line 109
    int-to-float v5, v3

    iput v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->shadowOffset:F

    .line 111
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    .line 112
    iget-object v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 113
    iget-object v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 115
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->paint:Landroid/graphics/Paint;

    .line 116
    iget-object v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    return-void

    .line 97
    nop

    :array_0
    .array-data 4
        0x1010217
        0x1010218
    .end array-data
.end method

.method private drawLayout(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer/text/CuePainter;->textLayout:Landroid/text/StaticLayout;

    .line 241
    .local v10, "layout":Landroid/text/StaticLayout;
    if-nez v10, :cond_0

    .line 296
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 247
    .local v15, "saveCount":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->textLeft:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->textTop:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 249
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->windowColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->windowColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaddingX:I

    neg-int v1, v1

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaddingX:I

    add-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/text/CuePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 255
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->backgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_2

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    int-to-float v13, v1

    .line 258
    .local v13, "previousBottom":F
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v11

    .line 259
    .local v11, "lineCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v11, :cond_2

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v10, v9}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaddingX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v10, v9}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaddingX:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->lineBounds:Landroid/graphics/RectF;

    iput v13, v1, Landroid/graphics/RectF;->top:F

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v10, v9}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->lineBounds:Landroid/graphics/RectF;

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->lineBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->cornerRadius:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/text/CuePainter;->cornerRadius:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/text/CuePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 259
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 269
    .end local v9    # "i":I
    .end local v11    # "lineCount":I
    .end local v13    # "previousBottom":F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->edgeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->outlineWidth:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->edgeColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 274
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 290
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->foregroundColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 295
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 275
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->edgeType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->shadowRadius:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/text/CuePainter;->shadowOffset:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/text/CuePainter;->shadowOffset:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/text/CuePainter;->edgeColor:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    .line 277
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->edgeType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->edgeType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 279
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->edgeType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    const/4 v14, 0x1

    .line 280
    .local v14, "raised":Z
    :goto_3
    if-eqz v14, :cond_8

    const/4 v8, -0x1

    .line 281
    .local v8, "colorUp":I
    :goto_4
    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/text/CuePainter;->edgeColor:I

    .line 282
    .local v7, "colorDown":I
    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->shadowRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v12, v1, v2

    .line 283
    .local v12, "offset":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->foregroundColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->shadowRadius:F

    neg-float v3, v12

    neg-float v4, v12

    invoke-virtual {v1, v2, v3, v4, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 286
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->shadowRadius:F

    invoke-virtual {v1, v2, v12, v12, v7}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    .line 279
    .end local v7    # "colorDown":I
    .end local v8    # "colorUp":I
    .end local v12    # "offset":F
    .end local v14    # "raised":Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 280
    .restart local v14    # "raised":Z
    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/text/CuePainter;->edgeColor:I

    goto :goto_4

    .line 281
    .restart local v8    # "colorUp":I
    :cond_9
    const/4 v7, -0x1

    goto :goto_5
.end method


# virtual methods
.method public draw(Lcom/google/android/exoplayer/text/Cue;Lcom/google/android/exoplayer/text/CaptionStyleCompat;FLandroid/graphics/Canvas;IIII)V
    .locals 26
    .param p1, "cue"    # Lcom/google/android/exoplayer/text/Cue;
    .param p2, "style"    # Lcom/google/android/exoplayer/text/CaptionStyleCompat;
    .param p3, "fontScale"    # F
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "cueBoxLeft"    # I
    .param p6, "cueBoxTop"    # I
    .param p7, "cueBoxRight"    # I
    .param p8, "cueBoxBottom"    # I

    .prologue
    .line 138
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    :goto_0
    return-void

    .line 143
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->cueText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/exoplayer/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->cuePosition:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/exoplayer/text/Cue;->position:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->cueAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/exoplayer/text/Cue;->alignment:Landroid/text/Layout$Alignment;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->foregroundColor:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->foregroundColor:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->backgroundColor:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->backgroundColor:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->windowColor:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->windowColor:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->edgeType:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeType:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->edgeColor:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeColor:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentLeft:I

    move/from16 v0, p5

    if-ne v2, v0, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentTop:I

    move/from16 v0, p6

    if-ne v2, v0, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentRight:I

    move/from16 v0, p7

    if-ne v2, v0, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentBottom:I

    move/from16 v0, p8

    if-ne v2, v0, :cond_1

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/text/CuePainter;->drawLayout(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 161
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/text/Cue;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->cueText:Ljava/lang/CharSequence;

    .line 162
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/exoplayer/text/Cue;->position:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->cuePosition:I

    .line 163
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/text/Cue;->alignment:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->cueAlignment:Landroid/text/Layout$Alignment;

    .line 164
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->foregroundColor:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->foregroundColor:I

    .line 165
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->backgroundColor:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->backgroundColor:I

    .line 166
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->windowColor:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->windowColor:I

    .line 167
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->edgeType:I

    .line 168
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeColor:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->edgeColor:I

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 170
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/text/CuePainter;->parentLeft:I

    .line 171
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/text/CuePainter;->parentTop:I

    .line 172
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/text/CuePainter;->parentRight:I

    .line 173
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/text/CuePainter;->parentBottom:I

    .line 175
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentLeft:I

    sub-int v18, v2, v3

    .line 176
    .local v18, "parentWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentTop:I

    sub-int v17, v2, v3

    .line 178
    .local v17, "parentHeight":I
    const v2, 0x3d5a511a    # 0.0533f

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float/2addr v2, v3

    mul-float v24, v2, p3

    .line 179
    .local v24, "textSize":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 180
    const/high16 v2, 0x3e000000    # 0.125f

    mul-float v2, v2, v24

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v22, v0

    .line 181
    .local v22, "textPaddingX":I
    mul-int/lit8 v2, v22, 0x2

    sub-int v5, v18, v2

    .line 182
    .local v5, "availableWidth":I
    if-gtz v5, :cond_2

    .line 183
    const-string v2, "CuePainter"

    const-string v3, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 187
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->cueAlignment:Landroid/text/Layout$Alignment;

    if-nez v2, :cond_3

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 188
    .local v6, "layoutAlignment":Landroid/text/Layout$Alignment;
    :goto_1
    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/text/CuePainter;->cueText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/text/CuePainter;->spacingMult:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/text/CuePainter;->spacingAdd:F

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->textLayout:Landroid/text/StaticLayout;

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v20

    .line 192
    .local v20, "textHeight":I
    const/4 v10, 0x0

    .line 193
    .local v10, "textWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v16

    .line 194
    .local v16, "lineCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v15}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 194
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 187
    .end local v6    # "layoutAlignment":Landroid/text/Layout$Alignment;
    .end local v10    # "textWidth":I
    .end local v15    # "i":I
    .end local v16    # "lineCount":I
    .end local v20    # "textHeight":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/text/CuePainter;->cueAlignment:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 197
    .restart local v6    # "layoutAlignment":Landroid/text/Layout$Alignment;
    .restart local v10    # "textWidth":I
    .restart local v15    # "i":I
    .restart local v16    # "lineCount":I
    .restart local v20    # "textHeight":I
    :cond_4
    mul-int/lit8 v2, v22, 0x2

    add-int/2addr v10, v2

    .line 199
    sub-int v2, v18, v10

    div-int/lit8 v21, v2, 0x2

    .line 200
    .local v21, "textLeft":I
    add-int v23, v21, v10

    .line 201
    .local v23, "textRight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentBottom:I

    sub-int v2, v2, v20

    move/from16 v0, v17

    int-to-float v3, v0

    const v4, 0x3da3d70a    # 0.08f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v25, v2, v3

    .line 203
    .local v25, "textTop":I
    add-int v19, v25, v20

    .line 205
    .local v19, "textBottom":I
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/exoplayer/text/Cue;->position:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 206
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/text/Cue;->alignment:Landroid/text/Layout$Alignment;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_7

    .line 207
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/exoplayer/text/Cue;->position:I

    mul-int v2, v2, v18

    div-int/lit8 v2, v2, 0x64

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentLeft:I

    add-int v23, v2, v3

    .line 208
    sub-int v2, v23, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentLeft:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 214
    :cond_5
    :goto_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/exoplayer/text/Cue;->line:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 215
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/exoplayer/text/Cue;->line:I

    mul-int v2, v2, v17

    div-int/lit8 v2, v2, 0x64

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentTop:I

    add-int v25, v2, v3

    .line 216
    add-int v19, v25, v20

    .line 217
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentBottom:I

    move/from16 v0, v19

    if-le v0, v2, :cond_6

    .line 218
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentBottom:I

    sub-int v25, v2, v20

    .line 219
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentBottom:I

    move/from16 v19, v0

    .line 222
    :cond_6
    sub-int v10, v23, v21

    .line 225
    new-instance v7, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/text/CuePainter;->cueText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/text/CuePainter;->spacingMult:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer/text/CuePainter;->spacingAdd:F

    const/4 v14, 0x1

    move-object v11, v6

    invoke-direct/range {v7 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/exoplayer/text/CuePainter;->textLayout:Landroid/text/StaticLayout;

    .line 227
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/text/CuePainter;->textLeft:I

    .line 228
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/text/CuePainter;->textTop:I

    .line 229
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/text/CuePainter;->textPaddingX:I

    .line 231
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/text/CuePainter;->drawLayout(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 210
    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/exoplayer/text/Cue;->position:I

    mul-int v2, v2, v18

    div-int/lit8 v2, v2, 0x64

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentLeft:I

    add-int v21, v2, v3

    .line 211
    add-int v2, v21, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/text/CuePainter;->parentRight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v23

    goto :goto_3
.end method
