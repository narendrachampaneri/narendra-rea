.class public Lcom/mopub/mobileads/VastVideoProgressBarWidget;
.super Landroid/widget/ImageView;
.source "VastVideoProgressBarWidget.java"


# instance fields
.field private mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "anchorId"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setId(I)V

    .line 23
    new-instance v2, Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    invoke-direct {v2, p1}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    .line 24
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    const/high16 v2, 0x40800000    # 4.0f

    .line 27
    invoke-static {v2, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 29
    .local v1, "progressBarHeight":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x8

    invoke-virtual {v0, v2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    return-void
.end method


# virtual methods
.method calibrateAndMakeVisible(II)V
    .locals 1
    .param p1, "duration"    # I
    .param p2, "skipOffset"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->setDurationAndSkipOffset(II)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 41
    return-void
.end method

.method getImageViewDrawable()Lcom/mopub/mobileads/resource/ProgressBarDrawable;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    return-object v0
.end method

.method setImageViewDrawable(Lcom/mopub/mobileads/resource/ProgressBarDrawable;)V
    .locals 0
    .param p1, "drawable"    # Lcom/mopub/mobileads/resource/ProgressBarDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    .line 59
    return-void
.end method

.method updateProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->setProgress(I)V

    .line 45
    return-void
.end method
