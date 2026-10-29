.class public Lcom/mopub/mobileads/VastManager;
.super Ljava/lang/Object;
.source "VastManager.java"

# interfaces
.implements Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastManager$VastManagerListener;
    }
.end annotation


# instance fields
.field private mScreenAreaDp:I

.field private mScreenAspectRatio:D

.field private mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVastXmlManagerAggregator:Lcom/mopub/mobileads/VastXmlManagerAggregator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastManager;->initializeScreenDimensions(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/VastManager;Lcom/mopub/mobileads/VastVideoConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastManager;
    .param p1, "x1"    # Lcom/mopub/mobileads/VastVideoConfig;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastManager;->updateDiskMediaFileUrl(Lcom/mopub/mobileads/VastVideoConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/VastManager;)Lcom/mopub/mobileads/VastManager$VastManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    return-object v0
.end method

.method private initializeScreenDimensions(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    const-string v6, "context cannot be null"

    invoke-static {p1, v6}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 140
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 141
    .local v4, "xPx":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v5

    .line 144
    .local v5, "yPx":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    .line 145
    .local v0, "density":F
    const/4 v6, 0x0

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_0

    .line 146
    const/high16 v0, 0x3f800000    # 1.0f

    .line 150
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 151
    .local v3, "screenWidth":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 152
    .local v2, "screenHeight":I
    int-to-double v6, v3

    int-to-double v8, v2

    div-double/2addr v6, v8

    iput-wide v6, p0, Lcom/mopub/mobileads/VastManager;->mScreenAspectRatio:D

    .line 153
    int-to-float v6, v3

    div-float/2addr v6, v0

    int-to-float v7, v2

    div-float/2addr v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/mopub/mobileads/VastManager;->mScreenAreaDp:I

    .line 154
    return-void
.end method

.method private updateDiskMediaFileUrl(Lcom/mopub/mobileads/VastVideoConfig;)Z
    .locals 3
    .param p1, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    const-string v2, "vastVideoConfig cannot be null"

    invoke-static {p1, v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "networkMediaFileUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/mopub/common/CacheService;->containsKeyDiskCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-static {v1}, Lcom/mopub/common/CacheService;->getFilePathDiskCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "filePathDiskCache":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setDiskMediaFileUrl(Ljava/lang/String;)V

    .line 131
    const/4 v2, 0x1

    .line 133
    .end local v0    # "filePathDiskCache":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->cancel(Z)Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    .line 80
    :cond_0
    return-void
.end method

.method getScreenAreaDp()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    iget v0, p0, Lcom/mopub/mobileads/VastManager;->mScreenAreaDp:I

    return v0
.end method

.method getScreenAspectRatio()D
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/mopub/mobileads/VastManager;->mScreenAspectRatio:D

    return-wide v0
.end method

.method public onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 3
    .param p1, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    iget-object v1, p0, Lcom/mopub/mobileads/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "mVastManagerListener cannot be null here. Did you call prepareVastVideoConfiguration()?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    if-nez p1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/mopub/mobileads/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 113
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastManager;->updateDiskMediaFileUrl(Lcom/mopub/mobileads/VastVideoConfig;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/mopub/mobileads/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    invoke-interface {v1, p1}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_0

    .line 100
    :cond_2
    new-instance v0, Lcom/mopub/mobileads/VastManager$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/VastManager$1;-><init>(Lcom/mopub/mobileads/VastManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 112
    .local v0, "videoDownloaderListener":Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mopub/mobileads/VideoDownloader;->cache(Ljava/lang/String;Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;)V

    goto :goto_0
.end method

.method public prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/VastManager$VastManagerListener;Landroid/content/Context;)V
    .locals 7
    .param p1, "vastXml"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "vastManagerListener"    # Lcom/mopub/mobileads/VastManager$VastManagerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    const-string v0, "vastManagerListener cannot be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const-string v0, "context cannot be null"

    invoke-static {p3, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    if-nez v0, :cond_0

    .line 59
    iput-object p2, p0, Lcom/mopub/mobileads/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    .line 60
    new-instance v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;

    iget-wide v2, p0, Lcom/mopub/mobileads/VastManager;->mScreenAspectRatio:D

    iget v4, p0, Lcom/mopub/mobileads/VastManager;->mScreenAreaDp:I

    .line 61
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;-><init>(Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;DILandroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v6

    .line 66
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "Failed to aggregate vast xml"

    invoke-static {v0, v6}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_0
.end method
