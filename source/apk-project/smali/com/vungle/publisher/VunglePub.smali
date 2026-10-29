.class public Lcom/vungle/publisher/VunglePub;
.super Lcom/vungle/publisher/VunglePubBase;
.source "vungle"


# static fields
.field private static final m:Lcom/vungle/publisher/VunglePub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/vungle/publisher/VunglePub;

    invoke-direct {v0}, Lcom/vungle/publisher/VunglePub;-><init>()V

    sput-object v0, Lcom/vungle/publisher/VunglePub;->m:Lcom/vungle/publisher/VunglePub;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vungle/publisher/VunglePub;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/vungle/publisher/VunglePub;->m:Lcom/vungle/publisher/VunglePub;

    return-object v0
.end method


# virtual methods
.method protected final a()Z
    .locals 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/vungle/publisher/VunglePubBase;->a()Z

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/vungle/publisher/VunglePub;->f:Lcom/vungle/publisher/bt;

    invoke-interface {v1}, Lcom/vungle/publisher/bt;->p()Z

    .line 20
    return v0
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/vungle/publisher/VunglePubBase;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/VunglePub;->f:Lcom/vungle/publisher/bt;

    invoke-interface {v0}, Lcom/vungle/publisher/bt;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
