.class Lcom/mopub/nativeads/NativeResponse$1;
.super Ljava/lang/Object;
.source "NativeResponse.java"

# interfaces
.implements Lcom/mopub/nativeads/BaseForwardingNativeAd$NativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeResponse;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/nativeads/NativeAdInterface;Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/NativeResponse;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/nativeads/NativeResponse;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mopub/nativeads/NativeResponse$1;->this$0:Lcom/mopub/nativeads/NativeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse$1;->this$0:Lcom/mopub/nativeads/NativeResponse;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeResponse;->handleClick(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method public onAdImpressed()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse$1;->this$0:Lcom/mopub/nativeads/NativeResponse;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeResponse;->recordImpression(Landroid/view/View;)V

    .line 114
    return-void
.end method
