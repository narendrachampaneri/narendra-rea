.class public Lorg/cocos2dx/lib/Cocos2dxSound;
.super Ljava/lang/Object;
.source "Cocos2dxSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;,
        Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;
    }
.end annotation


# static fields
.field private static final INVALID_SOUND_ID:I = -0x1

.field private static final INVALID_STREAM_ID:I = -0x1

.field public static final MAX_SIMULTANEOUS_STREAMS_DEFAULT:I = 0x8

.field public static final MAX_SIMULTANEOUS_STREAMS_I9100:I = 0x3

.field private static final SOUND_PRIORITY:I = 0x1

.field private static final SOUND_QUALITY:I = 0x5

.field private static final SOUND_RATE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "Cocos2dxSound"

.field private static mSoundPoolLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/SoundPool;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMapPathStreamIDsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mLeftVolume:F

.field private final mPathSoundIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRightVolume:F

.field private mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mStreamIdSyn:I

.field private simultaneousStreams:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "simultaneousStreams"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    .line 88
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mContext:Landroid/content/Context;

    .line 89
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->initData(I)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxSound;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lorg/cocos2dx/lib/Cocos2dxSound;I)I
    .locals 0
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxSound;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mStreamIdSyn:I

    return p1
.end method

.method static synthetic access$200(Lorg/cocos2dx/lib/Cocos2dxSound;)F
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxSound;

    .prologue
    .line 38
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    return v0
.end method

.method static synthetic access$300(Lorg/cocos2dx/lib/Cocos2dxSound;)F
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxSound;

    .prologue
    .line 38
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    return v0
.end method

