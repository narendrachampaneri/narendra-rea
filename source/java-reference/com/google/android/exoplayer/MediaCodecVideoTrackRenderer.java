package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.TraceUtil;
import com.google.android.exoplayer.util.Util;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public class MediaCodecVideoTrackRenderer extends MediaCodecTrackRenderer {
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    public static final int MSG_SET_SURFACE = 1;
    private final long allowedJoiningTimeUs;
    private int currentHeight;
    private float currentPixelWidthHeightRatio;
    private int currentWidth;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrameCount;
    private final EventListener eventListener;
    private final FrameReleaseTimeHelper frameReleaseTimeHelper;
    private long joiningDeadlineUs;
    private int lastReportedHeight;
    private float lastReportedPixelWidthHeightRatio;
    private int lastReportedWidth;
    private final int maxDroppedFrameCountToNotify;
    private float pendingPixelWidthHeightRatio;
    private boolean renderedFirstFrame;
    private boolean reportedDrawnToSurface;
    private Surface surface;
    private final int videoScalingMode;

    public interface EventListener extends MediaCodecTrackRenderer.EventListener {
        void onDrawnToSurface(Surface surface);

        void onDroppedFrames(int i, long j);

        void onVideoSizeChanged(int i, int i2, float f);
    }

    public interface FrameReleaseTimeHelper {
        long adjustReleaseTime(long j, long j2);

        void disable();

        void enable();
    }

    public MediaCodecVideoTrackRenderer(SampleSource source, int videoScalingMode) {
        this(source, null, true, videoScalingMode);
    }

    public MediaCodecVideoTrackRenderer(SampleSource source, DrmSessionManager drmSessionManager, boolean playClearSamplesWithoutKeys, int videoScalingMode) {
        this(source, drmSessionManager, playClearSamplesWithoutKeys, videoScalingMode, 0L);
    }

    public MediaCodecVideoTrackRenderer(SampleSource source, int videoScalingMode, long allowedJoiningTimeMs) {
        this(source, null, true, videoScalingMode, allowedJoiningTimeMs);
    }

    public MediaCodecVideoTrackRenderer(SampleSource source, DrmSessionManager drmSessionManager, boolean playClearSamplesWithoutKeys, int videoScalingMode, long allowedJoiningTimeMs) {
        this(source, drmSessionManager, playClearSamplesWithoutKeys, videoScalingMode, allowedJoiningTimeMs, null, null, null, -1);
    }

    public MediaCodecVideoTrackRenderer(SampleSource source, int videoScalingMode, long allowedJoiningTimeMs, Handler eventHandler, EventListener eventListener, int maxDroppedFrameCountToNotify) {
        this(source, null, true, videoScalingMode, allowedJoiningTimeMs, null, eventHandler, eventListener, maxDroppedFrameCountToNotify);
    }

    public MediaCodecVideoTrackRenderer(SampleSource source, DrmSessionManager drmSessionManager, boolean playClearSamplesWithoutKeys, int videoScalingMode, long allowedJoiningTimeMs, FrameReleaseTimeHelper frameReleaseTimeHelper, Handler eventHandler, EventListener eventListener, int maxDroppedFrameCountToNotify) {
        super(source, drmSessionManager, playClearSamplesWithoutKeys, eventHandler, eventListener);
        this.videoScalingMode = videoScalingMode;
        this.allowedJoiningTimeUs = 1000 * allowedJoiningTimeMs;
        this.frameReleaseTimeHelper = frameReleaseTimeHelper;
        this.eventListener = eventListener;
        this.maxDroppedFrameCountToNotify = maxDroppedFrameCountToNotify;
        this.joiningDeadlineUs = -1L;
        this.currentWidth = -1;
        this.currentHeight = -1;
        this.currentPixelWidthHeightRatio = -1.0f;
        this.pendingPixelWidthHeightRatio = -1.0f;
        this.lastReportedWidth = -1;
        this.lastReportedHeight = -1;
        this.lastReportedPixelWidthHeightRatio = -1.0f;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected boolean handlesMimeType(String mimeType) {
        return MimeTypes.isVideo(mimeType) && super.handlesMimeType(mimeType);
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onEnabled(long positionUs, boolean joining) {
        super.onEnabled(positionUs, joining);
        this.renderedFirstFrame = false;
        if (joining && this.allowedJoiningTimeUs > 0) {
            this.joiningDeadlineUs = (SystemClock.elapsedRealtime() * 1000) + this.allowedJoiningTimeUs;
        }
        if (this.frameReleaseTimeHelper != null) {
            this.frameReleaseTimeHelper.enable();
        }
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void seekTo(long positionUs) throws ExoPlaybackException {
        super.seekTo(positionUs);
        this.renderedFirstFrame = false;
        this.joiningDeadlineUs = -1L;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        if (super.isReady() && (this.renderedFirstFrame || !codecInitialized() || getSourceState() == 2)) {
            this.joiningDeadlineUs = -1L;
            return true;
        }
        if (this.joiningDeadlineUs == -1) {
            return false;
        }
        if (SystemClock.elapsedRealtime() * 1000 < this.joiningDeadlineUs) {
            return true;
        }
        this.joiningDeadlineUs = -1L;
        return false;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onStarted() {
        super.onStarted();
        this.droppedFrameCount = 0;
        this.droppedFrameAccumulationStartTimeMs = SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onStopped() {
        this.joiningDeadlineUs = -1L;
        maybeNotifyDroppedFrameCount();
        super.onStopped();
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    public void onDisabled() {
        this.currentWidth = -1;
        this.currentHeight = -1;
        this.currentPixelWidthHeightRatio = -1.0f;
        this.pendingPixelWidthHeightRatio = -1.0f;
        this.lastReportedWidth = -1;
        this.lastReportedHeight = -1;
        this.lastReportedPixelWidthHeightRatio = -1.0f;
        if (this.frameReleaseTimeHelper != null) {
            this.frameReleaseTimeHelper.disable();
        }
        super.onDisabled();
    }

    @Override // com.google.android.exoplayer.TrackRenderer, com.google.android.exoplayer.ExoPlayer.ExoPlayerComponent
    public void handleMessage(int messageType, Object message) throws ExoPlaybackException {
        if (messageType == 1) {
            setSurface((Surface) message);
        } else {
            super.handleMessage(messageType, message);
        }
    }

    private void setSurface(Surface surface) throws ExoPlaybackException {
        if (this.surface != surface) {
            this.surface = surface;
            this.reportedDrawnToSurface = false;
            int state = getState();
            if (state == 2 || state == 3) {
                releaseCodec();
                maybeInitCodec();
            }
        }
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected boolean shouldInitCodec() {
        return super.shouldInitCodec() && this.surface != null && this.surface.isValid();
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected void configureCodec(MediaCodec codec, String codecName, android.media.MediaFormat format, MediaCrypto crypto) {
        codec.configure(format, this.surface, crypto, 0);
        codec.setVideoScalingMode(this.videoScalingMode);
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected void onInputFormatChanged(MediaFormatHolder holder) throws ExoPlaybackException {
        super.onInputFormatChanged(holder);
        this.pendingPixelWidthHeightRatio = holder.format.pixelWidthHeightRatio == -1.0f ? 1.0f : holder.format.pixelWidthHeightRatio;
    }

    protected final boolean haveRenderedFirstFrame() {
        return this.renderedFirstFrame;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected void onOutputFormatChanged(MediaFormat inputFormat, android.media.MediaFormat outputFormat) {
        boolean hasCrop = outputFormat.containsKey(KEY_CROP_RIGHT) && outputFormat.containsKey(KEY_CROP_LEFT) && outputFormat.containsKey(KEY_CROP_BOTTOM) && outputFormat.containsKey(KEY_CROP_TOP);
        this.currentWidth = hasCrop ? (outputFormat.getInteger(KEY_CROP_RIGHT) - outputFormat.getInteger(KEY_CROP_LEFT)) + 1 : outputFormat.getInteger("width");
        this.currentHeight = hasCrop ? (outputFormat.getInteger(KEY_CROP_BOTTOM) - outputFormat.getInteger(KEY_CROP_TOP)) + 1 : outputFormat.getInteger("height");
        this.currentPixelWidthHeightRatio = this.pendingPixelWidthHeightRatio;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected boolean canReconfigureCodec(MediaCodec codec, boolean codecIsAdaptive, MediaFormat oldFormat, MediaFormat newFormat) {
        return newFormat.mimeType.equals(oldFormat.mimeType) && (codecIsAdaptive || (oldFormat.width == newFormat.width && oldFormat.height == newFormat.height));
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected boolean processOutputBuffer(long positionUs, long elapsedRealtimeUs, MediaCodec codec, ByteBuffer buffer, MediaCodec.BufferInfo bufferInfo, int bufferIndex, boolean shouldSkip) {
        long adjustedReleaseTimeNs;
        if (shouldSkip) {
            skipOutputBuffer(codec, bufferIndex);
            return true;
        }
        long elapsedSinceStartOfLoopUs = (SystemClock.elapsedRealtime() * 1000) - elapsedRealtimeUs;
        long earlyUs = (bufferInfo.presentationTimeUs - positionUs) - elapsedSinceStartOfLoopUs;
        long systemTimeNs = System.nanoTime();
        long unadjustedFrameReleaseTimeNs = systemTimeNs + (1000 * earlyUs);
        if (this.frameReleaseTimeHelper != null) {
            adjustedReleaseTimeNs = this.frameReleaseTimeHelper.adjustReleaseTime(bufferInfo.presentationTimeUs, unadjustedFrameReleaseTimeNs);
            earlyUs = (adjustedReleaseTimeNs - systemTimeNs) / 1000;
        } else {
            adjustedReleaseTimeNs = unadjustedFrameReleaseTimeNs;
        }
        if (earlyUs < -30000) {
            dropOutputBuffer(codec, bufferIndex);
            return true;
        }
        if (!this.renderedFirstFrame) {
            if (Util.SDK_INT >= 21) {
                renderOutputBufferV21(codec, bufferIndex, System.nanoTime());
            } else {
                renderOutputBuffer(codec, bufferIndex);
            }
            return true;
        }
        if (getState() != 3) {
            return false;
        }
        if (Util.SDK_INT >= 21) {
            if (earlyUs < 50000) {
                renderOutputBufferV21(codec, bufferIndex, adjustedReleaseTimeNs);
                return true;
            }
        } else if (earlyUs < 30000) {
            if (earlyUs > 11000) {
                try {
                    Thread.sleep((earlyUs - 10000) / 1000);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
            renderOutputBuffer(codec, bufferIndex);
            return true;
        }
        return false;
    }

    protected void skipOutputBuffer(MediaCodec codec, int bufferIndex) {
        TraceUtil.beginSection("skipVideoBuffer");
        codec.releaseOutputBuffer(bufferIndex, false);
        TraceUtil.endSection();
        this.codecCounters.skippedOutputBufferCount++;
    }

    protected void dropOutputBuffer(MediaCodec codec, int bufferIndex) {
        TraceUtil.beginSection("dropVideoBuffer");
        codec.releaseOutputBuffer(bufferIndex, false);
        TraceUtil.endSection();
        this.codecCounters.droppedOutputBufferCount++;
        this.droppedFrameCount++;
        if (this.droppedFrameCount == this.maxDroppedFrameCountToNotify) {
            maybeNotifyDroppedFrameCount();
        }
    }

    protected void renderOutputBuffer(MediaCodec codec, int bufferIndex) {
        maybeNotifyVideoSizeChanged();
        TraceUtil.beginSection("releaseOutputBuffer");
        codec.releaseOutputBuffer(bufferIndex, true);
        TraceUtil.endSection();
        this.codecCounters.renderedOutputBufferCount++;
        this.renderedFirstFrame = true;
        maybeNotifyDrawnToSurface();
    }

    @TargetApi(21)
    protected void renderOutputBufferV21(MediaCodec codec, int bufferIndex, long releaseTimeNs) {
        maybeNotifyVideoSizeChanged();
        TraceUtil.beginSection("releaseOutputBuffer");
        codec.releaseOutputBuffer(bufferIndex, releaseTimeNs);
        TraceUtil.endSection();
        this.codecCounters.renderedOutputBufferCount++;
        this.renderedFirstFrame = true;
        maybeNotifyDrawnToSurface();
    }

    private void maybeNotifyVideoSizeChanged() {
        if (this.eventHandler == null || this.eventListener == null) {
            return;
        }
        if (this.lastReportedWidth != this.currentWidth || this.lastReportedHeight != this.currentHeight || this.lastReportedPixelWidthHeightRatio != this.currentPixelWidthHeightRatio) {
            final int currentWidth = this.currentWidth;
            final int currentHeight = this.currentHeight;
            final float currentPixelWidthHeightRatio = this.currentPixelWidthHeightRatio;
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecVideoTrackRenderer.1
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecVideoTrackRenderer.this.eventListener.onVideoSizeChanged(currentWidth, currentHeight, currentPixelWidthHeightRatio);
                }
            });
            this.lastReportedWidth = currentWidth;
            this.lastReportedHeight = currentHeight;
            this.lastReportedPixelWidthHeightRatio = currentPixelWidthHeightRatio;
        }
    }

    private void maybeNotifyDrawnToSurface() {
        if (this.eventHandler != null && this.eventListener != null && !this.reportedDrawnToSurface) {
            final Surface surface = this.surface;
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecVideoTrackRenderer.2
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecVideoTrackRenderer.this.eventListener.onDrawnToSurface(surface);
                }
            });
            this.reportedDrawnToSurface = true;
        }
    }

    private void maybeNotifyDroppedFrameCount() {
        if (this.eventHandler != null && this.eventListener != null && this.droppedFrameCount != 0) {
            long now = SystemClock.elapsedRealtime();
            final int countToNotify = this.droppedFrameCount;
            final long elapsedToNotify = now - this.droppedFrameAccumulationStartTimeMs;
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecVideoTrackRenderer.3
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecVideoTrackRenderer.this.eventListener.onDroppedFrames(countToNotify, elapsedToNotify);
                }
            });
            this.droppedFrameCount = 0;
            this.droppedFrameAccumulationStartTimeMs = now;
        }
    }
}
