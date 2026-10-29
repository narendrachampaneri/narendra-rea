package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.view.Choreographer;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public final class SmoothFrameReleaseTimeHelper implements MediaCodecVideoTrackRenderer.FrameReleaseTimeHelper, Choreographer.FrameCallback {
    private static final long CHOREOGRAPHER_SAMPLE_DELAY_MILLIS = 500;
    private static final long MAX_ALLOWED_DRIFT_NS = 20000000;
    private static final int MIN_FRAMES_FOR_ADJUSTMENT = 6;
    private static final long VSYNC_OFFSET_PERCENTAGE = 80;
    private long adjustedLastFrameTimeNs;
    private Choreographer choreographer;
    private int frameCount;
    private boolean haveSync;
    private long lastUnadjustedFrameTimeUs;
    private long pendingAdjustedFrameTimeNs;
    private long sampledVsyncTimeNs;
    private long syncFrameTimeNs;
    private long syncReleaseTimeNs;
    private final boolean usePrimaryDisplayVsync;
    private final long vsyncDurationNs;
    private final long vsyncOffsetNs;

    public SmoothFrameReleaseTimeHelper(float primaryDisplayRefreshRate, boolean usePrimaryDisplayVsync) {
        this.usePrimaryDisplayVsync = usePrimaryDisplayVsync;
        if (usePrimaryDisplayVsync) {
            this.vsyncDurationNs = (long) (1.0E9d / ((double) primaryDisplayRefreshRate));
            this.vsyncOffsetNs = (this.vsyncDurationNs * VSYNC_OFFSET_PERCENTAGE) / 100;
        } else {
            this.vsyncDurationNs = -1L;
            this.vsyncOffsetNs = -1L;
        }
    }

    @Override // com.google.android.exoplayer.MediaCodecVideoTrackRenderer.FrameReleaseTimeHelper
    public void enable() {
        this.haveSync = false;
        if (this.usePrimaryDisplayVsync) {
            this.sampledVsyncTimeNs = 0L;
            this.choreographer = Choreographer.getInstance();
            this.choreographer.postFrameCallback(this);
        }
    }

    @Override // com.google.android.exoplayer.MediaCodecVideoTrackRenderer.FrameReleaseTimeHelper
    public void disable() {
        if (this.usePrimaryDisplayVsync) {
            this.choreographer.removeFrameCallback(this);
            this.choreographer = null;
        }
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long vsyncTimeNs) {
        this.sampledVsyncTimeNs = vsyncTimeNs;
        this.choreographer.postFrameCallbackDelayed(this, CHOREOGRAPHER_SAMPLE_DELAY_MILLIS);
    }

    @Override // com.google.android.exoplayer.MediaCodecVideoTrackRenderer.FrameReleaseTimeHelper
    public long adjustReleaseTime(long unadjustedFrameTimeUs, long unadjustedReleaseTimeNs) {
        long unadjustedFrameTimeNs = unadjustedFrameTimeUs * 1000;
        long adjustedFrameTimeNs = unadjustedFrameTimeNs;
        long adjustedReleaseTimeNs = unadjustedReleaseTimeNs;
        if (this.haveSync) {
            if (unadjustedFrameTimeUs != this.lastUnadjustedFrameTimeUs) {
                this.frameCount++;
                this.adjustedLastFrameTimeNs = this.pendingAdjustedFrameTimeNs;
            }
            if (this.frameCount >= 6) {
                long averageFrameTimeNs = (unadjustedFrameTimeNs - this.syncFrameTimeNs) / ((long) this.frameCount);
                long candidateAdjustedFrameTimeNs = this.adjustedLastFrameTimeNs + averageFrameTimeNs;
                if (isDriftTooLarge(candidateAdjustedFrameTimeNs, unadjustedReleaseTimeNs)) {
                    this.haveSync = false;
                } else {
                    adjustedFrameTimeNs = candidateAdjustedFrameTimeNs;
                    adjustedReleaseTimeNs = (this.syncReleaseTimeNs + adjustedFrameTimeNs) - this.syncFrameTimeNs;
                }
            } else if (isDriftTooLarge(unadjustedFrameTimeNs, unadjustedReleaseTimeNs)) {
                this.haveSync = false;
            }
        }
        if (!this.haveSync) {
            this.syncFrameTimeNs = unadjustedFrameTimeNs;
            this.syncReleaseTimeNs = unadjustedReleaseTimeNs;
            this.frameCount = 0;
            this.haveSync = true;
            onSynced();
        }
        this.lastUnadjustedFrameTimeUs = unadjustedFrameTimeUs;
        this.pendingAdjustedFrameTimeNs = adjustedFrameTimeNs;
        if (this.sampledVsyncTimeNs != 0) {
            long snappedTimeNs = closestVsync(adjustedReleaseTimeNs, this.sampledVsyncTimeNs, this.vsyncDurationNs);
            return snappedTimeNs - this.vsyncOffsetNs;
        }
        return adjustedReleaseTimeNs;
    }

    protected void onSynced() {
    }

    private boolean isDriftTooLarge(long frameTimeNs, long releaseTimeNs) {
        long elapsedFrameTimeNs = frameTimeNs - this.syncFrameTimeNs;
        long elapsedReleaseTimeNs = releaseTimeNs - this.syncReleaseTimeNs;
        return Math.abs(elapsedReleaseTimeNs - elapsedFrameTimeNs) > MAX_ALLOWED_DRIFT_NS;
    }

    private static long closestVsync(long releaseTime, long sampledVsyncTime, long vsyncDuration) {
        long snappedBeforeNs;
        long snappedAfterNs;
        long vsyncCount = (releaseTime - sampledVsyncTime) / vsyncDuration;
        long snappedTimeNs = sampledVsyncTime + (vsyncDuration * vsyncCount);
        if (releaseTime <= snappedTimeNs) {
            snappedBeforeNs = snappedTimeNs - vsyncDuration;
            snappedAfterNs = snappedTimeNs;
        } else {
            snappedBeforeNs = snappedTimeNs;
            snappedAfterNs = snappedTimeNs + vsyncDuration;
        }
        long snappedAfterDiff = snappedAfterNs - releaseTime;
        long snappedBeforeDiff = releaseTime - snappedBeforeNs;
        if (snappedAfterDiff < snappedBeforeDiff) {
            return snappedAfterNs;
        }
        long snappedAfterNs2 = snappedBeforeNs;
        return snappedAfterNs2;
    }
}
