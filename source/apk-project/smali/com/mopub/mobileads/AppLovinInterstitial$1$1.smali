.class Lcom/mopub/mobileads/AppLovinInterstitial$1$1;
.super Ljava/lang/Object;
.source "AppLovinInterstitial.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


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
    .line 67
    iput-object p1, p0, Lcom/mopub/mobileads/AppLovinInterstitial$1$1;->this$1:Lcom/mopub/mobileads/AppLovinInterstitial$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial$1$1;->this$1:Lcom/mopub/mobileads/AppLovinInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AppLovinInterstitial$1;->this$0:Lcom/mopub/mobileads/AppLovinInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AppLovinInterstitial;->access$100(Lcom/mopub/mobileads/AppLovinInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onLeaveApplication()V

    .line 72
    return-void
.end method
