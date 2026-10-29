.class Lcom/mopub/mobileads/AppLovinInterstitial$3;
.super Ljava/lang/Object;
.source "AppLovinInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AppLovinInterstitial;->failedToReceiveAd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/AppLovinInterstitial;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AppLovinInterstitial;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/AppLovinInterstitial;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mopub/mobileads/AppLovinInterstitial$3;->this$0:Lcom/mopub/mobileads/AppLovinInterstitial;

    iput p2, p0, Lcom/mopub/mobileads/AppLovinInterstitial$3;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial$3;->val$errorCode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial$3;->this$0:Lcom/mopub/mobileads/AppLovinInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AppLovinInterstitial;->access$100(Lcom/mopub/mobileads/AppLovinInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 136
    :goto_0
    return-void

    .line 124
    :cond_0
    iget v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial$3;->val$errorCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial$3;->this$0:Lcom/mopub/mobileads/AppLovinInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AppLovinInterstitial;->access$100(Lcom/mopub/mobileads/AppLovinInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 128
    :cond_1
    iget v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial$3;->val$errorCode:I

    if-gez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial$3;->this$0:Lcom/mopub/mobileads/AppLovinInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AppLovinInterstitial;->access$100(Lcom/mopub/mobileads/AppLovinInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial$3;->this$0:Lcom/mopub/mobileads/AppLovinInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AppLovinInterstitial;->access$100(Lcom/mopub/mobileads/AppLovinInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method
