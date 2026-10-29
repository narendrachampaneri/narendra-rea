.class Lcom/mopub/nativeads/NativeResponse$NativeViewClickListener;
.super Ljava/lang/Object;
.source "NativeResponse.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/NativeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeViewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/NativeResponse;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/nativeads/NativeResponse;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/mopub/nativeads/NativeResponse$NativeViewClickListener;->this$0:Lcom/mopub/nativeads/NativeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 418
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse$NativeViewClickListener;->this$0:Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeResponse;->handleClick(Landroid/view/View;)V

    .line 419
    return-void
.end method
