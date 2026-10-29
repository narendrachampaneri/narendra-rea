.class public Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;
.super Ljava/lang/Object;
.source "VungleRewardedVideo.java"

# interfaces
.implements Lcom/mopub/common/MediationSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VungleRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VungleMediationSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final closeButtonText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final keepWatchingButtonText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final userId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-static {p1}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->access$1100(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->userId:Ljava/lang/String;

    .line 278
    invoke-static {p1}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->access$1200(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->title:Ljava/lang/String;

    .line 279
    invoke-static {p1}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->access$1300(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->body:Ljava/lang/String;

    .line 280
    invoke-static {p1}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->access$1400(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->closeButtonText:Ljava/lang/String;

    .line 281
    invoke-static {p1}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->access$1500(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->keepWatchingButtonText:Ljava/lang/String;

    .line 282
    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;Lcom/mopub/mobileads/VungleRewardedVideo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;
    .param p2, "x1"    # Lcom/mopub/mobileads/VungleRewardedVideo$1;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;-><init>(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->body:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->closeButtonText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->keepWatchingButtonText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->userId:Ljava/lang/String;

    return-object v0
.end method
