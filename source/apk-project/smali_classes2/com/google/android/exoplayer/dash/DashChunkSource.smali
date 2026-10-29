.class public Lcom/google/android/exoplayer/dash/DashChunkSource;
.super Ljava/lang/Object;
.source "DashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;,
        Lcom/google/android/exoplayer/dash/DashChunkSource$NoAdaptationSetException;,
        Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
    }
.end annotation


# static fields
.field public static final USE_ALL_TRACKS:I = -0x1


# instance fields
.field private final adaptationSetIndex:I

.field private currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private final elapsedRealtimeOffsetUs:J

.field private final evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

.field private fatalError:Ljava/io/IOException;

.field private finishedCurrentManifest:Z

.field private firstAvailableSegmentNum:I

.field private final formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

.field private final formats:[Lcom/google/android/exoplayer/chunk/Format;

.field private final headerBuilder:Ljava/lang/StringBuilder;

.field private lastAvailableSegmentNum:I

.field private lastChunkWasInitialization:Z

.field private final liveEdgeLatencyUs:J

.field private final manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final maxHeight:I

.field private final maxWidth:I

.field private final representationHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final representationIndices:[I

.field private seekRange:Lcom/google/android/exoplayer/TimeRange;

.field private seekRangeValues:[J

.field private startAtLiveEdge:Z

.field private final systemClock:Lcom/google/android/exoplayer/util/Clock;

.field private final trackInfo:Lcom/google/android/exoplayer/TrackInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V
    .locals 15
    .param p1, "manifest"    # Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .param p2, "adaptationSetIndex"    # I
    .param p3, "representationIndices"    # [I
    .param p4, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p5, "formatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    .prologue
    .line 170
    const/4 v1, 0x0

    new-instance v7, Lcom/google/android/exoplayer/util/SystemClock;

    invoke-direct {v7}, Lcom/google/android/exoplayer/util/SystemClock;-><init>()V

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Ljava/util/List;)V
    .locals 6
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "formatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p3, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Representation;>;"
    invoke-static {p3}, Lcom/google/android/exoplayer/dash/DashChunkSource;->buildManifest(Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V

    .line 155
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;[Lcom/google/android/exoplayer/dash/mpd/Representation;)V
    .locals 6
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "formatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .param p3, "representations"    # [Lcom/google/android/exoplayer/dash/mpd/Representation;

    .prologue
    .line 142
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->buildManifest(Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;)V
    .locals 16
    .param p2, "adaptationSetIndex"    # I
    .param p3, "representationIndices"    # [I
    .param p4, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p5, "formatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .param p6, "liveEdgeLatencyMs"    # J
    .param p8, "elapsedRealtimeOffsetMs"    # J
    .param p10, "eventHandler"    # Landroid/os/Handler;
    .param p11, "eventListener"    # Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;I[I",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "JJ",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "manifestFetcher":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    new-instance v7, Lcom/google/android/exoplayer/util/SystemClock;

    invoke-direct {v7}, Lcom/google/android/exoplayer/util/SystemClock;-><init>()V

    const-wide/16 v0, 0x3e8

    mul-long v8, p6, v0

    const-wide/16 v0, 0x3e8

    mul-long v10, p8, v0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;)V
    .locals 16
    .param p2, "adaptationSetIndex"    # I
    .param p3, "representationIndices"    # [I
    .param p4, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p5, "formatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .param p6, "liveEdgeLatencyMs"    # J
    .param p8, "elapsedRealtimeOffsetMs"    # J
    .param p10, "startAtLiveEdge"    # Z
    .param p11, "eventHandler"    # Landroid/os/Handler;
    .param p12, "eventListener"    # Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;I[I",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "JJZ",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "manifestFetcher":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    new-instance v7, Lcom/google/android/exoplayer/util/SystemClock;

    invoke-direct {v7}, Lcom/google/android/exoplayer/util/SystemClock;-><init>()V

    const-wide/16 v0, 0x3e8

    mul-long v8, p6, v0

    const-wide/16 v0, 0x3e8

    mul-long v10, p8, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;)V

    .line 241
    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;)V
    .locals 14
    .param p2, "initialManifest"    # Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .param p3, "adaptationSetIndex"    # I
    .param p4, "representationIndices"    # [I
    .param p5, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p6, "formatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .param p7, "systemClock"    # Lcom/google/android/exoplayer/util/Clock;
    .param p8, "liveEdgeLatencyUs"    # J
    .param p10, "elapsedRealtimeOffsetUs"    # J
    .param p12, "startAtLiveEdge"    # Z
    .param p13, "eventHandler"    # Landroid/os/Handler;
    .param p14, "eventListener"    # Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            "I[I",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "Lcom/google/android/exoplayer/util/Clock;",
            "JJZ",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "manifestFetcher":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 249
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 250
    move/from16 v0, p3

    iput v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptationSetIndex:I

    .line 251
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationIndices:[I

    .line 252
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 253
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    .line 254
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    .line 255
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->liveEdgeLatencyUs:J

    .line 256
    move-wide/from16 v0, p10

    iput-wide v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    .line 257
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    .line 258
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    .line 259
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

    .line 260
    new-instance v9, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-direct {v9}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;-><init>()V

    iput-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    .line 261
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->headerBuilder:Ljava/lang/StringBuilder;

    .line 262
    const/4 v9, 0x2

    new-array v9, v9, [J

    iput-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRangeValues:[J

    .line 264
    iget-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move/from16 v0, p3

    invoke-static {v9, v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getDrmInitData(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I)Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 265
    iget-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v9, v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getFilteredRepresentations(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[I)[Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v8

    .line 267
    .local v8, "representations":[Lcom/google/android/exoplayer/dash/mpd/Representation;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    iget-wide v10, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodDurationMs:J

    const-wide/16 v12, -0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    const-wide/16 v6, -0x1

    .line 269
    .local v6, "periodDurationUs":J
    :goto_0
    new-instance v9, Lcom/google/android/exoplayer/TrackInfo;

    const/4 v10, 0x0

    aget-object v10, v8, v10

    iget-object v10, v10, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v10, v10, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-direct {v9, v10, v6, v7}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    iput-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    .line 271
    array-length v9, v8

    new-array v9, v9, [Lcom/google/android/exoplayer/chunk/Format;

    iput-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    .line 272
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    .line 273
    const/4 v5, 0x0

    .line 274
    .local v5, "maxWidth":I
    const/4 v4, 0x0

    .line 275
    .local v4, "maxHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v8

    if-ge v3, v9, :cond_2

    .line 276
    iget-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v10, v8, v3

    iget-object v10, v10, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    aput-object v10, v9, v3

    .line 277
    iget-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v9, v9, v3

    iget v9, v9, Lcom/google/android/exoplayer/chunk/Format;->width:I

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 278
    iget-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v9, v9, v3

    iget v9, v9, Lcom/google/android/exoplayer/chunk/Format;->height:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 279
    iget-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v9, v9, v3

    iget-object v9, v9, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/exoplayer/dash/DashChunkSource;->mimeTypeIsWebm(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-direct {v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;-><init>()V

    .line 281
    .local v2, "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    :goto_2
    iget-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    new-instance v11, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    aget-object v12, v8, v3

    new-instance v13, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-direct {v13, v2}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer/extractor/Extractor;)V

    invoke-direct {v11, v12, v13}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;-><init>(Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;)V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 267
    .end local v2    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    .end local v3    # "i":I
    .end local v4    # "maxHeight":I
    .end local v5    # "maxWidth":I
    .end local v6    # "periodDurationUs":J
    :cond_0
    const/4 v9, 0x0

    aget-object v9, v8, v9

    iget-wide v10, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodDurationMs:J

    const-wide/16 v12, 0x3e8

    mul-long v6, v10, v12

    goto :goto_0

    .line 279
    .restart local v3    # "i":I
    .restart local v4    # "maxHeight":I
    .restart local v5    # "maxWidth":I
    .restart local v6    # "periodDurationUs":J
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v2}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    goto :goto_2

    .line 284
    :cond_2
    iput v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->maxWidth:I

    .line 285
    iput v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->maxHeight:I

    .line 286
    iget-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    new-instance v10, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v10}, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    invoke-static {v9, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/dash/DashChunkSource;)Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/dash/DashChunkSource;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

    return-object v0
.end method

.method private static buildManifest(Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;"
        }
    .end annotation

    .prologue
    .line 714
    .local p0, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Representation;>;"
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 715
    .local v19, "firstRepresentation":Lcom/google/android/exoplayer/dash/mpd/Representation;
    new-instance v18, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;-><init>(IILjava/util/List;)V

    .line 716
    .local v18, "adaptationSet":Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    new-instance v2, Lcom/google/android/exoplayer/dash/mpd/Period;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodStartMs:J

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodDurationMs:J

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/dash/mpd/Period;-><init>(Ljava/lang/String;JJLjava/util/List;)V

    .line 718
    .local v2, "period":Lcom/google/android/exoplayer/dash/mpd/Period;
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodDurationMs:J

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodStartMs:J

    sub-long v6, v4, v8

    .line 719
    .local v6, "duration":J
    new-instance v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const-wide/16 v4, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;-><init>(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)V

    return-object v3
.end method

.method private static getDrmInitData(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I)Lcom/google/android/exoplayer/drm/DrmInitData;
    .locals 7
    .param p0, "manifest"    # Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .param p1, "adaptationSetIndex"    # I

    .prologue
    const/4 v6, 0x0

    .line 694
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->periods:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/dash/mpd/Period;

    iget-object v5, v5, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 695
    .local v0, "adaptationSet":Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    iget-object v5, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/dash/mpd/Representation;

    iget-object v5, v5, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;->mimeTypeIsWebm(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "video/webm"

    .line 697
    .local v3, "drmInitMimeType":Ljava/lang/String;
    :goto_0
    iget-object v5, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->contentProtections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 698
    const/4 v2, 0x0

    .line 709
    :cond_0
    return-object v2

    .line 695
    .end local v3    # "drmInitMimeType":Ljava/lang/String;
    :cond_1
    const-string v3, "video/mp4"

    goto :goto_0

    .line 700
    .restart local v3    # "drmInitMimeType":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 701
    .local v2, "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    iget-object v5, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->contentProtections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    .line 702
    .local v1, "contentProtection":Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    iget-object v5, v1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->data:[B

    if-eqz v5, :cond_3

    .line 703
    if-nez v2, :cond_4

    .line 704
    new-instance v2, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    .end local v2    # "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;-><init>(Ljava/lang/String;)V

    .line 706
    .restart local v2    # "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    :cond_4
    iget-object v5, v1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    iget-object v6, v1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->data:[B

    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;[B)V

    goto :goto_1
.end method

.method private static getFilteredRepresentations(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[I)[Lcom/google/android/exoplayer/dash/mpd/Representation;
    .locals 7
    .param p0, "manifest"    # Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .param p1, "adaptationSetIndex"    # I
    .param p2, "representationIndices"    # [I

    .prologue
    .line 677
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->periods:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/dash/mpd/Period;

    iget-object v5, v5, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 678
    .local v0, "adaptationSet":Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    iget-object v4, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    .line 679
    .local v4, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Representation;>;"
    if-nez p2, :cond_0

    .line 680
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 681
    .local v1, "filteredRepresentations":[Lcom/google/android/exoplayer/dash/mpd/Representation;
    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v2, v1

    .line 688
    .end local v1    # "filteredRepresentations":[Lcom/google/android/exoplayer/dash/mpd/Representation;
    .local v2, "filteredRepresentations":[Lcom/google/android/exoplayer/dash/mpd/Representation;
    :goto_0
    return-object v2

    .line 684
    .end local v2    # "filteredRepresentations":[Lcom/google/android/exoplayer/dash/mpd/Representation;
    :cond_0
    array-length v5, p2

    new-array v1, v5, [Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 685
    .restart local v1    # "filteredRepresentations":[Lcom/google/android/exoplayer/dash/mpd/Representation;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, p2

    if-ge v3, v5, :cond_1

    .line 686
    aget v5, p2, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/dash/mpd/Representation;

    aput-object v5, v1, v3

    .line 685
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 688
    .end local v1    # "filteredRepresentations":[Lcom/google/android/exoplayer/dash/mpd/Representation;
    .restart local v2    # "filteredRepresentations":[Lcom/google/android/exoplayer/dash/mpd/Representation;
    goto :goto_0
.end method

.method private getNowUs()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 668
    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v4

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    add-long/2addr v0, v2

    .line 671
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long/2addr v0, v4

    goto :goto_0
.end method

.method private static mimeTypeIsWebm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 607
    const-string v0, "video/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newInitializationChunk(Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/upstream/DataSource;I)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 8
    .param p1, "initializationUri"    # Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .param p2, "indexUri"    # Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .param p3, "representation"    # Lcom/google/android/exoplayer/dash/mpd/Representation;
    .param p4, "extractor"    # Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;
    .param p5, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p6, "trigger"    # I

    .prologue
    .line 614
    if-eqz p1, :cond_1

    .line 617
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->attemptMerge(Lcom/google/android/exoplayer/dash/mpd/RangedUri;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v7

    .line 618
    .local v7, "requestUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    if-nez v7, :cond_0

    .line 619
    move-object v7, p1

    .line 624
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-virtual {v7}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, v7, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v4, v7, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    invoke-virtual {p3}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 626
    .local v0, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    iget-object v5, p3, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object v2, p5

    move-object v3, v0

    move v4, p6

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;)V

    return-object v1

    .line 622
    .end local v0    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .end local v7    # "requestUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    :cond_1
    move-object v7, p2

    .restart local v7    # "requestUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    goto :goto_0
.end method

.method private newMediaChunk(Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer/upstream/DataSource;II)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 26
    .param p1, "representationHolder"    # Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p3, "segmentNum"    # I
    .param p4, "trigger"    # I

    .prologue
    .line 631
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-object/from16 v20, v0

    .line 632
    .local v20, "representation":Lcom/google/android/exoplayer/dash/mpd/Representation;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-object/from16 v21, v0

    .line 634
    .local v21, "segmentIndex":Lcom/google/android/exoplayer/dash/DashSegmentIndex;
    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v24

    .line 635
    .local v24, "startTimeUs":J
    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getDurationUs(I)J

    move-result-wide v4

    add-long v10, v24, v4

    .line 637
    .local v10, "endTimeUs":J
    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int v12, p3, v3

    .line 638
    .local v12, "absoluteSegmentNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v3, v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-nez v3, :cond_1

    invoke-interface/range {v21 .. v21}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    const/4 v13, 0x1

    .line 641
    .local v13, "isLastSegment":Z
    :goto_0
    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v22

    .line 642
    .local v22, "segmentUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    new-instance v2, Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 645
    .local v2, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodStartMs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->presentationTimeOffsetUs:J

    sub-long v14, v4, v6

    .line 647
    .local v14, "sampleOffsetUs":J
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v3, v3, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    const-string v4, "text/vtt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 648
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->vttHeaderOffsetUs:J

    cmp-long v3, v4, v14

    if-eqz v3, :cond_0

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->headerBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->headerBuilder:Ljava/lang/StringBuilder;

    const-string v4, "EXO-HEADER"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OFFSET:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->headerBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->vttHeader:[B

    .line 655
    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->vttHeaderOffsetUs:J

    .line 657
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;

    const/4 v6, 0x1

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    const-string v4, "text/vtt"

    invoke-static {v4}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v14

    .end local v14    # "sampleOffsetUs":J
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->vttHeader:[B

    move-object/from16 v16, v0

    move-object/from16 v4, p2

    move-object v5, v2

    move-wide/from16 v8, v24

    invoke-direct/range {v3 .. v16}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/drm/DrmInitData;[B)V

    .line 661
    :goto_1
    return-object v3

    .line 638
    .end local v2    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .end local v13    # "isLastSegment":Z
    .end local v22    # "segmentUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 661
    .restart local v2    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .restart local v13    # "isLastSegment":Z
    .restart local v14    # "sampleOffsetUs":J
    .restart local v22    # "segmentUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    :cond_2
    new-instance v3, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v4, p2

    move-object v5, v2

    move/from16 v6, p4

    move-wide/from16 v8, v24

    invoke-direct/range {v3 .. v19}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZJLcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/drm/DrmInitData;Z)V

    goto :goto_1
.end method

.method private notifySeekRangeChanged(Lcom/google/android/exoplayer/TimeRange;)V
    .locals 2
    .param p1, "seekRange"    # Lcom/google/android/exoplayer/TimeRange;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/dash/DashChunkSource$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/dash/DashChunkSource$1;-><init>(Lcom/google/android/exoplayer/dash/DashChunkSource;Lcom/google/android/exoplayer/TimeRange;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 732
    :cond_0
    return-void
.end method

.method private updateAvailableSegmentBounds(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V
    .locals 12
    .param p1, "segmentIndex"    # Lcom/google/android/exoplayer/dash/DashSegmentIndex;
    .param p2, "nowUs"    # J

    .prologue
    const-wide/16 v10, 0x3e8

    .line 554
    invoke-interface {p1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v2

    .line 555
    .local v2, "indexFirstAvailableSegmentNum":I
    invoke-interface {p1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v3

    .line 556
    .local v3, "indexLastAvailableSegmentNum":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 559
    iget-object v6, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v6, v6, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->availabilityStartTime:J

    mul-long/2addr v6, v10

    sub-long v4, p2, v6

    .line 560
    .local v4, "liveEdgeTimestampUs":J
    iget-object v6, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v6, v6, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->timeShiftBufferDepth:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 561
    iget-object v6, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v6, v6, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->timeShiftBufferDepth:J

    mul-long v0, v6, v10

    .line 562
    .local v0, "bufferDepthUs":J
    sub-long v6, v4, v0

    invoke-interface {p1, v6, v7}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(J)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 567
    .end local v0    # "bufferDepthUs":J
    :cond_0
    invoke-interface {p1, v4, v5}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(J)I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 569
    .end local v4    # "liveEdgeTimestampUs":J
    :cond_1
    iput v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->firstAvailableSegmentNum:I

    .line 570
    iput v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    .line 571
    return-void
.end method

.method private updateSeekRange(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V
    .locals 12
    .param p1, "segmentIndex"    # Lcom/google/android/exoplayer/dash/DashSegmentIndex;
    .param p2, "nowUs"    # J

    .prologue
    .line 574
    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->firstAvailableSegmentNum:I

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v2

    .line 575
    .local v2, "earliestSeekPosition":J
    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v8

    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getDurationUs(I)J

    move-result-wide v10

    add-long v4, v8, v10

    .line 577
    .local v4, "latestSeekPosition":J
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v1, v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v1, :cond_1

    .line 579
    invoke-interface {p1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v1

    const/4 v8, -0x1

    if-ne v1, v8, :cond_4

    .line 580
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v8, v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->availabilityStartTime:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    sub-long v6, p2, v8

    .line 595
    .local v6, "liveEdgeTimestampUs":J
    :cond_0
    :goto_0
    iget-wide v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->liveEdgeLatencyUs:J

    sub-long v8, v6, v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 598
    .end local v6    # "liveEdgeTimestampUs":J
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/TimeRange;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/TimeRange;-><init>(IJJ)V

    .line 600
    .local v0, "newSeekRange":Lcom/google/android/exoplayer/TimeRange;
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/TimeRange;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 601
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    .line 602
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource;->notifySeekRangeChanged(Lcom/google/android/exoplayer/TimeRange;)V

    .line 604
    :cond_3
    return-void

    .line 582
    .end local v0    # "newSeekRange":Lcom/google/android/exoplayer/TimeRange;
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v8

    invoke-interface {p1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getDurationUs(I)J

    move-result-wide v10

    add-long v6, v8, v10

    .line 584
    .restart local v6    # "liveEdgeTimestampUs":J
    invoke-interface {p1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->isExplicit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v8, v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->availabilityStartTime:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    sub-long v8, p2, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_0
.end method


# virtual methods
.method public continueBuffering(J)V
    .locals 26
    .param p1, "playbackPositionUs"    # J

    .prologue
    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 341
    .local v9, "newManifest":Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v0, v9, :cond_5

    if-eqz v9, :cond_5

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptationSetIndex:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationIndices:[I

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v9, v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getFilteredRepresentations(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[I)[Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v12

    .line 344
    .local v12, "newRepresentations":[Lcom/google/android/exoplayer/dash/mpd/Representation;
    move-object v2, v12

    .local v2, "arr$":[Lcom/google/android/exoplayer/dash/mpd/Representation;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v19, v2, v3

    .line 345
    .local v19, "representation":Lcom/google/android/exoplayer/dash/mpd/Representation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 347
    .local v20, "representationHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 348
    .local v13, "oldIndex":Lcom/google/android/exoplayer/dash/DashSegmentIndex;
    invoke-interface {v13}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v18

    .line 349
    .local v18, "oldIndexLastSegmentNum":I
    move/from16 v0, v18

    invoke-interface {v13, v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v22

    move/from16 v0, v18

    invoke-interface {v13, v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getDurationUs(I)J

    move-result-wide v24

    add-long v16, v22, v24

    .line 351
    .local v16, "oldIndexEndTimeUs":J
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v5

    .line 352
    .local v5, "newIndex":Lcom/google/android/exoplayer/dash/DashSegmentIndex;
    invoke-interface {v5}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v8

    .line 353
    .local v8, "newIndexFirstSegmentNum":I
    invoke-interface {v5, v8}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v10

    .line 354
    .local v10, "newIndexStartTimeUs":J
    cmp-long v22, v16, v10

    if-gez v22, :cond_2

    .line 357
    new-instance v22, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct/range {v22 .. v22}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_0

    .line 361
    :cond_2
    cmp-long v22, v16, v10

    if-nez v22, :cond_3

    .line 363
    invoke-interface {v13}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    sub-int v21, v22, v8

    .line 368
    .local v21, "segmentNumShift":I
    :goto_2
    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    move/from16 v22, v0

    add-int v22, v22, v21

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    .line 369
    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 366
    .end local v21    # "segmentNumShift":I
    :cond_3
    invoke-interface {v13, v10, v11}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(J)I

    move-result v22

    sub-int v21, v22, v8

    .restart local v21    # "segmentNumShift":I
    goto :goto_2

    .line 371
    .end local v5    # "newIndex":Lcom/google/android/exoplayer/dash/DashSegmentIndex;
    .end local v8    # "newIndexFirstSegmentNum":I
    .end local v10    # "newIndexStartTimeUs":J
    .end local v13    # "oldIndex":Lcom/google/android/exoplayer/dash/DashSegmentIndex;
    .end local v16    # "oldIndexEndTimeUs":J
    .end local v18    # "oldIndexLastSegmentNum":I
    .end local v19    # "representation":Lcom/google/android/exoplayer/dash/mpd/Representation;
    .end local v20    # "representationHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
    .end local v21    # "segmentNumShift":I
    :cond_4
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 372
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/exoplayer/dash/DashChunkSource;->finishedCurrentManifest:Z

    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getNowUs()J

    move-result-wide v14

    .line 375
    .local v14, "nowUs":J
    const/16 v22, 0x0

    aget-object v22, v12, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/exoplayer/dash/DashChunkSource;->updateAvailableSegmentBounds(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V

    .line 376
    const/16 v22, 0x0

    aget-object v22, v12, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/exoplayer/dash/DashChunkSource;->updateSeekRange(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V

    .line 383
    .end local v2    # "arr$":[Lcom/google/android/exoplayer/dash/mpd/Representation;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v12    # "newRepresentations":[Lcom/google/android/exoplayer/dash/mpd/Representation;
    .end local v14    # "nowUs":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->minUpdatePeriod:J

    .line 384
    .local v6, "minUpdatePeriod":J
    const-wide/16 v22, 0x0

    cmp-long v22, v6, v22

    if-nez v22, :cond_6

    .line 385
    const-wide/16 v6, 0x1388

    .line 388
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->finishedCurrentManifest:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifestLoadStartTimestamp()J

    move-result-wide v24

    add-long v24, v24, v6

    cmp-long v22, v22, v24

    if-lez v22, :cond_0

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/exoplayer/util/ManifestFetcher;->requestRefresh()V

    goto/16 :goto_0
.end method

.method public disable(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/MediaChunk;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->disable()V

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->disable()V

    .line 331
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    .line 332
    return-void
.end method

.method public enable()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->enable()V

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->enable()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v8

    .line 315
    .local v8, "segmentIndex":Lcom/google/android/exoplayer/dash/DashSegmentIndex;
    if-nez v8, :cond_1

    .line 316
    new-instance v0, Lcom/google/android/exoplayer/TimeRange;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v4, v4, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->duration:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/TimeRange;-><init>(IJJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->notifySeekRangeChanged(Lcom/google/android/exoplayer/TimeRange;)V

    .line 323
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getNowUs()J

    move-result-wide v6

    .line 320
    .local v6, "nowUs":J
    invoke-direct {p0, v8, v6, v7}, Lcom/google/android/exoplayer/dash/DashChunkSource;->updateAvailableSegmentBounds(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V

    .line 321
    invoke-direct {p0, v8, v6, v7}, Lcom/google/android/exoplayer/dash/DashChunkSource;->updateSeekRange(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V

    goto :goto_0
.end method

.method public final getChunkOperation(Ljava/util/List;JJLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 26
    .param p2, "seekPositionUs"    # J
    .param p4, "playbackPositionUs"    # J
    .param p6, "out"    # Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;JJ",
            "Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/MediaChunk;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v4, :cond_1

    .line 398
    const/4 v4, 0x0

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    iput v9, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v4, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    if-nez v4, :cond_3

    .line 404
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    move-object/from16 v5, p1

    move-wide/from16 v6, p4

    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->evaluate(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V

    .line 406
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v0, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v22, v0

    .line 407
    .local v22, "selectedFormat":Lcom/google/android/exoplayer/chunk/Format;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v4, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    move-object/from16 v0, p6

    iput v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    .line 409
    if-nez v22, :cond_4

    .line 410
    const/4 v4, 0x0

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto :goto_0

    .line 412
    :cond_4
    move-object/from16 v0, p6

    iget v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    if-ne v4, v9, :cond_5

    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-eqz v4, :cond_5

    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v4, v4, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 420
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 423
    .local v19, "representationHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 424
    .local v7, "selectedRepresentation":Lcom/google/android/exoplayer/dash/mpd/Representation;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-object/from16 v20, v0

    .line 425
    .local v20, "segmentIndex":Lcom/google/android/exoplayer/dash/DashSegmentIndex;
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    .line 427
    .local v8, "extractorWrapper":Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;
    const/4 v5, 0x0

    .line 428
    .local v5, "pendingInitializationUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    const/4 v6, 0x0

    .line 430
    .local v6, "pendingIndexUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v4, :cond_6

    .line 431
    invoke-virtual {v7}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getInitializationUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v5

    .line 433
    :cond_6
    if-nez v20, :cond_7

    .line 434
    invoke-virtual {v7}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndexUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v6

    .line 437
    :cond_7
    if-nez v5, :cond_8

    if-eqz v6, :cond_9

    .line 439
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v10, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer/dash/DashChunkSource;->newInitializationChunk(Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/upstream/DataSource;I)Lcom/google/android/exoplayer/chunk/Chunk;

    move-result-object v12

    .line 441
    .local v12, "initializationChunk":Lcom/google/android/exoplayer/chunk/Chunk;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    .line 442
    move-object/from16 v0, p6

    iput-object v12, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    .line 447
    .end local v12    # "initializationChunk":Lcom/google/android/exoplayer/chunk/Chunk;
    :cond_9
    invoke-interface/range {v20 .. v20}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_e

    const/4 v11, 0x1

    .line 448
    .local v11, "indexUnbounded":Z
    :goto_1
    if-eqz v11, :cond_b

    .line 452
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getNowUs()J

    move-result-wide v14

    .line 453
    .local v14, "nowUs":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->firstAvailableSegmentNum:I

    move/from16 v16, v0

    .line 454
    .local v16, "oldFirstAvailableSegmentNum":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    move/from16 v17, v0

    .line 455
    .local v17, "oldLastAvailableSegmentNum":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/exoplayer/dash/DashChunkSource;->updateAvailableSegmentBounds(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V

    .line 456
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->firstAvailableSegmentNum:I

    move/from16 v0, v16

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    move/from16 v0, v17

    if-eq v0, v4, :cond_b

    .line 458
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/exoplayer/dash/DashChunkSource;->updateSeekRange(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V

    .line 461
    .end local v14    # "nowUs":J
    .end local v16    # "oldFirstAvailableSegmentNum":I
    .end local v17    # "oldLastAvailableSegmentNum":I
    :cond_b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v4, v4, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v4, :cond_c

    .line 463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRangeValues:[J

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer/TimeRange;->getCurrentBoundsUs([J)[J

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRangeValues:[J

    .line 464
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    if-eqz v4, :cond_f

    .line 467
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRangeValues:[J

    const/4 v9, 0x1

    aget-wide p2, v4, v9

    .line 474
    :cond_c
    :goto_2
    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(J)I

    move-result v21

    .line 478
    .local v21, "segmentNum":I
    if-eqz v11, :cond_d

    .line 479
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    move/from16 v0, v21

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 487
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v4, v4, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v4, :cond_15

    .line 488
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->firstAvailableSegmentNum:I

    move/from16 v0, v21

    if-ge v0, v4, :cond_12

    .line 490
    new-instance v4, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct {v4}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_0

    .line 447
    .end local v11    # "indexUnbounded":Z
    .end local v21    # "segmentNum":I
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 470
    .restart local v11    # "indexUnbounded":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRangeValues:[J

    const/4 v9, 0x0

    aget-wide v24, v4, v9

    move-wide/from16 v0, p2

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRangeValues:[J

    const/4 v9, 0x1

    aget-wide v24, v4, v9

    move-wide/from16 v0, p2

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    goto :goto_2

    .line 482
    :cond_10
    move-object/from16 v0, p6

    iget v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/exoplayer/chunk/MediaChunk;

    .line 483
    .local v18, "previous":Lcom/google/android/exoplayer/chunk/MediaChunk;
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->isLastChunk:Z

    if-eqz v4, :cond_11

    const/16 v21, -0x1

    .restart local v21    # "segmentNum":I
    :goto_4
    goto :goto_3

    .end local v21    # "segmentNum":I
    :cond_11
    move-object/from16 v0, v18

    iget v4, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->chunkIndex:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v19

    iget v9, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v21, v4, v9

    goto :goto_4

    .line 492
    .end local v18    # "previous":Lcom/google/android/exoplayer/chunk/MediaChunk;
    .restart local v21    # "segmentNum":I
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    move/from16 v0, v21

    if-le v0, v4, :cond_14

    .line 496
    if-nez v11, :cond_13

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->finishedCurrentManifest:Z

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x0

    goto :goto_5

    .line 498
    :cond_14
    if-nez v11, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    move/from16 v0, v21

    if-ne v0, v4, :cond_15

    .line 501
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->finishedCurrentManifest:Z

    .line 505
    :cond_15
    const/4 v4, -0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_0

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v9, v9, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-direct {v0, v1, v4, v2, v9}, Lcom/google/android/exoplayer/dash/DashChunkSource;->newMediaChunk(Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer/upstream/DataSource;II)Lcom/google/android/exoplayer/chunk/Chunk;

    move-result-object v13

    .line 512
    .local v13, "nextMediaChunk":Lcom/google/android/exoplayer/chunk/Chunk;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    .line 513
    move-object/from16 v0, p6

    iput-object v13, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0
.end method

.method public final getMaxVideoDimensions(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 2
    .param p1, "out"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer/TrackInfo;->mimeType:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->maxWidth:I

    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->maxHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->setMaxVideoDimensions(II)V

    .line 294
    :cond_0
    return-void
.end method

.method getSeekRange()Lcom/google/android/exoplayer/TimeRange;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    return-object v0
.end method

.method public final getTrackInfo()Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    return-object v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->maybeThrowError()V

    .line 523
    :cond_1
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .locals 10
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;

    .prologue
    .line 527
    instance-of v3, p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 528
    check-cast v1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    .line 529
    .local v1, "initializationChunk":Lcom/google/android/exoplayer/chunk/InitializationChunk;
    iget-object v3, v1, Lcom/google/android/exoplayer/chunk/InitializationChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, v3, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    .line 530
    .local v0, "formatId":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 531
    .local v2, "representationHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
    invoke-virtual {v1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->hasFormat()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 532
    invoke-virtual {v1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->getFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 534
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->hasSeekMap()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 535
    new-instance v4, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->getSeekMap()Lcom/google/android/exoplayer/extractor/SeekMap;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    iget-object v5, v1, Lcom/google/android/exoplayer/chunk/InitializationChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v5, v5, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    iget-wide v6, v6, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodStartMs:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer/extractor/ChunkIndex;Ljava/lang/String;J)V

    iput-object v4, v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 542
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->hasDrmInitData()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 543
    invoke-virtual {v1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->getDrmInitData()Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 546
    .end local v0    # "formatId":Ljava/lang/String;
    .end local v1    # "initializationChunk":Lcom/google/android/exoplayer/chunk/InitializationChunk;
    .end local v2    # "representationHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
    :cond_2
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 551
    return-void
.end method
