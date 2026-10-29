.class public Lcom/mopub/common/event/Event;
.super Lcom/mopub/common/event/BaseEvent;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/event/Event$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/mopub/common/event/Event$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/mopub/common/event/Event$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/mopub/common/event/BaseEvent;-><init>(Lcom/mopub/common/event/BaseEvent$Builder;)V

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/event/Event$Builder;Lcom/mopub/common/event/Event$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mopub/common/event/Event$Builder;
    .param p2, "x1"    # Lcom/mopub/common/event/Event$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/mopub/common/event/Event;-><init>(Lcom/mopub/common/event/Event$Builder;)V

    return-void
.end method
