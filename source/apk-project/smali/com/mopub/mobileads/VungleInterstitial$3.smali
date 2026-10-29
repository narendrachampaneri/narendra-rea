.class Lcom/mopub/mobileads/VungleInterstitial$3;
.super Ljava/lang/Object;
.source "VungleInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VungleInterstitial;->onAdEnd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VungleInterstitial;

.field final synthetic val$wasCallToActionClicked:Z


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VungleInterstitial;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/VungleInterstitial;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mopub/mobileads/VungleInterstitial$3;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    iput-boolean p2, p0, Lcom/mopub/mobileads/VungleInterstitial$3;->val$wasCallToActionClicked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "MoPub"

    const-string v1, "Vungle interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$3;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$200(Lcom/mopub/mobileads/VungleInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 140
    iget-boolean v0, p0, Lcom/mopub/mobileads/VungleInterstitial$3;->val$wasCallToActionClicked:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$3;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$200(Lcom/mopub/mobileads/VungleInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 143
    :cond_0
    return-void
.end method