.method static synthetic access$400(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;IZFFFI)I
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxSound;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # F
    .param p7, "x7"    # I

    .prologue
    .line 38
    invoke-direct/range {p0 .. p7}, Lorg/cocos2dx/lib/Cocos2dxSound;->doPlayEffect(Ljava/lang/String;IZFFFI)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxSound;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private createSoundPool(II)Landroid/media/SoundPool;
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "maxSimulataneousStreams"    # I

    .prologue
    .line 532
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    monitor-enter v2

    .line 533
    :try_start_0
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundPool(I)Landroid/media/SoundPool;

    move-result-object v0

    monitor-exit v2

    .line 538
    :goto_0
    return-object v0

    .line 534
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, p2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    .line 535
    .local v0, "newPool":Landroid/media/SoundPool;
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;-><init>(Lorg/cocos2dx/lib/Cocos2dxSound;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 536
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v1, "Cocos2dxSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio Alert: New soundpool created. Group: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Max Simultaneous Streams: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    monitor-exit v2

    goto :goto_0

    .line 539
    .end local v0    # "newPool":Landroid/media/SoundPool;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doPlayEffect(Ljava/lang/String;IZFFFI)I
    .locals 11
    .param p1, "pPath"    # Ljava/lang/String;
    .param p2, "soundId"    # I
    .param p3, "pLoop"    # Z
    .param p4, "leftVolume"    # F
    .param p5, "rightVolume"    # F
    .param p6, "soundRate"    # F
    .param p7, "group"    # I

    .prologue
    .line 485
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundPool(I)Landroid/media/SoundPool;

    move-result-object v1

    .line 488
    .local v1, "pool":Landroid/media/SoundPool;
    const/4 v5, 0x1

    if-eqz p3, :cond_1

    const/4 v6, -0x1

    :goto_0
    move v2, p2

    move v3, p4

    move/from16 v4, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v9

    .line 491
    .local v9, "streamID":I
    move/from16 v0, p7

    invoke-direct {p0, p1, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundStreamIds(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v10

    .line 496
    .local v10, "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    .line 501
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 502
    .local v8, "sid":I
    move/from16 v0, p7

    invoke-virtual {p0, v8, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->stopEffect(II)V

    .line 505
    .end local v8    # "sid":I
    :cond_0
    return v9

    .line 488
    .end local v9    # "streamID":I
    .end local v10    # "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getGroupPathStreamIdsMap(I)Ljava/util/HashMap;
    .locals 5
    .param p1, "pGroup"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 183
    :try_start_0
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 185
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    if-nez v0, :cond_0

    .line 186
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->getGroupPathStreamIdsMap(I)Ljava/util/HashMap;

    move-result-object v0

    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    monitor-exit v3

    .line 201
    :goto_0
    return-object v0

    .line 191
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_0
    monitor-exit v3

    goto :goto_0

    .line 204
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 195
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->getGroupPathStreamIdsMap(I)Ljava/util/HashMap;

    move-result-object v0

    monitor-exit v3

    goto :goto_0

    .line 199
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v1, "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->getGroupPathStreamIdsMap(I)Ljava/util/HashMap;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getSoundPool(I)Landroid/media/SoundPool;
    .locals 4
    .param p1, "group"    # I

    .prologue
    .line 509
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    monitor-enter v1

    .line 510
    :try_start_0
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SoundPool;

    monitor-exit v1

    .line 514
    :goto_0
    return-object v0

    .line 513
    :cond_0
    const-string v0, "Cocos2dxSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio Alert: New SoundPool being created for group id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->simultaneousStreams:I

    invoke-direct {p0, p1, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->createSoundPool(II)Landroid/media/SoundPool;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSoundStreamIds(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "pPath"    # Ljava/lang/String;
    .param p2, "pGroup"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->getGroupPathStreamIdsMap(I)Ljava/util/HashMap;

    move-result-object v0

    .line 209
    .local v0, "groupStreamIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    if-nez v0, :cond_0

    .line 210
    const-string v2, "Cocos2dxSound"

    const-string v3, "Sound Stream Id map creation Failed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v2, 0x0

    .line 221
    :goto_0
    return-object v2

    .line 214
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    goto :goto_0

    .line 218
    :cond_1
    monitor-enter v0

    .line 219
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    monitor-exit v0

    move-object v2, v1

    goto :goto_0

    .line 222
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private initData(I)V
    .locals 3
    .param p1, "simultaneousStreams"    # I

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    .line 100
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    .line 101
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->simultaneousStreams:I

    .line 102
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    .line 104
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 105
    return-void
.end method

.method private printPathSoundIdMap()V
    .locals 11

    .prologue
    .line 242
    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 243
    :try_start_0
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 244
    .local v2, "group":I
    invoke-direct {p0, v2}, Lorg/cocos2dx/lib/Cocos2dxSound;->getGroupPathStreamIdsMap(I)Ljava/util/HashMap;

    move-result-object v4

    .line 245
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 246
    const/4 v5, 0x0

    .line 247
    .local v5, "total":I
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 248
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 249
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 250
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 251
    .local v0, "arry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    .line 252
    goto :goto_1

    .line 253
    .end local v0    # "arry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_1
    const-string v6, "Cocos2dxSound"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StreamIDsMap["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] SIZE:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    .end local v2    # "group":I
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v5    # "total":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    return-void
.end method

.method private removeSoundStreamId(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pPath"    # Ljava/lang/String;
    .param p2, "pGroup"    # I

    .prologue
    .line 228
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 229
    :try_start_0
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 231
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 233
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 234
    const-string v2, "Cocos2dxSound"

    const-string v4, "Sound Stream ID remove request ignored, not sound stream found in given group for given path"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_0
    monitor-exit v3

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public createSoundGroup(II)Z
    .locals 4
    .param p1, "groupId"    # I
    .param p2, "maxSimulataneousStreams"    # I

    .prologue
    const/4 v0, 0x0

    .line 521
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    monitor-enter v1

    .line 522
    :try_start_0
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    const-string v2, "Cocos2dxSound"

    const-string v3, "SoundPool not created; group already defined."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    monitor-exit v1

    .line 526
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->createSoundPool(II)Landroid/media/SoundPool;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createSoundIDFromAsset(Ljava/lang/String;I)I
    .locals 6
    .param p1, "pPath"    # Ljava/lang/String;
    .param p2, "group"    # I

    .prologue
    .line 458
    const/4 v2, -0x1

    .line 461
    .local v2, "soundID":I
    :try_start_0
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundPool(I)Landroid/media/SoundPool;

    move-result-object v1

    .line 463
    .local v1, "pool":Landroid/media/SoundPool;
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 464
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    .line 474
    .end local v1    # "pool":Landroid/media/SoundPool;
    :goto_0
    if-nez v2, :cond_0

    .line 475
    const/4 v2, -0x1

    .line 478
    :cond_0
    return v2

    .line 466
    .restart local v1    # "pool":Landroid/media/SoundPool;
    :cond_1
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 468
    .end local v1    # "pool":Landroid/media/SoundPool;
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    .line 470
    const-string v3, "Cocos2dxSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public end()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 427
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 429
    :try_start_0
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 430
    .local v0, "groupsStreamIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 433
    .end local v0    # "groupsStreamIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 432
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 433
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    monitor-enter v3

    .line 436
    :try_start_2
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SoundPool;

    .line 437
    .local v1, "pool":Landroid/media/SoundPool;
    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    goto :goto_1

    .line 440
    .end local v1    # "pool":Landroid/media/SoundPool;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 439
    :cond_1
    :try_start_3
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 440
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 442
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 443
    :try_start_4
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 444
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 446
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    monitor-enter v3

    .line 447
    :try_start_5
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 448
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 451
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    .line 452
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    .line 454
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->simultaneousStreams:I

    invoke-direct {p0, v2}, Lorg/cocos2dx/lib/Cocos2dxSound;->initData(I)V

    .line 455
    return-void

    .line 444
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 448
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2
.end method

.method public getEffectsVolume()F
    .locals 2

    .prologue
    .line 391
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getSoundGroupId(Landroid/media/SoundPool;)I
    .locals 6
    .param p1, "pPool"    # Landroid/media/SoundPool;

    .prologue
    const/4 v2, -0x1

    .line 615
    const/4 v0, -0x1

    .line 617
    .local v0, "NO_SOUND_POOL_FOUND":I
    if-nez p1, :cond_0

    .line 628
    :goto_0
    return v2

    .line 620
    :cond_0
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    monitor-enter v3

    .line 621
    :try_start_0
    sget-object v4, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 622
    .local v1, "poolId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundPool(I)Landroid/media/SoundPool;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 623
    const-string v2, "Cocos2dxSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found Sound Pool to have id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 627
    .end local v1    # "poolId":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public pauseAllEffects()V
    .locals 4

    .prologue
    .line 339
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    monitor-enter v2

    .line 340
    :try_start_0
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPoolLookup:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SoundPool;

    .line 341
    .local v0, "pool":Landroid/media/SoundPool;
    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    goto :goto_0

    .line 343
    .end local v0    # "pool":Landroid/media/SoundPool;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    return-void
.end method

.method public pauseEffect(II)V
    .locals 1
    .param p1, "pStreamID"    # I
    .param p2, "group"    # I

    .prologue
    .line 329
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundPool(I)Landroid/media/SoundPool;

    move-result-object v0

    .line 330
    .local v0, "pool":Landroid/media/SoundPool;
    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->pause(I)V

    .line 331
    return-void
.end method

.method public playEffect(Ljava/lang/String;ZFFFI)I
    .locals 21
    .param p1, "pPath"    # Ljava/lang/String;
    .param p2, "pLoop"    # Z
    .param p3, "pitch"    # F
    .param p4, "pan"    # F
    .param p5, "gain"    # F
    .param p6, "group"    # I

    .prologue
    .line 263
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 265
    .local v18, "soundID":Ljava/lang/Integer;
    const/16 v19, -0x1

    .line 268
    .local v19, "streamID":I
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    mul-float v5, v5, p5

    const/4 v6, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v11, p4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 269
    .local v7, "leftVolume":F
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    mul-float v5, v5, p5

    const/4 v6, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    add-float v11, v11, p4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 270
    .local v8, "rightVolume":F
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v5, v5, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 272
    .local v9, "soundRate":F
    if-eqz v18, :cond_0

    .line 274
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p2

    move/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lorg/cocos2dx/lib/Cocos2dxSound;->doPlayEffect(Ljava/lang/String;IZFFFI)I

    move-result v19

    .line 305
    :goto_0
    monitor-exit v20

    .line 310
    .end local v7    # "leftVolume":F
    .end local v8    # "rightVolume":F
    .end local v9    # "soundRate":F
    .end local v18    # "soundID":Ljava/lang/Integer;
    .end local v19    # "streamID":I
    :goto_1
    return v19

    .line 278
    .restart local v7    # "leftVolume":F
    .restart local v8    # "rightVolume":F
    .restart local v9    # "soundRate":F
    .restart local v18    # "soundID":Ljava/lang/Integer;
    .restart local v19    # "streamID":I
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxSound;->preloadEffect(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 279
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 281
    const/16 v19, -0x1

    monitor-exit v20

    goto :goto_1

    .line 306
    .end local v7    # "leftVolume":F
    .end local v8    # "rightVolume":F
    .end local v9    # "soundRate":F
    .end local v18    # "soundID":Ljava/lang/Integer;
    .end local v19    # "streamID":I
    :catchall_0
    move-exception v3

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 308
    :catch_0
    move-exception v16

    .line 309
    .local v16, "e":Ljava/lang/Exception;
    const-string v3, "Cocos2dxSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/16 v19, -0x1

    goto :goto_1

    .line 284
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v7    # "leftVolume":F
    .restart local v8    # "rightVolume":F
    .restart local v9    # "soundRate":F
    .restart local v18    # "soundID":Ljava/lang/Integer;
    .restart local v19    # "streamID":I
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundPool(I)Landroid/media/SoundPool;

    move-result-object v17

    .line 287
    .local v17, "pool":Landroid/media/SoundPool;
    monitor-enter v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 290
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    new-instance v10, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v14, p2

    move/from16 v15, p6

    invoke-direct/range {v10 .. v15}, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;-><init>(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;IZI)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 295
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2dx/lib/Cocos2dxSound;->mStreamIdSyn:I

    move/from16 v19, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 302
    :try_start_7
    monitor-exit v17

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 291
    :catchall_2
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v3

    .line 298
    :catch_1
    move-exception v16

    .line 299
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string v3, "Cocos2dxSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio Thread ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v3, -0x1

    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    monitor-exit v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move/from16 v19, v3

    goto/16 :goto_1
.end method

.method public preloadEffect(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pPath"    # Ljava/lang/String;
    .param p2, "group"    # I

    .prologue
    .line 120
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 121
    :try_start_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 123
    .local v0, "soundID":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->createSoundIDFromAsset(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 127
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    return v1

    .line 132
    .end local v0    # "soundID":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resumeAllEffects()V
    .locals 10

    .prologue
    .line 349
    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 350
    :try_start_0
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 351
    .local v1, "group":I
    invoke-direct {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxSound;->getGroupPathStreamIdsMap(I)Ljava/util/HashMap;

    move-result-object v3

    .line 352
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-direct {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundPool(I)Landroid/media/SoundPool;

    move-result-object v5

    .line 353
    .local v5, "pool":Landroid/media/SoundPool;
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 354
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 355
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 356
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 357
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 358
    .local v4, "pStreamID":I
    invoke-virtual {v5, v4}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_0

    .line 363
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v1    # "group":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v4    # "pStreamID":I
    .end local v5    # "pool":Landroid/media/SoundPool;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    return-void
.end method

.method public resumeEffect(II)V
    .locals 1
    .param p1, "pStreamID"    # I
    .param p2, "group"    # I

    .prologue
    .line 334
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundPool(I)Landroid/media/SoundPool;

    move-result-object v0

    .line 335
    .local v0, "pool":Landroid/media/SoundPool;
    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->resume(I)V

    .line 336
    return-void
.end method

.method public setEffectsVolume(F)V
    .locals 11
    .param p1, "pVolume"    # F

    .prologue
    .line 396
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_0

    .line 397
    const/4 p1, 0x0

    .line 399
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_1

    .line 400
    const/high16 p1, 0x3f800000    # 1.0f

    .line 403
    :cond_1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    .line 406
    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 408
    :try_start_0
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 409
    .local v1, "group":I
    invoke-direct {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxSound;->getGroupPathStreamIdsMap(I)Ljava/util/HashMap;

    move-result-object v3

    .line 410
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-direct {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundPool(I)Landroid/media/SoundPool;

    move-result-object v5

    .line 412
    .local v5, "pool":Landroid/media/SoundPool;
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 413
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 414
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 415
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 416
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 417
    .local v4, "pStreamID":I
    iget v6, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    iget v10, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    invoke-virtual {v5, v4, v6, v10}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto :goto_0

    .line 422
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v1    # "group":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v4    # "pStreamID":I
    .end local v5    # "pool":Landroid/media/SoundPool;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_4
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    return-void
.end method

.method public stopAllEffects()V
    .locals 10

    .prologue
    .line 369
    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 370
    :try_start_0
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 371
    .local v1, "group":I
    invoke-direct {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxSound;->getGroupPathStreamIdsMap(I)Ljava/util/HashMap;

    move-result-object v3

    .line 372
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-direct {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundPool(I)Landroid/media/SoundPool;

    move-result-object v5

    .line 374
    .local v5, "pool":Landroid/media/SoundPool;
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 375
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 376
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 377
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 378
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 379
    .local v4, "pStreamID":I
    invoke-virtual {v5, v4}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_1

    .line 387
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v1    # "group":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v4    # "pStreamID":I
    .end local v5    # "pool":Landroid/media/SoundPool;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 385
    .restart local v1    # "group":I
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .restart local v5    # "pool":Landroid/media/SoundPool;
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxSound;->getGroupPathStreamIdsMap(I)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 387
    .end local v1    # "group":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v5    # "pool":Landroid/media/SoundPool;
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    return-void
.end method

.method public stopEffect(II)V
    .locals 6
    .param p1, "pStreamID"    # I
    .param p2, "group"    # I

    .prologue
    .line 315
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundPool(I)Landroid/media/SoundPool;

    move-result-object v2

    .line 316
    .local v2, "pool":Landroid/media/SoundPool;
    invoke-virtual {v2, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 319
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->getGroupPathStreamIdsMap(I)Ljava/util/HashMap;

    move-result-object v0

    .line 320
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 321
    .local v1, "pPath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 326
    .end local v1    # "pPath":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public unloadAllEffects()V
    .locals 13

    .prologue
    .line 159
    iget-object v8, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 160
    :try_start_0
    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 161
    .local v2, "group":I
    invoke-direct {p0, v2}, Lorg/cocos2dx/lib/Cocos2dxSound;->getGroupPathStreamIdsMap(I)Ljava/util/HashMap;

    move-result-object v4

    .line 162
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 163
    const/4 v6, 0x0

    .line 164
    .local v6, "total":I
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 165
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 166
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 167
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 168
    .local v0, "arry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 170
    .local v5, "soundId":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v7, v11}, Lorg/cocos2dx/lib/Cocos2dxSound;->unloadEffect(Ljava/lang/String;I)V

    .line 171
    const-string v7, "Cocos2dxSound"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unloading Group:["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] SoundId:["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 178
    .end local v0    # "arry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v2    # "group":I
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v5    # "soundId":Ljava/lang/Integer;
    .end local v6    # "total":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 174
    .restart local v2    # "group":I
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .restart local v6    # "total":I
    :cond_2
    :try_start_1
    const-string v7, "Cocos2dxSound"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StreamIDsMap["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] SIZE:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 177
    .end local v2    # "group":I
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v6    # "total":I
    :cond_3
    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mGroupMapPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 178
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    return-void
.end method

.method public unloadEffect(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pPath"    # Ljava/lang/String;
    .param p2, "pGroup"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundStreamIds(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 138
    .local v3, "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 139
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundPool(I)Landroid/media/SoundPool;

    move-result-object v1

    .line 140
    .local v1, "pool":Landroid/media/SoundPool;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 141
    .local v0, "pStreamID":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0

    .line 145
    .end local v0    # "pStreamID":Ljava/lang/Integer;
    .end local v1    # "pool":Landroid/media/SoundPool;
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->removeSoundStreamId(Ljava/lang/String;I)V

    .line 148
    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 149
    :try_start_0
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 150
    .local v2, "soundID":Ljava/lang/Integer;
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->getSoundPool(I)Landroid/media/SoundPool;

    move-result-object v1

    .line 151
    .restart local v1    # "pool":Landroid/media/SoundPool;
    if-eqz v2, :cond_1

    .line 152
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/media/SoundPool;->unload(I)Z

    .line 153
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    monitor-exit v5

    .line 156
    return-void

    .line 155
    .end local v1    # "pool":Landroid/media/SoundPool;
    .end local v2    # "soundID":Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
