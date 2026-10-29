package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer.audio.AudioTrack;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.util.MimeTypes;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public class MediaCodecAudioTrackRenderer extends MediaCodecTrackRenderer implements MediaClock {
    public static final int MSG_SET_VOLUME = 1;
    private static final String RAW_DECODER_NAME = "OMX.google.raw.decoder";
    private boolean allowPositionDiscontinuity;
    private int audioSessionId;
    private final AudioTrack audioTrack;
    private long currentPositionUs;
    private final EventListener eventListener;

    public interface EventListener extends MediaCodecTrackRenderer.EventListener {
        void onAudioTrackInitializationError(AudioTrack.InitializationException initializationException);

        void onAudioTrackWriteError(AudioTrack.WriteException writeException);
    }

    public MediaCodecAudioTrackRenderer(SampleSource source) {
        this(source, (DrmSessionManager) null, true);
    }

    public MediaCodecAudioTrackRenderer(SampleSource source, DrmSessionManager drmSessionManager, boolean playClearSamplesWithoutKeys) {
        this(source, drmSessionManager, playClearSamplesWithoutKeys, null, null);
    }

    public MediaCodecAudioTrackRenderer(SampleSource source, Handler eventHandler, EventListener eventListener) {
        this(source, null, true, eventHandler, eventListener);
    }

    public MediaCodecAudioTrackRenderer(SampleSource source, DrmSessionManager drmSessionManager, boolean playClearSamplesWithoutKeys, Handler eventHandler, EventListener eventListener) {
        super(source, drmSessionManager, playClearSamplesWithoutKeys, eventHandler, eventListener);
        this.eventListener = eventListener;
        this.audioSessionId = 0;
        this.audioTrack = new AudioTrack();
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected DecoderInfo getDecoderInfo(String mimeType, boolean requiresSecureDecoder) throws MediaCodecUtil.DecoderQueryException {
        return MimeTypes.isPassthroughAudio(mimeType) ? new DecoderInfo(RAW_DECODER_NAME, true) : super.getDecoderInfo(mimeType, requiresSecureDecoder);
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected void configureCodec(MediaCodec codec, String codecName, android.media.MediaFormat format, MediaCrypto crypto) {
        if (RAW_DECODER_NAME.equals(codecName)) {
            String mimeType = format.getString("mime");
            format.setString("mime", MimeTypes.AUDIO_RAW);
            codec.configure(format, (Surface) null, crypto, 0);
            format.setString("mime", mimeType);
            return;
        }
        codec.configure(format, (Surface) null, crypto, 0);
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected MediaClock getMediaClock() {
        return this;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected boolean handlesMimeType(String mimeType) {
        return MimeTypes.isAudio(mimeType) && super.handlesMimeType(mimeType);
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onEnabled(long positionUs, boolean joining) {
        super.onEnabled(positionUs, joining);
        seekToInternal(positionUs);
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected void onOutputFormatChanged(MediaFormat inputFormat, android.media.MediaFormat outputFormat) {
        if (MimeTypes.isPassthroughAudio(inputFormat.mimeType)) {
            this.audioTrack.reconfigure(inputFormat.getFrameworkMediaFormatV16());
        } else {
            this.audioTrack.reconfigure(outputFormat);
        }
    }

    protected void onAudioSessionId(int audioSessionId) {
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onStarted() {
        super.onStarted();
        this.audioTrack.play();
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onStopped() {
        this.audioTrack.pause();
        super.onStopped();
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected boolean isEnded() {
        return super.isEnded() && !(this.audioTrack.hasPendingData() && this.audioTrack.hasEnoughDataToBeginPlayback());
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        return this.audioTrack.hasPendingData() || (super.isReady() && getSourceState() == 2);
    }

    @Override // com.google.android.exoplayer.MediaClock
    public long getPositionUs() {
        long newCurrentPositionUs = this.audioTrack.getCurrentPositionUs(isEnded());
        if (newCurrentPositionUs != Long.MIN_VALUE) {
            if (!this.allowPositionDiscontinuity) {
                newCurrentPositionUs = Math.max(this.currentPositionUs, newCurrentPositionUs);
            }
            this.currentPositionUs = newCurrentPositionUs;
            this.allowPositionDiscontinuity = false;
        }
        return this.currentPositionUs;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onDisabled() {
        this.audioSessionId = 0;
        try {
            this.audioTrack.release();
        } finally {
            super.onDisabled();
        }
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void seekTo(long positionUs) throws ExoPlaybackException {
        super.seekTo(positionUs);
        seekToInternal(positionUs);
    }

    private void seekToInternal(long positionUs) {
        this.audioTrack.reset();
        this.currentPositionUs = positionUs;
        this.allowPositionDiscontinuity = true;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected boolean processOutputBuffer(long positionUs, long elapsedRealtimeUs, MediaCodec codec, ByteBuffer buffer, MediaCodec.BufferInfo bufferInfo, int bufferIndex, boolean shouldSkip) throws ExoPlaybackException {
        if (shouldSkip) {
            codec.releaseOutputBuffer(bufferIndex, false);
            this.codecCounters.skippedOutputBufferCount++;
            this.audioTrack.handleDiscontinuity();
            return true;
        }
        if (!this.audioTrack.isInitialized()) {
            try {
                if (this.audioSessionId != 0) {
                    this.audioTrack.initialize(this.audioSessionId);
                } else {
                    this.audioSessionId = this.audioTrack.initialize();
                    onAudioSessionId(this.audioSessionId);
                }
                if (getState() == 3) {
                    this.audioTrack.play();
                }
            } catch (AudioTrack.InitializationException e) {
                notifyAudioTrackInitializationError(e);
                throw new ExoPlaybackException(e);
            }
        }
        try {
            int handleBufferResult = this.audioTrack.handleBuffer(buffer, bufferInfo.offset, bufferInfo.size, bufferInfo.presentationTimeUs);
            if ((handleBufferResult & 1) != 0) {
                handleDiscontinuity();
                this.allowPositionDiscontinuity = true;
            }
            if ((handleBufferResult & 2) != 0) {
                codec.releaseOutputBuffer(bufferIndex, false);
                this.codecCounters.renderedOutputBufferCount++;
                return true;
            }
            return false;
        } catch (AudioTrack.WriteException e2) {
            notifyAudioTrackWriteError(e2);
            throw new ExoPlaybackException(e2);
        }
    }

    protected void handleDiscontinuity() {
    }

    @Override // com.google.android.exoplayer.TrackRenderer, com.google.android.exoplayer.ExoPlayer.ExoPlayerComponent
    public void handleMessage(int messageType, Object message) throws ExoPlaybackException {
        if (messageType == 1) {
            this.audioTrack.setVolume(((Float) message).floatValue());
        } else {
            super.handleMessage(messageType, message);
        }
    }

    private void notifyAudioTrackInitializationError(final AudioTrack.InitializationException e) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecAudioTrackRenderer.1
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecAudioTrackRenderer.this.eventListener.onAudioTrackInitializationError(e);
                }
            });
        }
    }

    private void notifyAudioTrackWriteError(final AudioTrack.WriteException e) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecAudioTrackRenderer.2
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecAudioTrackRenderer.this.eventListener.onAudioTrackWriteError(e);
                }
            });
        }
    }
}
