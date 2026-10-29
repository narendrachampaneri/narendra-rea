.class Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd$1;
.super Ljava/lang/Object;
.source "MoPubCustomEventNative.java"

# interfaces
.implements Lcom/mopub/nativeads/CustomEventNative$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagesCached()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->access$000(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/NativeAdInterface;)V

    .line 95
    return-void
.end method

.method public onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/mopub/nativeads/NativeErrorCode;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->access$000(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 100
    return-void
.end method
