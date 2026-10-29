.class Lcom/mopub/nativeads/MoPubNative$4;
.super Ljava/lang/Object;
.source "MoPubNative.java"

# interfaces
.implements Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubNative;->onAdLoad(Lcom/mopub/network/AdResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MoPubNative;

.field final synthetic val$response:Lcom/mopub/network/AdResponse;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/network/AdResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/nativeads/MoPubNative;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative$4;->this$0:Lcom/mopub/nativeads/MoPubNative;

    iput-object p2, p0, Lcom/mopub/nativeads/MoPubNative$4;->val$response:Lcom/mopub/network/AdResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/mopub/nativeads/NativeErrorCode;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$4;->this$0:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNative$4;->val$response:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getFailoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubNative;->requestNativeAd(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/NativeAdInterface;)V
    .locals 8
    .param p1, "nativeAd"    # Lcom/mopub/nativeads/NativeAdInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$4;->this$0:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->getContextOrDestroy()Landroid/content/Context;

    move-result-object v1

    .line 230
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$4;->this$0:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->access$300(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    move-result-object v7

    new-instance v0, Lcom/mopub/nativeads/NativeResponse;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubNative$4;->val$response:Lcom/mopub/network/AdResponse;

    .line 234
    invoke-virtual {v2}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/nativeads/MoPubNative$4;->val$response:Lcom/mopub/network/AdResponse;

    .line 235
    invoke-virtual {v3}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/nativeads/MoPubNative$4;->this$0:Lcom/mopub/nativeads/MoPubNative;

    .line 236
    invoke-static {v4}, Lcom/mopub/nativeads/MoPubNative;->access$100(Lcom/mopub/nativeads/MoPubNative;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mopub/nativeads/MoPubNative$4;->this$0:Lcom/mopub/nativeads/MoPubNative;

    .line 238
    invoke-static {v5}, Lcom/mopub/nativeads/MoPubNative;->access$200(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    move-result-object v6

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/mopub/nativeads/NativeResponse;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/nativeads/NativeAdInterface;Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;)V

    .line 233
    invoke-interface {v7, v0}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeLoad(Lcom/mopub/nativeads/NativeResponse;)V

    goto :goto_0
.end method
