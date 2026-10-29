.class public Lcom/mopub/mobileads/AdViewController;
.super Ljava/lang/Object;
.source "AdViewController.java"


# static fields
.field static final BACKOFF_FACTOR:D = 1.5

.field static final DEFAULT_REFRESH_TIME_MILLISECONDS:I = 0xea60

.field static final MAX_REFRESH_TIME_MILLISECONDS:I = 0x927c0

.field private static final WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private static final sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveRequest:Lcom/mopub/network/AdRequest;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAdListener:Lcom/mopub/network/AdRequest$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAdResponse:Lcom/mopub/network/AdResponse;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAdWasLoaded:Z

.field private mAutoRefreshEnabled:Z

.field mBackoffPower:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mBroadcastIdentifier:J

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Z

.field private mIsLoading:Z

.field private mIsTesting:Z

.field private mKeywords:Ljava/lang/String;

.field private mLocalExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mMoPubView:Lcom/mopub/mobileads/MoPubView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPreviousAutoRefreshSetting:Z

.field private final mRefreshRunnable:Ljava/lang/Runnable;

.field private mRefreshTimeMillis:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTimeoutMilliseconds:I

.field private mUrl:Ljava/lang/String;

.field private mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 47
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Lcom/mopub/mobileads/MoPubView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v1, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mLocalExtras:Ljava/util/Map;

    .line 79
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdViewController;->mAutoRefreshEnabled:Z

    .line 80
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdViewController;->mPreviousAutoRefreshSetting:Z

    .line 102
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/mopub/mobileads/AdViewController;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->mTimeoutMilliseconds:I

    .line 107
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->mBroadcastIdentifier:J

    .line 109
    new-instance v0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    .line 112
    new-instance v0, Lcom/mopub/mobileads/AdViewController$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/AdViewController$1;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdListener:Lcom/mopub/network/AdRequest$Listener;

    .line 124
    new-instance v0, Lcom/mopub/mobileads/AdViewController$2;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/AdViewController$2;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 129
    const v0, 0xea60

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mHandler:Landroid/os/Handler;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/AdViewController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->internalLoadAd()V

    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdViewController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdViewController;->getAdLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private cancelRefreshTimer()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 527
    return-void
.end method

