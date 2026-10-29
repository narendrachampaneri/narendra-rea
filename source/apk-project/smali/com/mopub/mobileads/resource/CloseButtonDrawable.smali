.class public Lcom/mopub/mobileads/resource/CloseButtonDrawable;
.super Lcom/mopub/mobileads/resource/BaseWidgetDrawable;
.source "CloseButtonDrawable.java"


# instance fields
.field private final closeButtonPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mopub/mobileads/resource/BaseWidgetDrawable;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/resource/CloseButtonDrawable;->closeButtonPaint:Landroid/graphics/Paint;

    .line 14
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CloseButtonDrawable;->closeButtonPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CloseButtonDrawable;->closeButtonPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CloseButtonDrawable;->closeButtonPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/mopub/mobileads/resource/DrawableConstants$CloseButton;->STROKE_CAP:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 17
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/CloseButtonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 22
    .local v7, "w":I
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/CloseButtonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 23
    .local v6, "h":I
    int-to-float v2, v6

    int-to-float v3, v7

    iget-object v5, p0, Lcom/mopub/mobileads/resource/CloseButtonDrawable;->closeButtonPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 24
    int-to-float v3, v7

    int-to-float v4, v6

    iget-object v5, p0, Lcom/mopub/mobileads/resource/CloseButtonDrawable;->closeButtonPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 25
    return-void
.end method
