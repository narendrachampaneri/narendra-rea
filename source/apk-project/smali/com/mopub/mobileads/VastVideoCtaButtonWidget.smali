.class public Lcom/mopub/mobileads/VastVideoCtaButtonWidget;
.super Landroid/widget/ImageView;
.source "VastVideoCtaButtonWidget.java"


# instance fields
.field private mCtaButtonDrawable:Lcom/mopub/mobileads/resource/CtaButtonDrawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHasClickthroughUrl:Z

.field private mHasCompanionAd:Z

.field private mIsVideoComplete:Z

.field private mIsVideoSkippable:Z

.field private final mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoViewId"    # I
    .param p3, "hasCompanionAd"    # Z
    .param p4, "hasClickthroughUrl"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean p3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mHasCompanionAd:Z

    .line 32
    iput-boolean p4, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mHasClickthroughUrl:Z

    .line 34
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setId(I)V

    .line 36
    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 37
    .local v2, "width":I
    const/high16 v3, 0x42280000    # 42.0f

    invoke-static {v3, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 38
    .local v0, "height":I
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 40
    .local v1, "margin":I
    new-instance v3, Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-direct {v3, p1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mCtaButtonDrawable:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    .line 41
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mCtaButtonDrawable:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 45
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 46
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 50
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 51
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->updateLayoutAndVisibility()V

    .line 56
    return-void
.end method

.method private updateLayoutAndVisibility()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 82
    iget-boolean v1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mHasClickthroughUrl:Z

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    .line 126
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-boolean v1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mIsVideoSkippable:Z

    if-nez v1, :cond_1

    .line 89
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_1
    iget-boolean v1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mIsVideoComplete:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mHasCompanionAd:Z

    if-eqz v1, :cond_2

    .line 95
    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 101
    .local v0, "currentOrientation":I
    packed-switch v0, :pswitch_data_0

    .line 121
    const-string v1, "Unrecognized screen orientation: CTA button widget defaulting to portrait layout"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 103
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 111
    :pswitch_2
    const-string v1, "Screen orientation undefined: CTA button widget defaulting to portrait layout"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 116
    :pswitch_3
    const-string v1, "Screen orientation is deprecated ORIENTATION_SQUARE: CTA button widget defaulting to portrait layout"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method getCtaText()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mCtaButtonDrawable:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->getCtaText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasLandscapeLayoutParams()Z
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasPortraitLayoutParams()Z
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method notifyVideoComplete()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mIsVideoSkippable:Z

    .line 76
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mIsVideoComplete:Z

    .line 77
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->updateLayoutAndVisibility()V

    .line 78
    return-void
.end method

.method notifyVideoSkippable()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mIsVideoSkippable:Z

    .line 71
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->updateLayoutAndVisibility()V

    .line 72
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->updateLayoutAndVisibility()V

    .line 63
    return-void
.end method

.method updateCtaText(Ljava/lang/String;)V
    .locals 1
    .param p1, "customCtaText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mCtaButtonDrawable:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->setCtaText(Ljava/lang/String;)V

    .line 67
    return-void
.end method
