.class final Lcom/appsomniacs/da2/DA2Activity$12;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->initGPGS()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2363
    monitor-enter p0

    .line 2364
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->initGPGS()Z

    .line 2365
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2366
    monitor-exit p0

    .line 2367
    return-void

    .line 2366
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
