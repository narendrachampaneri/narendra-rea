.class final Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiAudioPlugBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;
    .param p2, "x1"    # Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-static {v1}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->access$100(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;)Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer/audio/AudioCapabilities;

    const-string v3, "android.media.extra.ENCODINGS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    const-string v4, "android.media.extra.MAX_CHANNEL_COUNT"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer/audio/AudioCapabilities;-><init>([II)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;->onAudioCapabilitiesChanged(Lcom/google/android/exoplayer/audio/AudioCapabilities;)V

    goto :goto_0
.end method
