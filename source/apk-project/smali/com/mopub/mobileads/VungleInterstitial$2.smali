.class Lcom/mopub/mobileads/VungleInterstitial$2;
.super Ljava/lang/Object;
.source "VungleInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VungleInterstitial;->onAdStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VungleInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VungleInterstitial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/VungleInterstitial;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mopub/mobileads/VungleInterstitial$2;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "MoPub"

    const-string v1, "Showing Vungle interstitial ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$2;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$200(Lcom/mopub/mobileads/VungleInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 129
    return-void
.end method
