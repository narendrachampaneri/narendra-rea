.class Lcom/mopub/mobileads/AdColonyInterstitial$2;
.super Ljava/lang/Object;
.source "AdColonyInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdColonyInterstitial;->onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/AdColonyInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdColonyInterstitial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/AdColonyInterstitial;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mopub/mobileads/AdColonyInterstitial$2;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial$2;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyInterstitial;->access$300(Lcom/mopub/mobileads/AdColonyInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 162
    return-void
.end method
