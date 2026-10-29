.class public final Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;
.super Ljava/lang/Object;
.source "TtmlSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/Subtitle;


# instance fields
.field private final eventTimesUs:[J

.field private final root:Lcom/google/android/exoplayer/text/ttml/TtmlNode;

.field private final startTimeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/text/ttml/TtmlNode;J)V
    .locals 2
    .param p1, "root"    # Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .param p2, "startTimeUs"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->root:Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    .line 36
    iput-wide p2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->startTimeUs:J

    .line 37
    invoke-virtual {p1}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getEventTimesUs()[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    .line 38
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 7
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->root:Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    iget-wide v4, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->startTimeUs:J

    sub-long v4, p1, v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getText(J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 69
    .local v1, "cueText":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 73
    :goto_0
    return-object v2

    .line 72
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/text/Cue;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    .line 73
    .local v0, "cue":Lcom/google/android/exoplayer/text/Cue;
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getEventTime(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    aget-wide v0, v0, p1

    iget-wide v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->startTimeUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method public getLastEventTime()J
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length v0, v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    iget-wide v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->startTimeUs:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    iget-object v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    goto :goto_0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    const/4 v4, 0x0

    .line 47
    iget-object v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    iget-wide v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->startTimeUs:J

    sub-long v2, p1, v2

    invoke-static {v1, v2, v3, v4, v4}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    .line 48
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->startTimeUs:J

    return-wide v0
.end method
