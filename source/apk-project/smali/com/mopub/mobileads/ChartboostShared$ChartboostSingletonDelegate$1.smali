.class final Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate$1;
.super Ljava/lang/Object;
.source "ChartboostShared.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onInterstitialDismissed()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 106
    return-void
.end method

.method public onInterstitialLoaded()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onInterstitialShown()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onLeaveApplication()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
