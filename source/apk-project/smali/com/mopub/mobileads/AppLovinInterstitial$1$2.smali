.class Lcom/mopub/mobileads/AppLovinInterstitial$1$2;
.super Ljava/lang/Object;
.source "AppLovinInterstitial.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AppLovinInterstitial$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mopub/mobileads/AppLovinInterstitial$1;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AppLovinInterstitial$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mopub/mobileads/AppLovinInterstitial$1;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mopub/mobileads/AppLovinInterstitial$1$2;->this$1:Lcom/mopub/mobileads/AppLovinInterstitial$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial$1$2;->this$1:Lcom/mopub/mobileads/AppLovinInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AppLovinInterstitial$1;->this$0:Lcom/mopub/mobileads/AppLovinInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AppLovinInterstitial;->access$100(Lcom/mopub/mobileads/AppLovinInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 80
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial$1$2;->this$1:Lcom/mopub/mobileads/AppLovinInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AppLovinInterstitial$1;->this$0:Lcom/mopub/mobileads/AppLovinInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AppLovinInterstitial;->access$100(Lcom/mopub/mobileads/AppLovinInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 86
    return-void
.end method
