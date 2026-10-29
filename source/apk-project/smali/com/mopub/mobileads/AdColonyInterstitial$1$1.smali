.class Lcom/mopub/mobileads/AdColonyInterstitial$1$1;
.super Ljava/lang/Object;
.source "AdColonyInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdColonyInterstitial$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mopub/mobileads/AdColonyInterstitial$1;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdColonyInterstitial$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mopub/mobileads/AdColonyInterstitial$1;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mopub/mobileads/AdColonyInterstitial$1$1;->this$1:Lcom/mopub/mobileads/AdColonyInterstitial$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial$1$1;->this$1:Lcom/mopub/mobileads/AdColonyInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AdColonyInterstitial$1;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyInterstitial;->access$300(Lcom/mopub/mobileads/AdColonyInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 139
    return-void
.end method
