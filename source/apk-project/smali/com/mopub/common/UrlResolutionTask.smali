.class public Lcom/mopub/common/UrlResolutionTask;
.super Landroid/os/AsyncTask;
.source "UrlResolutionTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final REDIRECT_LIMIT:I = 0xa


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private final mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mopub/common/UrlResolutionTask;->mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;

    .line 38
    return-void
.end method

.method private getRedirectLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "urlString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, "url":Ljava/net/URL;
    const/4 v1, 0x0

    .line 77
    .local v1, "httpUrlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 78
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 80
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 82
    .local v2, "responseCode":I
    const/16 v4, 0x12c

    if-lt v2, v4, :cond_1

    const/16 v4, 0x190

    if-ge v2, v4, :cond_1

    .line 83
    const-string v4, "Location"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 88
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    :goto_0
    return-object v4

    .line 85
    :cond_1
    const/4 v4, 0x0

    .line 88
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 88
    .end local v2    # "responseCode":I
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v4
.end method

.method public static getResolvedUrl(Ljava/lang/String;Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V
    .locals 4
    .param p0, "urlString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "listener"    # Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    new-instance v1, Lcom/mopub/common/UrlResolutionTask;

    invoke-direct {v1, p1}, Lcom/mopub/common/UrlResolutionTask;-><init>(Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V

    .line 30
    .local v1, "urlResolutionTask":Lcom/mopub/common/UrlResolutionTask;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed to resolve url"

    invoke-interface {p1, v2, v0}, Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mopub/common/UrlResolutionTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/UrlResolutionTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "UrlResolutionTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/common/UrlResolutionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "UrlResolutionTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "urls"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 43
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    :cond_0
    move-object v1, v4

    .line 68
    :cond_1
    :goto_0
    return-object v1

    .line 47
    :cond_2
    const/4 v2, 0x0

    .line 49
    .local v2, "previousUrl":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    aget-object v1, p1, v5

    .line 51
    .local v1, "locationUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 52
    .local v3, "redirectCount":I
    :goto_1
    if-eqz v1, :cond_3

    const/16 v5, 0xa

    if-ge v3, v5, :cond_3

    .line 55
    sget-object v5, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    move-object v2, v1

    .line 60
    invoke-direct {p0, v1}, Lcom/mopub/common/UrlResolutionTask;->getRedirectLocation(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64
    .end local v1    # "locationUrl":Ljava/lang/String;
    .end local v3    # "redirectCount":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v4

    .line 65
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "locationUrl":Ljava/lang/String;
    .restart local v3    # "redirectCount":I
    :cond_3
    move-object v1, v2

    .line 68
    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 109
    iget-object v0, p0, Lcom/mopub/common/UrlResolutionTask;->mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;

    const-string v1, "Task for resolving url was cancelled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/UrlResolutionTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "UrlResolutionTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/common/UrlResolutionTask;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "UrlResolutionTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "resolvedUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lcom/mopub/common/UrlResolutionTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/common/UrlResolutionTask;->onCancelled()V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/mopub/common/UrlResolutionTask;->mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;

    invoke-interface {v0, p1}, Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method
