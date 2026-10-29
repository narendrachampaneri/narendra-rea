.class public abstract Lcom/google/example/games/basegameutils/BaseGameActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseGameActivity.java"

# interfaces
.implements Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final CLIENT_ALL:I = 0xb

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_PLUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BaseGameActivity"


# instance fields
.field protected mDebugLog:Z

.field protected mHelper:Lcom/google/example/games/basegameutils/GameHelper;

.field protected mRequestedClients:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mRequestedClients:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mDebugLog:Z

    .line 64
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "requestedClients"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mRequestedClients:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mDebugLog:Z

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/example/games/basegameutils/BaseGameActivity;->setRequestedClients(I)V

    .line 74
    return-void
.end method


# virtual methods
.method protected beginUserInitiatedSignIn()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->beginUserInitiatedSignIn()V

    .line 135
    return-void
.end method

.method protected enableDebugLog(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mDebugLog:Z

    .line 151
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1}, Lcom/google/example/games/basegameutils/GameHelper;->enableDebugLog(Z)V

    .line 154
    :cond_0
    return-void
.end method

.method protected enableDebugLog(ZLjava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    const-string v0, "BaseGameActivity"

    const-string v1, "BaseGameActivity.enabledDebugLog(bool,String) is deprecated. Use enableDebugLog(boolean)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0, p1}, Lcom/google/example/games/basegameutils/BaseGameActivity;->enableDebugLog(Z)V

    .line 161
    return-void
.end method

.method protected getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/google/example/games/basegameutils/GameHelper;

    iget v1, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mRequestedClients:I

    invoke-direct {v0, p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    .line 93
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    iget-boolean v1, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mDebugLog:Z

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->enableDebugLog(Z)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    return-object v0
.end method

.method protected getInvitationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSignInError()Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getSignInError()Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    move-result-object v0

    return-object v0
.end method

.method protected hasSignInError()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->hasSignInError()Z

    move-result v0

    return v0
.end method

.method protected isSignedIn()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "request"    # I
    .param p2, "response"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 122
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/example/games/basegameutils/GameHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 123
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const-string v0, "BaseGameActivity"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "BaseGameActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p0}, Lcom/google/example/games/basegameutils/GameHelper;->setup(Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;)V

    .line 105
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "BaseGameActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    .line 109
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 110
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p0}, Lcom/google/example/games/basegameutils/GameHelper;->onStart(Landroid/app/Activity;)V

    .line 111
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    .line 115
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 116
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->onStop()V

    .line 117
    return-void
.end method

.method protected reconnectClient()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->reconnectClient()V

    .line 169
    return-void
.end method

.method protected setRequestedClients(I)V
    .locals 0
    .param p1, "requestedClients"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mRequestedClients:I

    .line 88
    return-void
.end method

.method protected showAlert(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 143
    return-void
.end method

.method protected showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 147
    return-void
.end method

.method protected signOut()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->signOut()V

    .line 139
    return-void
.end method
