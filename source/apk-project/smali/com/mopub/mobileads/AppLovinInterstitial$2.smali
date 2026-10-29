.class Lcom/mopub/mobileads/AppLovinInterstitial$2;
.super Ljava/lang/Object;
.source "AppLovinInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AppLovinInterstitial;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/AppLovinInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AppLovinInterstitial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/AppLovinInterstitial;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mopub/mobileads/AppLovinInterstitial$2;->this$0:Lcom/mopub/mobileads/AppLovinInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinInterstitial$2;->this$0:Lcom/mopub/mobileads/AppLovinInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AppLovinInterstitial;->access$100(Lcom/mopub/mobileads/AppLovinInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 111
    return-void
.end method
