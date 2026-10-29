.class Lcom/mopub/mobileads/VastVideoViewController$4;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->createVideoView(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewController;

.field final synthetic val$videoView:Lcom/mopub/mobileads/VastVideoView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->val$videoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->val$videoView:Lcom/mopub/mobileads/VastVideoView;

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    .line 379
    invoke-static {v3}, Lcom/mopub/mobileads/VastVideoViewController;->access$400(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/mopub/mobileads/VastVideoView;->retryMediaPlayer(Landroid/media/MediaPlayer;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    :goto_0
    return v0

    .line 382
    :cond_0
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/VastVideoViewController;->access$1300(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 383
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->makeVideoInteractable()V

    .line 384
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/VastVideoViewController;->videoError(Z)V

    .line 385
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v2, v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1402(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    .line 387
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$400(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/mopub/mobileads/VastErrorCode;->GENERAL_LINEAR_AD_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    .line 388
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v4

    .line 387
    invoke-virtual {v0, v2, v3, v4}, Lcom/mopub/mobileads/VastVideoConfig;->handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V

    move v0, v1

    .line 390
    goto :goto_0
.end method