.method private getAdLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 562
    const/4 v3, 0x0

    .line 563
    .local v3, "width":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 564
    .local v0, "height":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v4, :cond_0

    .line 565
    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v4}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v3

    .line 566
    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v4}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    .line 569
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/mopub/mobileads/AdViewController;->getShouldHonorServerDimensions(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    .line 570
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 571
    .local v2, "scaledWidth":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 573
    .local v1, "scaledHeight":I
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v4, v2, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 575
    .end local v1    # "scaledHeight":I
    .end local v2    # "scaledWidth":I
    :goto_0
    return-object v4

    :cond_1
    sget-object v4, Lcom/mopub/mobileads/AdViewController;->WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0
.end method

.method static getErrorCodeFromVolleyError(Lcom/mopub/volley/VolleyError;Landroid/content/Context;)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 3
    .param p0, "error"    # Lcom/mopub/volley/VolleyError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    .line 183
    .local v0, "networkResponse":Lcom/mopub/volley/NetworkResponse;
    instance-of v1, p0, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_0

    .line 184
    sget-object v1, Lcom/mopub/mobileads/AdViewController$4;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    check-cast p0, Lcom/mopub/network/MoPubNetworkError;

    .end local p0    # "error":Lcom/mopub/volley/VolleyError;
    invoke-virtual {p0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 190
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 205
    :goto_0
    return-object v1

    .line 186
    :pswitch_0
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 188
    :pswitch_1
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 194
    .restart local p0    # "error":Lcom/mopub/volley/VolleyError;
    :cond_0
    if-nez v0, :cond_2

    .line 195
    invoke-static {p1}, Lcom/mopub/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 198
    :cond_1
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    iget v1, v1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v2, 0x190

    if-lt v1, v2, :cond_3

    .line 202
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 205
    :cond_3
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getShouldHonorServerDimensions(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 98
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private internalLoadAd()V
    .locals 2

    .prologue
    .line 219
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdWasLoaded:Z

    .line 220
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "Can\'t load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    const-string v1, "Can\'t load an ad because there is no network connectivity."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->scheduleRefreshTimerIfEnabled()V

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->generateAdUrl()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "adUrl":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->loadNonJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 530
    iget-object v5, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    if-nez v5, :cond_1

    move v3, v4

    .line 541
    :cond_0
    :goto_0
    return v3

    .line 534
    :cond_1
    iget-object v5, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    .line 535
    .local v2, "result":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 538
    iget-object v5, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    .line 539
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 540
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 541
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private setAutorefreshEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 370
    iget-boolean v2, p0, Lcom/mopub/mobileads/AdViewController;->mAdWasLoaded:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/mopub/mobileads/AdViewController;->mAutoRefreshEnabled:Z

    if-eq v2, p1, :cond_2

    const/4 v0, 0x1

    .line 371
    .local v0, "autorefreshChanged":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 372
    if-eqz p1, :cond_3

    const-string v1, "enabled"

    .line 373
    .local v1, "enabledString":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for ad unit ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 376
    .end local v1    # "enabledString":Ljava/lang/String;
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->mAutoRefreshEnabled:Z

    .line 377
    iget-boolean v2, p0, Lcom/mopub/mobileads/AdViewController;->mAdWasLoaded:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/mopub/mobileads/AdViewController;->mAutoRefreshEnabled:Z

    if-eqz v2, :cond_4

    .line 378
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 382
    :cond_1
    :goto_2
    return-void

    .line 370
    .end local v0    # "autorefreshChanged":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    .restart local v0    # "autorefreshChanged":Z
    :cond_3
    const-string v1, "disabled"

    goto :goto_1

    .line 379
    :cond_4
    iget-boolean v2, p0, Lcom/mopub/mobileads/AdViewController;->mAutoRefreshEnabled:Z

    if-nez v2, :cond_1

    .line 380
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->cancelRefreshTimer()V

    goto :goto_2
.end method

.method public static setShouldHonorServerDimensions(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 94
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method


# virtual methods
.method adDidFail(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 488
    const-string v1, "Ad failed to load."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    .line 491
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    .line 492
    .local v0, "moPubView":Lcom/mopub/mobileads/MoPubView;
    if-nez v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 497
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->adFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 413
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    invoke-virtual {v0}, Lcom/mopub/network/AdRequest;->cancel()V

    .line 419
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    .line 422
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->setAutorefreshEnabled(Z)V

    .line 423
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->cancelRefreshTimer()V

    .line 428
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 429
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    .line 430
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsDestroyed:Z

    goto :goto_0
.end method

.method public customEventActionWillBegin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->registerClick()V

    .line 606
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 600
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 601
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    .line 594
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->trackImpression()V

    .line 595
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 596
    return-void
.end method

.method fetchAd(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v6

    .line 456
    .local v6, "moPubView":Lcom/mopub/mobileads/MoPubView;
    if-eqz v6, :cond_0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 457
    :cond_0
    const-string v1, "Can\'t load an ad in this ad view because it was destroyed."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    .line 471
    :goto_0
    return-void

    .line 462
    :cond_1
    new-instance v0, Lcom/mopub/network/AdRequest;

    .line 463
    invoke-virtual {v6}, Lcom/mopub/mobileads/MoPubView;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mopub/mobileads/AdViewController;->mAdListener:Lcom/mopub/network/AdRequest$Listener;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/AdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdRequest$Listener;)V

    .line 468
    .local v0, "adRequest":Lcom/mopub/network/AdRequest;
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v7

    .line 469
    .local v7, "requestQueue":Lcom/mopub/volley/RequestQueue;
    invoke-virtual {v7, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 470
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    goto :goto_0
.end method

.method forceRefresh()V
    .locals 0

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    .line 475
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    .line 476
    return-void
.end method

.method forceSetAutorefreshEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->mPreviousAutoRefreshSetting:Z

    .line 366
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdViewController;->setAutorefreshEnabled(Z)V

    .line 367
    return-void
.end method

.method generateAdUrl()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 484
    :goto_0
    return-object v0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    .line 481
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mKeywords:Ljava/lang/String;

    .line 482
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mLocation:Landroid/location/Location;

    .line 483
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withLocation(Landroid/location/Location;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    const-string v1, "ads.mopub.com"

    .line 484
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getAdConfiguration()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 402
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 333
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdReport()Lcom/mopub/common/AdReport;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Lcom/mopub/common/AdReport;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/AdReport;-><init>(Ljava/lang/String;Lcom/mopub/common/ClientMetadata;Lcom/mopub/network/AdResponse;)V

    .line 389
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAdTimeoutDelay()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutorefreshEnabled()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mAutoRefreshEnabled:Z

    return v0
.end method

.method public getBroadcastIdentifier()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->mBroadcastIdentifier:J

    return-wide v0
.end method

.method public getClickTrackingUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method getLocalExtras()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mLocalExtras:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mLocalExtras:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getMoPubView()Lcom/mopub/mobileads/MoPubView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getRefreshTimeMillis()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getStringBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTesting()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsTesting:Z

    return v0
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsDestroyed:Z

    return v0
.end method

.method public isFacebookSupported()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 618
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    .line 215
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->internalLoadAd()V

    .line 216
    return-void
.end method

.method loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 259
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mopub/mobileads/AdViewController;->mIsLoading:Z

    .line 261
    const-string v2, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoPubErrorCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-nez v1, :cond_1

    const-string v0, ""

    .line 264
    .local v0, "failUrl":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading failover url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->loadNonJavascript(Ljava/lang/String;)V

    .line 271
    :goto_2
    return-void

    .line 261
    .end local v0    # "failUrl":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getFailoverUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 269
    .restart local v0    # "failUrl":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/AdViewController;->adDidFail(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_2
.end method

.method loadNonJavascript(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 237
    if-nez p1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 240
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsLoading:Z

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already loading an ad for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wait to finish."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_2
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mUrl:Ljava/lang/String;

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsLoading:Z

    .line 250
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->fetchAd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method onAdLoadError(Lcom/mopub/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/mopub/volley/VolleyError;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 154
    instance-of v2, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 161
    check-cast v1, Lcom/mopub/network/MoPubNetworkError;

    .line 162
    .local v1, "moPubNetworkError":Lcom/mopub/network/MoPubNetworkError;
    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    .line 167
    .end local v1    # "moPubNetworkError":Lcom/mopub/network/MoPubNetworkError;
    :cond_0
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/mopub/mobileads/AdViewController;->getErrorCodeFromVolleyError(Lcom/mopub/volley/VolleyError;Landroid/content/Context;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v0

    .line 168
    .local v0, "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    if-ne v0, v2, :cond_1

    .line 169
    iget v2, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    .line 173
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->adDidFail(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 174
    return-void
.end method

.method onAdLoadSuccess(Lcom/mopub/network/AdResponse;)V
    .locals 2
    .param p1, "adResponse"    # Lcom/mopub/network/AdResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 135
    const/4 v1, 0x1

    iput v1, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    .line 136
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    .line 138
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/mopub/mobileads/AdViewController;->mTimeoutMilliseconds:I

    .line 140
    :goto_0
    iput v1, p0, Lcom/mopub/mobileads/AdViewController;->mTimeoutMilliseconds:I

    .line 141
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    .line 142
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    .line 145
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-static {v1, p0}, Lcom/mopub/mobileads/AdLoader;->fromAdResponse(Lcom/mopub/network/AdResponse;Lcom/mopub/mobileads/AdViewController;)Lcom/mopub/mobileads/AdLoader;

    move-result-object v0

    .line 146
    .local v0, "adLoader":Lcom/mopub/mobileads/AdLoader;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdLoader;->load()V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 150
    return-void

    .line 138
    .end local v0    # "adLoader":Lcom/mopub/mobileads/AdLoader;
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    .line 140
    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method pauseRefresh()V
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mAutoRefreshEnabled:Z

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mPreviousAutoRefreshSetting:Z

    .line 357
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->setAutorefreshEnabled(Z)V

    .line 358
    return-void
.end method

.method registerClick()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->CLICK_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {v0, v1, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 452
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reload ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->loadNonJavascript(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method scheduleRefreshTimerIfEnabled()V
    .locals 10

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->cancelRefreshTimer()V

    .line 502
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mAutoRefreshEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    .line 506
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    iget v8, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    mul-long/2addr v4, v6

    .line 505
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 504
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 508
    :cond_0
    return-void
.end method

.method setAdContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/AdViewController$3;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/AdViewController$3;-><init>(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 559
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 309
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setClickthroughUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickthroughUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 611
    return-void
.end method

.method public setFacebookSupported(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 625
    return-void
.end method

.method setFailUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "failUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mKeywords:Ljava/lang/String;

    .line 294
    return-void
.end method

.method setLocalExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mLocalExtras:Ljava/util/Map;

    .line 514
    return-void

    .line 511
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mLocation:Landroid/location/Location;

    .line 302
    return-void
.end method

.method setNotLoading()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsLoading:Z

    .line 280
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    invoke-virtual {v0}, Lcom/mopub/network/AdRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    invoke-virtual {v0}, Lcom/mopub/network/AdRequest;->cancel()V

    .line 284
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    .line 286
    :cond_1
    return-void
.end method

.method setRefreshTimeMillis(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "refreshTimeMillis"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 588
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    .line 589
    return-void
.end method

.method public setTesting(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->mIsTesting:Z

    .line 398
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "milliseconds"    # I

    .prologue
    .line 317
    iput p1, p0, Lcom/mopub/mobileads/AdViewController;->mTimeoutMilliseconds:I

    .line 318
    return-void
.end method

.method trackImpression()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->IMPRESSION_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {v0, v1, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 445
    :cond_0
    return-void
.end method

.method unpauseRefresh()V
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mPreviousAutoRefreshSetting:Z

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->setAutorefreshEnabled(Z)V

    .line 362
    return-void
.end method
