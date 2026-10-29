.class Lcom/mopub/mobileads/AppLovinInterstitial$1;
.super Ljava/lang/Object;
.source "AppLovinInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AppLovinInterstitial;->showInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/AppLovinInterstitial;

.field final synthetic val$adToRender:Lcom/applovin/sdk/AppLovinAd;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AppLovinInterstitial;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/AppLovinInterstitial;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mopub/mobileads/AppLovinInterstitial$1;->this$0:Lcom/mopub/mobileads/AppLovinInterstitial;

    iput-object p2, p0, Lcom/mopub/mobileads/AppLovinInterstitial$1;->val$adToRender:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/applovin/adview/AppLovinAdView;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v2, p0, Lcom/mopub/mobileads/AppLovinInterstitial$1;->this$0:Lcom/mopub/mobileads/AppLovinInterstitial;

    invoke-static {v2}, Lcom/mopub/mobileads/AppLovinInterstitial;->access$000(Lcom/mopub/mobileads/AppLovinInterstitial;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    .line 67
    .local v0, "adView":Lcom/applovin/adview/AppLovinAdView;
    new-instance v1, Lcom/mopub/mobileads/AppLovinInterstitial$1$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AppLovinInterstitial$1$1;-><init>(Lcom/mopub/mobileads/AppLovinInterstitial$1;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 75
    new-instance v1, Lcom/mopub/mobileads/AppLovinInterstitial$1$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AppLovinInterstitial$1$2;-><init>(Lcom/mopub/mobileads/AppLovinInterstitial$1;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 88
    iget-object v1, p0, Lcom/mopub/mobileads/AppLovinInterstitial$1;->val$adToRender:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    .line 89
    return-void
.end method
