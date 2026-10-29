.class Lcom/mopub/mobileads/VungleInterstitial$1$1;
.super Ljava/lang/Object;
.source "VungleInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VungleInterstitial$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mopub/mobileads/VungleInterstitial$1;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VungleInterstitial$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mopub/mobileads/VungleInterstitial$1;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mopub/mobileads/VungleInterstitial$1$1;->this$1:Lcom/mopub/mobileads/VungleInterstitial$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$1$1;->this$1:Lcom/mopub/mobileads/VungleInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/VungleInterstitial$1;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$200(Lcom/mopub/mobileads/VungleInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 99
    return-void
.end method
