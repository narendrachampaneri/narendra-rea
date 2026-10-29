.class public Lcom/mopub/mobileads/VastVideoView;
.super Landroid/widget/VideoView;
.source "VastVideoView.java"


# static fields
.field private static final MAX_VIDEO_RETRIES:I = 0x1

.field private static final VIDEO_VIEW_FILE_PERMISSION_ERROR:I = -0x80000000


# instance fields
.field private mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVideoRetries:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoView;->createMediaMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 39
    return-void
.end method


# virtual methods
.method createMediaMetadataRetriever()Landroid/media/MediaMetadataRetriever;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 128
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getBlurLastVideoFrameTask()Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    return-object v0
.end method

.method getVideoRetries()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    iget v0, p0, Lcom/mopub/mobileads/VastVideoView;->mVideoRetries:I

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    .line 72
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->cancel(Z)Z

    .line 75
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoView;->mVideoRetries:I

    .line 122
    return-void
.end method

.method public prepareBlurredLastVideoFrame(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 4
    .param p1, "blurredLastVideoFrameImageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "diskMediaFileUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 53
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoView;->getDuration()I

    move-result v3

    invoke-direct {v1, v2, p1, v3}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;-><init>(Landroid/media/MediaMetadataRetriever;Landroid/widget/ImageView;I)V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to blur last video frame"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method retryMediaPlayer(Landroid/media/MediaPlayer;IILjava/lang/String;)Z
    .locals 8
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I
    .param p4, "diskMediaFileUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 85
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-ge v6, v7, :cond_0

    if-ne p2, v4, :cond_0

    const/high16 v6, -0x80000000

    if-ne p3, v6, :cond_0

    iget v6, p0, Lcom/mopub/mobileads/VastVideoView;->mVideoRetries:I

    if-ge v6, v4, :cond_0

    .line 90
    const/4 v2, 0x0

    .line 92
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 93
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 102
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 103
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoView;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    invoke-static {v3}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 109
    iget v5, p0, Lcom/mopub/mobileads/VastVideoView;->mVideoRetries:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mopub/mobileads/VastVideoView;->mVideoRetries:I

    .line 112
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    :goto_0
    return v4

    .line 105
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v2}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 109
    iget v4, p0, Lcom/mopub/mobileads/VastVideoView;->mVideoRetries:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mopub/mobileads/VastVideoView;->mVideoRetries:I

    move v4, v5

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 109
    iget v5, p0, Lcom/mopub/mobileads/VastVideoView;->mVideoRetries:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mopub/mobileads/VastVideoView;->mVideoRetries:I

    throw v4

    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    :cond_0
    move v4, v5

    .line 112
    goto :goto_0

    .line 108
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 105
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method setBlurLastVideoFrameTask(Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;)V
    .locals 0
    .param p1, "blurLastVideoFrameTask"    # Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    .line 154
    return-void
.end method

.method setMediaMetadataRetriever(Landroid/media/MediaMetadataRetriever;)V
    .locals 0
    .param p1, "mediaMetadataRetriever"    # Landroid/media/MediaMetadataRetriever;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 139
    return-void
.end method
