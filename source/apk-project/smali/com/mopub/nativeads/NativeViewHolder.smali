.class Lcom/mopub/nativeads/NativeViewHolder;
.super Ljava/lang/Object;
.source "NativeViewHolder.java"


# static fields
.field static final EMPTY_VIEW_HOLDER:Lcom/mopub/nativeads/NativeViewHolder;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field callToActionView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field daaIconImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field iconImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mainImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mainView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field textView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field titleView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/mopub/nativeads/NativeViewHolder;

    invoke-direct {v0}, Lcom/mopub/nativeads/NativeViewHolder;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/NativeViewHolder;->EMPTY_VIEW_HOLDER:Lcom/mopub/nativeads/NativeViewHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addDaaIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "daaClickthroughUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v1, p0, Lcom/mopub/nativeads/NativeViewHolder;->daaIconImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    if-nez p1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/mopub/nativeads/NativeViewHolder;->daaIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v1, p0, Lcom/mopub/nativeads/NativeViewHolder;->daaIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/mopub/nativeads/NativeViewHolder;->daaIconImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/mopub/nativeads/NativeViewHolder;->daaIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/mopub/nativeads/NativeViewHolder;->daaIconImageView:Landroid/widget/ImageView;

    sget-object v2, Lcom/mopub/common/util/Drawables;->NATIVE_DAA_ICON:Lcom/mopub/common/util/Drawables;

    .line 117
    invoke-virtual {v2, v0}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v1, p0, Lcom/mopub/nativeads/NativeViewHolder;->daaIconImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/mopub/nativeads/NativeViewHolder$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/mopub/nativeads/NativeViewHolder$1;-><init>(Lcom/mopub/nativeads/NativeViewHolder;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/mopub/nativeads/NativeViewHolder;->daaIconImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private addTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contents"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to add text ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to null TextView."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    if-nez p2, :cond_1

    .line 96
    const-string v0, "Attempted to set TextView contents to null."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/NativeViewHolder;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "viewBinder"    # Lcom/mopub/nativeads/ViewBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 34
    new-instance v1, Lcom/mopub/nativeads/NativeViewHolder;

    invoke-direct {v1}, Lcom/mopub/nativeads/NativeViewHolder;-><init>()V

    .line 35
    .local v1, "nativeViewHolder":Lcom/mopub/nativeads/NativeViewHolder;
    iput-object p0, v1, Lcom/mopub/nativeads/NativeViewHolder;->mainView:Landroid/view/View;

    .line 37
    :try_start_0
    iget v2, p1, Lcom/mopub/nativeads/ViewBinder;->titleId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mopub/nativeads/NativeViewHolder;->titleView:Landroid/widget/TextView;

    .line 38
    iget v2, p1, Lcom/mopub/nativeads/ViewBinder;->textId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mopub/nativeads/NativeViewHolder;->textView:Landroid/widget/TextView;

    .line 39
    iget v2, p1, Lcom/mopub/nativeads/ViewBinder;->callToActionId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mopub/nativeads/NativeViewHolder;->callToActionView:Landroid/widget/TextView;

    .line 40
    iget v2, p1, Lcom/mopub/nativeads/ViewBinder;->mainImageId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mopub/nativeads/NativeViewHolder;->mainImageView:Landroid/widget/ImageView;

    .line 41
    iget v2, p1, Lcom/mopub/nativeads/ViewBinder;->iconImageId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mopub/nativeads/NativeViewHolder;->iconImageView:Landroid/widget/ImageView;

    .line 42
    iget v2, p1, Lcom/mopub/nativeads/ViewBinder;->daaIconImageId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mopub/nativeads/NativeViewHolder;->daaIconImageView:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "nativeViewHolder":Lcom/mopub/nativeads/NativeViewHolder;
    :goto_0
    return-object v1

    .line 44
    .restart local v1    # "nativeViewHolder":Lcom/mopub/nativeads/NativeViewHolder;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "exception":Ljava/lang/ClassCastException;
    const-string v2, "Could not cast from id in ViewBinder to expected View type"

    invoke-static {v2, v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    sget-object v1, Lcom/mopub/nativeads/NativeViewHolder;->EMPTY_VIEW_HOLDER:Lcom/mopub/nativeads/NativeViewHolder;

    goto :goto_0
.end method


# virtual methods
.method public setViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mopub/nativeads/NativeViewHolder;->mainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mopub/nativeads/NativeViewHolder;->mainView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_0
    return-void
.end method

.method update(Lcom/mopub/nativeads/NativeResponse;)V
    .locals 2
    .param p1, "nativeResponse"    # Lcom/mopub/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/nativeads/NativeViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/NativeViewHolder;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/mopub/nativeads/NativeViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/NativeViewHolder;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/mopub/nativeads/NativeViewHolder;->callToActionView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/NativeViewHolder;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/mopub/nativeads/NativeViewHolder;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/mopub/nativeads/NativeResponse;->loadMainImage(Landroid/widget/ImageView;)V

    .line 55
    iget-object v0, p0, Lcom/mopub/nativeads/NativeViewHolder;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/mopub/nativeads/NativeResponse;->loadIconImage(Landroid/widget/ImageView;)V

    .line 56
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse;->getDaaIconClickthroughUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mopub/nativeads/NativeViewHolder;->addDaaIcon(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method updateExtras(Lcom/mopub/nativeads/NativeResponse;Lcom/mopub/nativeads/ViewBinder;)V
    .locals 8
    .param p1, "nativeResponse"    # Lcom/mopub/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewBinder"    # Lcom/mopub/nativeads/ViewBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 61
    iget-object v4, p0, Lcom/mopub/nativeads/NativeViewHolder;->mainView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 62
    const-string v4, "Attempted to bind extras on a null main view."

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void

    .line 65
    :cond_1
    iget-object v4, p2, Lcom/mopub/nativeads/ViewBinder;->extras:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p2, Lcom/mopub/nativeads/ViewBinder;->extras:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 67
    .local v2, "resourceId":I
    iget-object v4, p0, Lcom/mopub/nativeads/NativeViewHolder;->mainView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 68
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Lcom/mopub/nativeads/NativeResponse;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "content":Ljava/lang/Object;
    instance-of v4, v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    move-object v4, v3

    .line 72
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    check-cast v3, Landroid/widget/ImageView;

    .end local v3    # "view":Landroid/view/View;
    invoke-virtual {p1, v1, v3}, Lcom/mopub/nativeads/NativeResponse;->loadExtrasImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 74
    .restart local v3    # "view":Landroid/view/View;
    :cond_3
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    move-object v4, v3

    .line 76
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 78
    check-cast v3, Landroid/widget/TextView;

    .end local v3    # "view":Landroid/view/View;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "content":Ljava/lang/Object;
    invoke-direct {p0, v3, v0}, Lcom/mopub/nativeads/NativeViewHolder;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .restart local v0    # "content":Ljava/lang/Object;
    .restart local v3    # "view":Landroid/view/View;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View bound to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " should be an instance of TextView or ImageView."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
