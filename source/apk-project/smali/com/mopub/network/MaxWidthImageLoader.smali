.class public Lcom/mopub/network/MaxWidthImageLoader;
.super Lcom/mopub/volley/toolbox/ImageLoader;
.source "MaxWidthImageLoader.java"


# instance fields
.field private final mMaxImageWidth:I


# direct methods
.method public constructor <init>(Lcom/mopub/volley/RequestQueue;Landroid/content/Context;Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;)V
    .locals 5
    .param p1, "queue"    # Lcom/mopub/volley/RequestQueue;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imageCache"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p3}, Lcom/mopub/volley/toolbox/ImageLoader;-><init>(Lcom/mopub/volley/RequestQueue;Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;)V

    .line 21
    const-string v3, "window"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 22
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 23
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 24
    .local v1, "size":Landroid/graphics/Point;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-ge v3, v4, :cond_0

    .line 25
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 31
    :goto_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/mopub/network/MaxWidthImageLoader;->mMaxImageWidth:I

    .line 32
    return-void

    .line 27
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    .locals 2
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    .prologue
    .line 36
    iget v0, p0, Lcom/mopub/network/MaxWidthImageLoader;->mMaxImageWidth:I

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v0, v1}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;II)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method
