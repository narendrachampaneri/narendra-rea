.class Lcom/mopub/nativeads/NativeResponse$3;
.super Ljava/lang/Object;
.source "NativeResponse.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeResponse;->openClickDestinationUrl(Landroid/view/View;Lcom/mopub/nativeads/SpinningProgressView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/NativeResponse;

.field final synthetic val$spinningProgressView:Lcom/mopub/nativeads/SpinningProgressView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeResponse;Landroid/view/View;Lcom/mopub/nativeads/SpinningProgressView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/nativeads/NativeResponse;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/mopub/nativeads/NativeResponse$3;->this$0:Lcom/mopub/nativeads/NativeResponse;

    iput-object p2, p0, Lcom/mopub/nativeads/NativeResponse$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/mopub/nativeads/NativeResponse$3;->val$spinningProgressView:Lcom/mopub/nativeads/SpinningProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private removeSpinningProgressView()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse$3;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse$3;->val$spinningProgressView:Lcom/mopub/nativeads/SpinningProgressView;

    invoke-virtual {v0}, Lcom/mopub/nativeads/SpinningProgressView;->removeFromRoot()Z

    .line 399
    :cond_0
    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "lastFailedUrlAction"    # Lcom/mopub/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeResponse$3;->removeSpinningProgressView()V

    .line 393
    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "urlAction"    # Lcom/mopub/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeResponse$3;->removeSpinningProgressView()V

    .line 387
    return-void
.end method
