.class public Lcom/google/android/exoplayer/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;,
        Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;
    }
.end annotation


# static fields
.field private static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field public static final ADAPTIVE_MODE_ABRUPT:I = 0x3

.field public static final ADAPTIVE_MODE_NONE:I = 0x0

.field public static final ADAPTIVE_MODE_SPLICE:I = 0x1

.field private static final BANDWIDTH_FRACTION:F = 0.8f

.field public static final DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS:J = 0x4e20L

.field public static final DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS:J = 0x1388L

.field public static final DEFAULT_PLAYLIST_BLACKLIST_MS:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "HlsChunkSource"


# instance fields
.field private final adaptiveMode:I

.field private final audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

.field private final bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

.field private final baseUri:Ljava/lang/String;

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private durationUs:J

.field private encryptionIv:[B

.field private encryptionIvString:Ljava/lang/String;

.field private encryptionKey:[B

.field private encryptionKeyUri:Landroid/net/Uri;

.field private live:Z

.field private final maxBufferDurationToSwitchDownUs:J

.field private final maxHeight:I

.field private final maxWidth:I

.field private final minBufferDurationToSwitchUpUs:J

.field private final playlistParser:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

.field private scratchSpace:[B

.field private selectedVariantIndex:I

.field private final variantBlacklistTimes:[J

.field private final variantLastPlaylistLoadTimesMs:[J

.field private final variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

.field private final variants:[Lcom/google/android/exoplayer/hls/Variant;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/upstream/BandwidthMeter;[IIJJLcom/google/android/exoplayer/audio/AudioCapabilities;)V
    .locals 19
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "playlistUrl"    # Ljava/lang/String;
    .param p3, "playlist"    # Lcom/google/android/exoplayer/hls/HlsPlaylist;
    .param p4, "bandwidthMeter"    # Lcom/google/android/exoplayer/upstream/BandwidthMeter;
    .param p5, "variantIndices"    # [I
    .param p6, "adaptiveMode"    # I
    .param p7, "minBufferDurationToSwitchUpMs"    # J
    .param p9, "maxBufferDurationToSwitchDownMs"    # J
    .param p11, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .prologue
    .line 178
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 179
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 180
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    .line 181
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    .line 182
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsChunkSource;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 183
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p7

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->minBufferDurationToSwitchUpUs:J

    .line 184
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p9

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxBufferDurationToSwitchDownUs:J

    .line 185
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    .line 186
    new-instance v2, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {v2}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->playlistParser:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    .line 188
    move-object/from16 v0, p3

    iget v2, v0, Lcom/google/android/exoplayer/hls/HlsPlaylist;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 189
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/google/android/exoplayer/hls/Variant;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v2, Lcom/google/android/exoplayer/hls/Variant;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/hls/Variant;-><init>(ILjava/lang/String;ILjava/lang/String;II)V

    aput-object v2, v16, v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    .line 190
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    .line 191
    const/4 v2, 0x1

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    .line 192
    const/4 v2, 0x1

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    .line 193
    const/4 v2, 0x0

    check-cast p3, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    .end local p3    # "playlist":Lcom/google/android/exoplayer/hls/HlsPlaylist;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->setMediaPlaylist(ILcom/google/android/exoplayer/hls/HlsMediaPlaylist;)V

    .line 195
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxWidth:I

    .line 196
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxHeight:I

    .line 228
    :goto_0
    return-void

    .line 198
    .restart local p3    # "playlist":Lcom/google/android/exoplayer/hls/HlsPlaylist;
    :cond_0
    check-cast p3, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    .end local p3    # "playlist":Lcom/google/android/exoplayer/hls/HlsPlaylist;
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    .line 199
    .local v10, "masterPlaylistVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/hls/Variant;>;"
    move-object/from16 v0, p5

    invoke-static {v10, v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->buildOrderedVariants(Ljava/util/List;[I)[Lcom/google/android/exoplayer/hls/Variant;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v2, v2

    new-array v2, v2, [Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v2, v2

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v2, v2

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    .line 203
    const/4 v12, -0x1

    .line 204
    .local v12, "maxWidth":I
    const/4 v11, -0x1

    .line 206
    .local v11, "maxHeight":I
    const v13, 0x7fffffff

    .line 207
    .local v13, "minOriginalVariantIndex":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v2, v2

    if-ge v9, v2, :cond_2

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v2, v2, v9

    invoke-interface {v10, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 209
    .local v14, "originalVariantIndex":I
    if-ge v14, v13, :cond_1

    .line 210
    move v13, v14

    .line 211
    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    .line 213
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v2, v2, v9

    iget-object v15, v2, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 214
    .local v15, "variantFormat":Lcom/google/android/exoplayer/chunk/Format;
    iget v2, v15, Lcom/google/android/exoplayer/chunk/Format;->width:I

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 215
    iget v2, v15, Lcom/google/android/exoplayer/chunk/Format;->height:I

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 207
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 217
    .end local v14    # "originalVariantIndex":I
    .end local v15    # "variantFormat":Lcom/google/android/exoplayer/chunk/Format;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    if-nez p6, :cond_4

    .line 219
    :cond_3
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxWidth:I

    .line 220
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxHeight:I

    goto :goto_0

    .line 224
    :cond_4
    if-lez v12, :cond_5

    .end local v12    # "maxWidth":I
    :goto_2
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxWidth:I

    .line 225
    if-lez v11, :cond_6

    .end local v11    # "maxHeight":I
    :goto_3
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxHeight:I

    goto/16 :goto_0

    .line 224
    .restart local v11    # "maxHeight":I
    .restart local v12    # "maxWidth":I
    :cond_5
    const/16 v12, 0x780

    goto :goto_2

    .line 225
    .end local v12    # "maxWidth":I
    :cond_6
    const/16 v11, 0x438

    goto :goto_3
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/upstream/BandwidthMeter;[IILcom/google/android/exoplayer/audio/AudioCapabilities;)V
    .locals 13
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "playlistUrl"    # Ljava/lang/String;
    .param p3, "playlist"    # Lcom/google/android/exoplayer/hls/HlsPlaylist;
    .param p4, "bandwidthMeter"    # Lcom/google/android/exoplayer/upstream/BandwidthMeter;
    .param p5, "variantIndices"    # [I
    .param p6, "adaptiveMode"    # I
    .param p7, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .prologue
    .line 152
    const-wide/16 v8, 0x1388

    const-wide/16 v10, 0x4e20

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v12, p7

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/upstream/BandwidthMeter;[IIJJLcom/google/android/exoplayer/audio/AudioCapabilities;)V

    .line 155
    return-void
.end method

.method private allVariantsBlacklisted()Z
    .locals 6

    .prologue
    .line 632
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 633
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 634
    const/4 v1, 0x0

    .line 637
    :goto_1
    return v1

    .line 632
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static buildOrderedVariants(Ljava/util/List;[I)[Lcom/google/android/exoplayer/hls/Variant;
    .locals 8
    .param p1, "originalVariantIndices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/hls/Variant;",
            ">;[I)[",
            "Lcom/google/android/exoplayer/hls/Variant;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "originalVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/hls/Variant;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v2, "enabledVariantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    if-eqz p1, :cond_0

    .line 571
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, p1

    if-ge v4, v6, :cond_1

    .line 572
    aget v6, p1, v4

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 576
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 579
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v1, "definiteVideoVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v0, "definiteAudioOnlyVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 582
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/hls/Variant;

    .line 583
    .local v5, "variant":Lcom/google/android/exoplayer/hls/Variant;
    iget-object v6, v5, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v6, v6, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-gtz v6, :cond_2

    const-string v6, "avc"

    invoke-static {v5, v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 584
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 585
    :cond_4
    const-string v6, "mp4a"

    invoke-static {v5, v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 586
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 590
    .end local v5    # "variant":Lcom/google/android/exoplayer/hls/Variant;
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 594
    move-object v2, v1

    .line 603
    :cond_6
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Lcom/google/android/exoplayer/hls/Variant;

    .line 604
    .local v3, "enabledVariants":[Lcom/google/android/exoplayer/hls/Variant;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 605
    new-instance v6, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;

    invoke-direct {v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;-><init>()V

    invoke-static {v3, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 614
    return-object v3

    .line 595
    .end local v3    # "enabledVariants":[Lcom/google/android/exoplayer/hls/Variant;
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 598
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method private clearEncryptionData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 546
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 547
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    .line 548
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 549
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    .line 550
    return-void
.end method

.method private clearStaleBlacklistedVariants()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 642
    .local v0, "currentTime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 643
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v3, v2

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 645
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aput-wide v8, v3, v2

    .line 642
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 648
    :cond_1
    return-void
.end method

.method private getLiveStartChunkMediaSequence(I)I
    .locals 4
    .param p1, "variantIndex"    # I

    .prologue
    .line 507
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v1, v2, p1

    .line 508
    .local v1, "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    iget-object v2, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    iget-object v2, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x3

    .line 509
    .local v0, "chunkIndex":I
    :goto_0
    iget v2, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int/2addr v2, v0

    return v2

    .line 508
    .end local v0    # "chunkIndex":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNextVariantIndex(Lcom/google/android/exoplayer/hls/TsChunk;J)I
    .locals 12
    .param p1, "previousTsChunk"    # Lcom/google/android/exoplayer/hls/TsChunk;
    .param p2, "playbackPositionUs"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 443
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->clearStaleBlacklistedVariants()V

    .line 444
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v7}, Lcom/google/android/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    .line 445
    .local v0, "bitrateEstimate":J
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    iget v8, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-wide v8, v7, v8

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 447
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getVariantIndexForBandwidth(J)I

    move-result v6

    .line 474
    :cond_0
    :goto_0
    return v6

    .line 449
    :cond_1
    if-nez p1, :cond_2

    .line 451
    iget v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 453
    :cond_2
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-nez v7, :cond_3

    .line 455
    iget v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 457
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getVariantIndexForBandwidth(J)I

    move-result v6

    .line 458
    .local v6, "idealIndex":I
    iget v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-ne v6, v7, :cond_4

    .line 460
    iget v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 464
    :cond_4
    iget v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    iget-wide v2, p1, Lcom/google/android/exoplayer/hls/TsChunk;->startTimeUs:J

    .line 466
    .local v2, "bufferedPositionUs":J
    :goto_1
    sub-long v4, v2, p2

    .line 467
    .local v4, "bufferedUs":J
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    iget v8, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-wide v8, v7, v8

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    iget v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-le v6, v7, :cond_5

    iget-wide v8, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxBufferDurationToSwitchDownUs:J

    cmp-long v7, v4, v8

    if-ltz v7, :cond_0

    :cond_5
    iget v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-ge v6, v7, :cond_6

    iget-wide v8, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->minBufferDurationToSwitchUpUs:J

    cmp-long v7, v4, v8

    if-gtz v7, :cond_0

    .line 474
    :cond_6
    iget v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 464
    .end local v2    # "bufferedPositionUs":J
    .end local v4    # "bufferedUs":J
    :cond_7
    iget-wide v2, p1, Lcom/google/android/exoplayer/hls/TsChunk;->endTimeUs:J

    goto :goto_1
.end method

.method private getVariantIndex(Lcom/google/android/exoplayer/chunk/Format;)I
    .locals 4
    .param p1, "format"    # Lcom/google/android/exoplayer/chunk/Format;

    .prologue
    .line 651
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    return v0

    .line 651
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getVariantIndexForBandwidth(J)I
    .locals 9
    .param p1, "bitrateEstimate"    # J

    .prologue
    .line 478
    const-wide/16 v4, -0x1

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 480
    const-wide/16 p1, 0x0

    .line 482
    :cond_0
    long-to-float v3, p1

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 483
    .local v0, "effectiveBitrate":I
    const/4 v2, -0x1

    .line 484
    .local v2, "lowestQualityEnabledVariantIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 485
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v3, v1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 486
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v3, v3, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    if-gt v3, v0, :cond_1

    .line 494
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 489
    .restart local v1    # "i":I
    :cond_1
    move v2, v1

    .line 484
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    :cond_3
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    move v1, v2

    .line 494
    goto :goto_1

    .line 493
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;I)Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    .locals 8
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "variantIndex"    # I

    .prologue
    .line 521
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 522
    .local v0, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    move-object v3, v0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;[BLjava/lang/String;I)V

    return-object v1
.end method

.method private newMediaPlaylistChunk(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    .locals 9
    .param p1, "variantIndex"    # I

    .prologue
    .line 513
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/google/android/exoplayer/hls/Variant;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 514
    .local v1, "mediaPlaylistUri":Landroid/net/Uri;
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 516
    .local v0, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    new-instance v2, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->playlistParser:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v0

    move v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;[BLcom/google/android/exoplayer/hls/HlsPlaylistParser;ILjava/lang/String;)V

    return-object v2
.end method

.method private setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "secretKey"    # [B

    .prologue
    const/16 v6, 0x10

    .line 527
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 528
    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "trimmedIv":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 534
    .local v0, "ivData":[B
    new-array v1, v6, [B

    .line 535
    .local v1, "ivDataWithPadding":[B
    array-length v4, v0

    if-le v4, v6, :cond_1

    array-length v4, v0

    add-int/lit8 v2, v4, -0x10

    .line 536
    .local v2, "offset":I
    :goto_1
    array-length v4, v1

    array-length v5, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 540
    iput-object p3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    .line 541
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 542
    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    .line 543
    return-void

    .line 530
    .end local v0    # "ivData":[B
    .end local v1    # "ivDataWithPadding":[B
    .end local v2    # "offset":I
    .end local v3    # "trimmedIv":Ljava/lang/String;
    :cond_0
    move-object v3, p2

    .restart local v3    # "trimmedIv":Ljava/lang/String;
    goto :goto_0

    .line 535
    .restart local v0    # "ivData":[B
    .restart local v1    # "ivDataWithPadding":[B
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setMediaPlaylist(ILcom/google/android/exoplayer/hls/HlsMediaPlaylist;)V
    .locals 4
    .param p1, "variantIndex"    # I
    .param p2, "mediaPlaylist"    # Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 554
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aput-object p2, v0, p1

    .line 555
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    iget-boolean v1, p2, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->live:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    .line 556
    iget-wide v0, p2, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->durationUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->durationUs:J

    .line 557
    return-void
.end method

.method private shouldRerequestMediaPlaylist(I)Z
    .locals 8
    .param p1, "nextVariantIndex"    # I

    .prologue
    .line 499
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v0, v1, p1

    .line 500
    .local v0, "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v6, v1, p1

    sub-long v2, v4, v6

    .line 502
    .local v2, "timeSinceLastMediaPlaylistLoadMs":J
    iget v1, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->targetDurationSecs:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z
    .locals 5
    .param p0, "variant"    # Lcom/google/android/exoplayer/hls/Variant;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 618
    iget-object v4, p0, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v4, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    .line 619
    .local v1, "codecs":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 628
    :cond_0
    :goto_0
    return v3

    .line 622
    :cond_1
    const-string v4, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "codecArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 624
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 625
    const/4 v3, 0x1

    goto :goto_0

    .line 623
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getChunkOperation(Lcom/google/android/exoplayer/hls/TsChunk;JJ)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 36
    .param p1, "previousTsChunk"    # Lcom/google/android/exoplayer/hls/TsChunk;
    .param p2, "seekPositionUs"    # J
    .param p4, "playbackPositionUs"    # J

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    if-nez v6, :cond_0

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move/from16 v32, v0

    .line 265
    .local v32, "nextVariantIndex":I
    const/4 v13, 0x0

    .line 273
    .local v13, "switchingVariantSpliced":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v31, v6, v32

    .line 274
    .local v31, "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    if-nez v31, :cond_2

    .line 276
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->newMediaPlaylistChunk(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v34

    .line 367
    :goto_1
    return-object v34

    .line 267
    .end local v13    # "switchingVariantSpliced":Z
    .end local v31    # "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    .end local v32    # "nextVariantIndex":I
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getNextVariantIndex(Lcom/google/android/exoplayer/hls/TsChunk;J)I

    move-result v32

    .line 268
    .restart local v32    # "nextVariantIndex":I
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v6, v6, v32

    iget-object v6, v6, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v6, v15}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    const/4 v15, 0x1

    if-ne v6, v15, :cond_1

    const/4 v13, 0x1

    .restart local v13    # "switchingVariantSpliced":Z
    :goto_2
    goto :goto_0

    .end local v13    # "switchingVariantSpliced":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_2

    .line 279
    .restart local v13    # "switchingVariantSpliced":Z
    .restart local v31    # "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    :cond_2
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    .line 280
    const/16 v24, 0x0

    .line 281
    .local v24, "chunkMediaSequence":I
    const/16 v30, 0x0

    .line 282
    .local v30, "liveDiscontinuity":Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v6, :cond_6

    .line 283
    if-nez p1, :cond_4

    .line 284
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getLiveStartChunkMediaSequence(I)I

    move-result v24

    .line 305
    :cond_3
    :goto_3
    move-object/from16 v0, v31

    iget v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    sub-int v14, v24, v6

    .line 306
    .local v14, "chunkIndex":I
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v14, v6, :cond_a

    .line 307
    move-object/from16 v0, v31

    iget-boolean v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->live:Z

    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->shouldRerequestMediaPlaylist(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 308
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->newMediaPlaylistChunk(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v34

    goto :goto_1

    .line 286
    .end local v14    # "chunkIndex":I
    :cond_4
    if-eqz v13, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->chunkIndex:I

    move/from16 v24, v0

    .line 288
    :goto_4
    move-object/from16 v0, v31

    iget v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    move/from16 v0, v24

    if-ge v0, v6, :cond_3

    .line 290
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getLiveStartChunkMediaSequence(I)I

    move-result v24

    .line 291
    const/16 v30, 0x1

    goto :goto_3

    .line 286
    :cond_5
    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/exoplayer/hls/TsChunk;->chunkIndex:I

    add-int/lit8 v24, v6, 0x1

    goto :goto_4

    .line 296
    :cond_6
    if-nez p1, :cond_7

    .line 297
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v6, v15, v0, v1}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v6

    move-object/from16 v0, v31

    iget v15, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int v24, v6, v15

    goto :goto_3

    .line 300
    :cond_7
    if-eqz v13, :cond_8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->chunkIndex:I

    move/from16 v24, v0

    :goto_5
    goto :goto_3

    :cond_8
    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/exoplayer/hls/TsChunk;->chunkIndex:I

    add-int/lit8 v24, v6, 0x1

    goto :goto_5

    .line 310
    .restart local v14    # "chunkIndex":I
    :cond_9
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 314
    :cond_a
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;

    .line 315
    .local v33, "segment":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v15, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v6, v15}, Lcom/google/android/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 318
    .local v5, "chunkUri":Landroid/net/Uri;
    move-object/from16 v0, v33

    iget-boolean v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->isEncrypted:Z

    if-eqz v6, :cond_e

    .line 319
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v15, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    invoke-static {v6, v15}, Lcom/google/android/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 320
    .local v29, "keyUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 322
    move-object/from16 v0, v33

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v6, v15}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;I)Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v34

    .line 323
    .local v34, "toReturn":Lcom/google/android/exoplayer/chunk/Chunk;
    goto/16 :goto_1

    .line 325
    .end local v34    # "toReturn":Lcom/google/android/exoplayer/chunk/Chunk;
    :cond_b
    move-object/from16 v0, v33

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    invoke-static {v6, v15}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 326
    move-object/from16 v0, v33

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v6, v15}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 333
    .end local v29    # "keyUri":Landroid/net/Uri;
    :cond_c
    :goto_6
    new-instance v4, Lcom/google/android/exoplayer/upstream/DataSpec;

    move-object/from16 v0, v33

    iget v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeOffset:I

    int-to-long v6, v6

    move-object/from16 v0, v33

    iget v15, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeLength:I

    int-to-long v8, v15

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 338
    .local v4, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v6, :cond_11

    .line 339
    if-nez p1, :cond_f

    .line 340
    const-wide/16 v10, 0x0

    .line 349
    .local v10, "startTimeUs":J
    :goto_7
    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    move-wide/from16 v16, v0

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v22, v10, v16

    .line 350
    .local v22, "endTimeUs":J
    move-object/from16 v0, v31

    iget-boolean v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->live:Z

    if-nez v6, :cond_12

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v14, v6, :cond_12

    const/16 v25, 0x1

    .line 351
    .local v25, "isLastChunk":Z
    :goto_8
    const/4 v8, 0x0

    .line 352
    .local v8, "trigger":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-object v6, v6, v15

    iget-object v9, v6, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 356
    .local v9, "format":Lcom/google/android/exoplayer/chunk/Format;
    if-eqz p1, :cond_d

    move-object/from16 v0, v33

    iget-boolean v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuity:Z

    if-nez v6, :cond_d

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v9, v6}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v30, :cond_14

    .line 358
    :cond_d
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    const-string v15, ".aac"

    invoke-virtual {v6, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    new-instance v12, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;

    invoke-direct {v12, v10, v11}, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;-><init>(J)V

    .line 361
    .local v12, "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    :goto_9
    new-instance v7, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;-><init>(ILcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/extractor/Extractor;Z)V

    .line 367
    .end local v12    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    .local v7, "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    :goto_a
    new-instance v15, Lcom/google/android/exoplayer/hls/TsChunk;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    move-object/from16 v28, v0

    move-object/from16 v17, v4

    move/from16 v18, v8

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    move-object/from16 v26, v7

    invoke-direct/range {v15 .. v28}, Lcom/google/android/exoplayer/hls/TsChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZLcom/google/android/exoplayer/hls/HlsExtractorWrapper;[B[B)V

    move-object/from16 v34, v15

    goto/16 :goto_1

    .line 329
    .end local v4    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .end local v7    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .end local v8    # "trigger":I
    .end local v9    # "format":Lcom/google/android/exoplayer/chunk/Format;
    .end local v10    # "startTimeUs":J
    .end local v22    # "endTimeUs":J
    .end local v25    # "isLastChunk":Z
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->clearEncryptionData()V

    goto/16 :goto_6

    .line 341
    .restart local v4    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    :cond_f
    if-eqz v13, :cond_10

    .line 342
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer/hls/TsChunk;->startTimeUs:J

    .restart local v10    # "startTimeUs":J
    goto/16 :goto_7

    .line 344
    .end local v10    # "startTimeUs":J
    :cond_10
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer/hls/TsChunk;->endTimeUs:J

    .restart local v10    # "startTimeUs":J
    goto/16 :goto_7

    .line 347
    .end local v10    # "startTimeUs":J
    :cond_11
    move-object/from16 v0, v33

    iget-wide v10, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    .restart local v10    # "startTimeUs":J
    goto/16 :goto_7

    .line 350
    .restart local v22    # "endTimeUs":J
    :cond_12
    const/16 v25, 0x0

    goto :goto_8

    .line 358
    .restart local v8    # "trigger":I
    .restart local v9    # "format":Lcom/google/android/exoplayer/chunk/Format;
    .restart local v25    # "isLastChunk":Z
    :cond_13
    new-instance v12, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    invoke-direct {v12, v10, v11, v6}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;-><init>(JLcom/google/android/exoplayer/audio/AudioCapabilities;)V

    goto :goto_9

    .line 364
    :cond_14
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/exoplayer/hls/TsChunk;->extractorWrapper:Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .restart local v7    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    goto :goto_a
.end method

.method public getDurationUs()J
    .locals 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->durationUs:J

    goto :goto_0
.end method

.method public getMaxVideoDimensions(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 2
    .param p1, "out"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    const/4 v1, -0x1

    .line 243
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxHeight:I

    if-ne v0, v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxWidth:I

    iget v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->setMaxVideoDimensions(II)V

    goto :goto_0
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .locals 5
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;

    .prologue
    .line 379
    instance-of v2, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 380
    check-cast v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    .line 381
    .local v1, "mediaPlaylistChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getDataHolder()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 382
    iget v2, v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getResult()Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->setMediaPlaylist(ILcom/google/android/exoplayer/hls/HlsMediaPlaylist;)V

    .line 389
    .end local v1    # "mediaPlaylistChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    instance-of v2, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 384
    check-cast v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 385
    .local v0, "encryptionKeyChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 386
    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v2, v2, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/io/IOException;)Z
    .locals 12
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 400
    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_7

    instance-of v7, p1, Lcom/google/android/exoplayer/hls/TsChunk;

    if-nez v7, :cond_0

    instance-of v7, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-nez v7, :cond_0

    instance-of v7, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v7, :cond_7

    :cond_0
    instance-of v7, p2, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v7, :cond_7

    move-object v4, p2

    .line 404
    check-cast v4, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 405
    .local v4, "responseCodeException":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    iget v3, v4, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 406
    .local v3, "responseCode":I
    const/16 v7, 0x194

    if-eq v3, v7, :cond_1

    const/16 v7, 0x19a

    if-ne v3, v7, :cond_7

    .line 408
    :cond_1
    instance-of v7, p1, Lcom/google/android/exoplayer/hls/TsChunk;

    if-eqz v7, :cond_2

    move-object v5, p1

    .line 409
    check-cast v5, Lcom/google/android/exoplayer/hls/TsChunk;

    .line 410
    .local v5, "tsChunk":Lcom/google/android/exoplayer/hls/TsChunk;
    iget-object v7, v5, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getVariantIndex(Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v6

    .line 418
    .end local v5    # "tsChunk":Lcom/google/android/exoplayer/hls/TsChunk;
    .local v6, "variantIndex":I
    :goto_0
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v8, v7, v6

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    const/4 v0, 0x1

    .line 419
    .local v0, "alreadyBlacklisted":Z
    :goto_1
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    aput-wide v8, v7, v6

    .line 420
    if-eqz v0, :cond_5

    .line 422
    const-string v7, "HlsChunkSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Already blacklisted variant ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v9, v9, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v7, 0x0

    .line 439
    .end local v0    # "alreadyBlacklisted":Z
    .end local v3    # "responseCode":I
    .end local v4    # "responseCodeException":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v6    # "variantIndex":I
    :goto_2
    return v7

    .line 411
    .restart local v3    # "responseCode":I
    .restart local v4    # "responseCodeException":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    :cond_2
    instance-of v7, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v7, :cond_3

    move-object v2, p1

    .line 412
    check-cast v2, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    .line 413
    .local v2, "playlistChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    iget v6, v2, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    .line 414
    .restart local v6    # "variantIndex":I
    goto :goto_0

    .end local v2    # "playlistChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    .end local v6    # "variantIndex":I
    :cond_3
    move-object v1, p1

    .line 415
    check-cast v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 416
    .local v1, "encryptionChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    iget v6, v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->variantIndex:I

    .restart local v6    # "variantIndex":I
    goto :goto_0

    .line 418
    .end local v1    # "encryptionChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 425
    .restart local v0    # "alreadyBlacklisted":Z
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->allVariantsBlacklisted()Z

    move-result v7

    if-nez v7, :cond_6

    .line 427
    const-string v7, "HlsChunkSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Blacklisted variant ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v9, v9, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v7, 0x1

    goto :goto_2

    .line 432
    :cond_6
    const-string v7, "HlsChunkSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Final variant not blacklisted ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v9, v9, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v6

    .line 435
    const/4 v7, 0x0

    goto :goto_2

    .line 439
    .end local v0    # "alreadyBlacklisted":Z
    .end local v3    # "responseCode":I
    .end local v4    # "responseCodeException":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v6    # "variantIndex":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_2
.end method
