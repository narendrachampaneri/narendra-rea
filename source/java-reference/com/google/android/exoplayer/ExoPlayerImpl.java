package com.google.android.exoplayer;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.Arrays;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes2.dex */
final class ExoPlayerImpl implements ExoPlayer {
    private static final String TAG = "ExoPlayerImpl";
    private final Handler eventHandler;
    private final ExoPlayerImplInternal internalPlayer;
    private final CopyOnWriteArraySet<ExoPlayer.Listener> listeners;
    private int pendingPlayWhenReadyAcks;
    private boolean playWhenReady;
    private int playbackState;
    private final boolean[] rendererEnabledFlags;
    private final boolean[] rendererHasMediaFlags;

    @SuppressLint({"HandlerLeak"})
    public ExoPlayerImpl(int rendererCount, int minBufferMs, int minRebufferMs) {
        Log.i(TAG, "Init 1.4.2");
        this.playWhenReady = false;
        this.playbackState = 1;
        this.listeners = new CopyOnWriteArraySet<>();
        this.rendererHasMediaFlags = new boolean[rendererCount];
        this.rendererEnabledFlags = new boolean[rendererCount];
        for (int i = 0; i < this.rendererEnabledFlags.length; i++) {
            this.rendererEnabledFlags[i] = true;
        }
        this.eventHandler = new Handler() { // from class: com.google.android.exoplayer.ExoPlayerImpl.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                ExoPlayerImpl.this.handleEvent(msg);
            }
        };
        this.internalPlayer = new ExoPlayerImplInternal(this.eventHandler, this.playWhenReady, this.rendererEnabledFlags, minBufferMs, minRebufferMs);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public Looper getPlaybackLooper() {
        return this.internalPlayer.getPlaybackLooper();
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void addListener(ExoPlayer.Listener listener) {
        this.listeners.add(listener);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void removeListener(ExoPlayer.Listener listener) {
        this.listeners.remove(listener);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public int getPlaybackState() {
        return this.playbackState;
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void prepare(TrackRenderer... renderers) {
        Arrays.fill(this.rendererHasMediaFlags, false);
        this.internalPlayer.prepare(renderers);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public boolean getRendererHasMedia(int rendererIndex) {
        return this.rendererHasMediaFlags[rendererIndex];
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void setRendererEnabled(int rendererIndex, boolean enabled) {
        if (this.rendererEnabledFlags[rendererIndex] != enabled) {
            this.rendererEnabledFlags[rendererIndex] = enabled;
            this.internalPlayer.setRendererEnabled(rendererIndex, enabled);
        }
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public boolean getRendererEnabled(int rendererIndex) {
        return this.rendererEnabledFlags[rendererIndex];
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void setPlayWhenReady(boolean playWhenReady) {
        if (this.playWhenReady != playWhenReady) {
            this.playWhenReady = playWhenReady;
            this.pendingPlayWhenReadyAcks++;
            this.internalPlayer.setPlayWhenReady(playWhenReady);
            for (ExoPlayer.Listener listener : this.listeners) {
                listener.onPlayerStateChanged(playWhenReady, this.playbackState);
            }
        }
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public boolean getPlayWhenReady() {
        return this.playWhenReady;
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public boolean isPlayWhenReadyCommitted() {
        return this.pendingPlayWhenReadyAcks == 0;
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void seekTo(long positionMs) {
        this.internalPlayer.seekTo(positionMs);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void stop() {
        this.internalPlayer.stop();
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void release() {
        this.internalPlayer.release();
        this.eventHandler.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void sendMessage(ExoPlayer.ExoPlayerComponent target, int messageType, Object message) {
        this.internalPlayer.sendMessage(target, messageType, message);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void blockingSendMessage(ExoPlayer.ExoPlayerComponent target, int messageType, Object message) {
        this.internalPlayer.blockingSendMessage(target, messageType, message);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public long getDuration() {
        return this.internalPlayer.getDuration();
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public long getCurrentPosition() {
        return this.internalPlayer.getCurrentPosition();
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public long getBufferedPosition() {
        return this.internalPlayer.getBufferedPosition();
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public int getBufferedPercentage() {
        long bufferedPosition = getBufferedPosition();
        long duration = getDuration();
        if (bufferedPosition == -1 || duration == -1) {
            return 0;
        }
        return (int) (duration != 0 ? (100 * bufferedPosition) / duration : 100L);
    }

    void handleEvent(Message msg) {
        switch (msg.what) {
            case 1:
                boolean[] rendererHasMediaFlags = (boolean[]) msg.obj;
                System.arraycopy(rendererHasMediaFlags, 0, this.rendererHasMediaFlags, 0, rendererHasMediaFlags.length);
                this.playbackState = msg.arg1;
                for (ExoPlayer.Listener listener : this.listeners) {
                    listener.onPlayerStateChanged(this.playWhenReady, this.playbackState);
                }
                break;
            case 2:
                this.playbackState = msg.arg1;
                for (ExoPlayer.Listener listener2 : this.listeners) {
                    listener2.onPlayerStateChanged(this.playWhenReady, this.playbackState);
                }
                break;
            case 3:
                this.pendingPlayWhenReadyAcks--;
                if (this.pendingPlayWhenReadyAcks == 0) {
                    for (ExoPlayer.Listener listener3 : this.listeners) {
                        listener3.onPlayWhenReadyCommitted();
                    }
                }
                break;
            case 4:
                ExoPlaybackException exception = (ExoPlaybackException) msg.obj;
                for (ExoPlayer.Listener listener4 : this.listeners) {
                    listener4.onPlayerError(exception);
                }
                break;
        }
    }
}
