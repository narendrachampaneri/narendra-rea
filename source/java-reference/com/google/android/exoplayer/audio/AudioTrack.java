package com.google.android.exoplayer.audio;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.MediaFormat;
import android.os.ConditionVariable;
import android.util.Log;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.util.Ac3Util;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.location.places.Place;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public final class AudioTrack {
    private static final int BUFFER_MULTIPLICATION_FACTOR = 4;
    public static final long CURRENT_POSITION_NOT_SET = Long.MIN_VALUE;
    private static final long MAX_AUDIO_TIMESTAMP_OFFSET_US = 5000000;
    private static final long MAX_BUFFER_DURATION_US = 750000;
    private static final long MAX_LATENCY_US = 5000000;
    private static final int MAX_PLAYHEAD_OFFSET_COUNT = 10;
    private static final long MIN_BUFFER_DURATION_US = 250000;
    private static final int MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US = 30000;
    private static final int MIN_TIMESTAMP_SAMPLE_INTERVAL_US = 500000;
    public static final int RESULT_BUFFER_CONSUMED = 2;
    public static final int RESULT_POSITION_DISCONTINUITY = 1;
    public static final int SESSION_ID_NOT_SET = 0;
    private static final int START_IN_SYNC = 1;
    private static final int START_NEED_SYNC = 2;
    private static final int START_NOT_SET = 0;
    private static final String TAG = "AudioTrack";
    private static final int UNKNOWN_AC3_BITRATE = 0;
    public static boolean enablePreV21AudioSessionWorkaround = false;
    public static boolean failOnSpuriousAudioTimestamp = false;
    private int ac3Bitrate;
    private boolean audioTimestampSet;
    private android.media.AudioTrack audioTrack;
    private final AudioTrackUtil audioTrackUtil;
    private int bufferSize;
    private int channelConfig;
    private int encoding;
    private int frameSize;
    private Method getLatencyMethod;
    private boolean isAc3;
    private android.media.AudioTrack keepSessionIdAudioTrack;
    private long lastPlayheadSampleTimeUs;
    private long lastTimestampSampleTimeUs;
    private long latencyUs;
    private int minBufferSize;
    private int nextPlayheadOffsetIndex;
    private int playheadOffsetCount;
    private final long[] playheadOffsets;
    private final ConditionVariable releasingConditionVariable = new ConditionVariable(true);
    private long resumeSystemTimeUs;
    private int sampleRate;
    private long smoothedPlayheadOffsetUs;
    private int startMediaTimeState;
    private long startMediaTimeUs;
    private long submittedBytes;
    private byte[] temporaryBuffer;
    private int temporaryBufferOffset;
    private int temporaryBufferSize;
    private float volume;

    public static final class InitializationException extends Exception {
        public final int audioTrackState;

        public InitializationException(int audioTrackState, int sampleRate, int channelConfig, int bufferSize) {
            super("AudioTrack init failed: " + audioTrackState + ", Config(" + sampleRate + ", " + channelConfig + ", " + bufferSize + ")");
            this.audioTrackState = audioTrackState;
        }
    }

    public static final class WriteException extends Exception {
        public final int errorCode;

        public WriteException(int errorCode) {
            super("AudioTrack write failed: " + errorCode);
            this.errorCode = errorCode;
        }
    }

    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        public InvalidAudioTrackTimestampException(String message) {
            super(message);
        }
    }

    public AudioTrack() {
        if (Util.SDK_INT >= 18) {
            try {
                this.getLatencyMethod = android.media.AudioTrack.class.getMethod("getLatency", (Class[]) null);
            } catch (NoSuchMethodException e) {
            }
        }
        if (Util.SDK_INT >= 19) {
            this.audioTrackUtil = new AudioTrackUtilV19();
        } else {
            this.audioTrackUtil = new AudioTrackUtil();
        }
        this.playheadOffsets = new long[10];
        this.volume = 1.0f;
        this.startMediaTimeState = 0;
    }

    public boolean isInitialized() {
        return this.audioTrack != null;
    }

    public long getCurrentPositionUs(boolean sourceEnded) {
        long currentPositionUs;
        if (!hasCurrentPositionUs()) {
            return Long.MIN_VALUE;
        }
        if (this.audioTrack.getPlayState() == 3) {
            maybeSampleSyncParams();
        }
        long systemClockUs = System.nanoTime() / 1000;
        if (this.audioTimestampSet) {
            long presentationDiff = systemClockUs - (this.audioTrackUtil.getTimestampNanoTime() / 1000);
            long framesDiff = durationUsToFrames(presentationDiff);
            long currentFramePosition = this.audioTrackUtil.getTimestampFramePosition() + framesDiff;
            return framesToDurationUs(currentFramePosition) + this.startMediaTimeUs;
        }
        if (this.playheadOffsetCount == 0) {
            currentPositionUs = this.audioTrackUtil.getPlaybackHeadPositionUs() + this.startMediaTimeUs;
        } else {
            currentPositionUs = this.smoothedPlayheadOffsetUs + systemClockUs + this.startMediaTimeUs;
        }
        if (!sourceEnded) {
            return currentPositionUs - this.latencyUs;
        }
        return currentPositionUs;
    }

    public int initialize() throws InitializationException {
        return initialize(0);
    }

    public int initialize(int sessionId) throws InitializationException {
        this.releasingConditionVariable.block();
        if (sessionId == 0) {
            this.audioTrack = new android.media.AudioTrack(3, this.sampleRate, this.channelConfig, this.encoding, this.bufferSize, 1);
        } else {
            this.audioTrack = new android.media.AudioTrack(3, this.sampleRate, this.channelConfig, this.encoding, this.bufferSize, 1, sessionId);
        }
        checkAudioTrackInitialized();
        int sessionId2 = this.audioTrack.getAudioSessionId();
        if (enablePreV21AudioSessionWorkaround && Util.SDK_INT < 21) {
            if (this.keepSessionIdAudioTrack != null && sessionId2 != this.keepSessionIdAudioTrack.getAudioSessionId()) {
                releaseKeepSessionIdAudioTrack();
            }
            if (this.keepSessionIdAudioTrack == null) {
                this.keepSessionIdAudioTrack = new android.media.AudioTrack(3, 4000, 4, 2, 2, 0, sessionId2);
            }
        }
        this.audioTrackUtil.reconfigure(this.audioTrack, this.isAc3);
        setVolume(this.volume);
        return sessionId2;
    }

    public void reconfigure(MediaFormat format) {
        reconfigure(format, 0);
    }

    public void reconfigure(MediaFormat format, int specifiedBufferSize) {
        int channelConfig;
        int channelCount = format.getInteger("channel-count");
        switch (channelCount) {
            case 1:
                channelConfig = 4;
                break;
            case 2:
                channelConfig = 12;
                break;
            case 3:
            case 4:
            case 5:
            case 7:
            default:
                throw new IllegalArgumentException("Unsupported channel count: " + channelCount);
            case 6:
                channelConfig = 252;
                break;
            case 8:
                channelConfig = Place.TYPE_ROUTE;
                break;
        }
        int sampleRate = format.getInteger("sample-rate");
        String mimeType = format.getString("mime");
        int encoding = MimeTypes.getEncodingForMimeType(mimeType);
        boolean isAc3 = encoding == 5 || encoding == 6;
        if (!isInitialized() || this.sampleRate != sampleRate || this.channelConfig != channelConfig || this.isAc3 || isAc3) {
            reset();
            this.encoding = encoding;
            this.sampleRate = sampleRate;
            this.channelConfig = channelConfig;
            this.isAc3 = isAc3;
            this.ac3Bitrate = 0;
            this.frameSize = channelCount * 2;
            this.minBufferSize = android.media.AudioTrack.getMinBufferSize(sampleRate, channelConfig, encoding);
            Assertions.checkState(this.minBufferSize != -2);
            if (specifiedBufferSize != 0) {
                this.bufferSize = specifiedBufferSize;
                return;
            }
            int multipliedBufferSize = this.minBufferSize * 4;
            int minAppBufferSize = ((int) durationUsToFrames(MIN_BUFFER_DURATION_US)) * this.frameSize;
            int maxAppBufferSize = (int) Math.max(this.minBufferSize, durationUsToFrames(MAX_BUFFER_DURATION_US) * ((long) this.frameSize));
            if (multipliedBufferSize >= minAppBufferSize) {
                minAppBufferSize = multipliedBufferSize > maxAppBufferSize ? maxAppBufferSize : multipliedBufferSize;
            }
            this.bufferSize = minAppBufferSize;
        }
    }

    public void play() {
        if (isInitialized()) {
            this.resumeSystemTimeUs = System.nanoTime() / 1000;
            this.audioTrack.play();
        }
    }

    public void handleDiscontinuity() {
        if (this.startMediaTimeState == 1) {
            this.startMediaTimeState = 2;
        }
    }

    public int handleBuffer(ByteBuffer buffer, int offset, int size, long presentationTimeUs) throws WriteException {
        if (size == 0) {
            return 2;
        }
        if (Util.SDK_INT <= 22 && this.isAc3) {
            if (this.audioTrack.getPlayState() == 2) {
                return 0;
            }
            if (this.audioTrack.getPlayState() == 1 && this.audioTrackUtil.getPlaybackHeadPosition() != 0) {
                return 0;
            }
        }
        int result = 0;
        if (this.temporaryBufferSize == 0) {
            if (this.isAc3 && this.ac3Bitrate == 0) {
                this.ac3Bitrate = Ac3Util.getBitrate(size, this.sampleRate);
            }
            long bufferStartTime = presentationTimeUs - framesToDurationUs(bytesToFrames(size));
            if (this.startMediaTimeState == 0) {
                this.startMediaTimeUs = Math.max(0L, bufferStartTime);
                this.startMediaTimeState = 1;
            } else {
                long expectedBufferStartTime = this.startMediaTimeUs + framesToDurationUs(bytesToFrames(this.submittedBytes));
                if (this.startMediaTimeState == 1 && Math.abs(expectedBufferStartTime - bufferStartTime) > 200000) {
                    Log.e(TAG, "Discontinuity detected [expected " + expectedBufferStartTime + ", got " + bufferStartTime + "]");
                    this.startMediaTimeState = 2;
                }
                if (this.startMediaTimeState == 2) {
                    this.startMediaTimeUs += bufferStartTime - expectedBufferStartTime;
                    this.startMediaTimeState = 1;
                    result = 0 | 1;
                }
            }
        }
        if (this.temporaryBufferSize == 0) {
            this.temporaryBufferSize = size;
            buffer.position(offset);
            if (Util.SDK_INT < 21) {
                if (this.temporaryBuffer == null || this.temporaryBuffer.length < size) {
                    this.temporaryBuffer = new byte[size];
                }
                buffer.get(this.temporaryBuffer, 0, size);
                this.temporaryBufferOffset = 0;
            }
        }
        int bytesWritten = 0;
        if (Util.SDK_INT < 21) {
            int bytesPending = (int) (this.submittedBytes - (this.audioTrackUtil.getPlaybackHeadPosition() * ((long) this.frameSize)));
            int bytesToWrite = this.bufferSize - bytesPending;
            if (bytesToWrite > 0) {
                bytesWritten = this.audioTrack.write(this.temporaryBuffer, this.temporaryBufferOffset, Math.min(this.temporaryBufferSize, bytesToWrite));
                if (bytesWritten >= 0) {
                    this.temporaryBufferOffset += bytesWritten;
                }
            }
        } else {
            bytesWritten = writeNonBlockingV21(this.audioTrack, buffer, this.temporaryBufferSize);
        }
        if (bytesWritten < 0) {
            throw new WriteException(bytesWritten);
        }
        this.temporaryBufferSize -= bytesWritten;
        this.submittedBytes += (long) bytesWritten;
        if (this.temporaryBufferSize == 0) {
            return result | 2;
        }
        return result;
    }

    @TargetApi(21)
    private static int writeNonBlockingV21(android.media.AudioTrack audioTrack, ByteBuffer buffer, int size) {
        return audioTrack.write(buffer, size, 1);
    }

    public boolean hasPendingData() {
        return isInitialized() && (bytesToFrames(this.submittedBytes) > this.audioTrackUtil.getPlaybackHeadPosition() || this.audioTrackUtil.overrideHasPendingData());
    }

    public boolean hasEnoughDataToBeginPlayback() {
        return this.submittedBytes > ((long) ((this.minBufferSize * 3) / 2));
    }

    public void setVolume(float volume) {
        this.volume = volume;
        if (isInitialized()) {
            if (Util.SDK_INT >= 21) {
                setVolumeV21(this.audioTrack, volume);
            } else {
                setVolumeV3(this.audioTrack, volume);
            }
        }
    }

    @TargetApi(21)
    private static void setVolumeV21(android.media.AudioTrack audioTrack, float volume) {
        audioTrack.setVolume(volume);
    }

    private static void setVolumeV3(android.media.AudioTrack audioTrack, float volume) {
        audioTrack.setStereoVolume(volume, volume);
    }

    public void pause() {
        if (isInitialized()) {
            resetSyncParams();
            this.audioTrack.pause();
        }
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [com.google.android.exoplayer.audio.AudioTrack$1] */
    public void reset() {
        if (isInitialized()) {
            this.submittedBytes = 0L;
            this.temporaryBufferSize = 0;
            this.startMediaTimeState = 0;
            this.latencyUs = 0L;
            resetSyncParams();
            int playState = this.audioTrack.getPlayState();
            if (playState == 3) {
                this.audioTrack.pause();
            }
            final android.media.AudioTrack toRelease = this.audioTrack;
            this.audioTrack = null;
            this.audioTrackUtil.reconfigure(null, false);
            this.releasingConditionVariable.close();
            new Thread() { // from class: com.google.android.exoplayer.audio.AudioTrack.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        toRelease.release();
                    } finally {
                        AudioTrack.this.releasingConditionVariable.open();
                    }
                }
            }.start();
        }
    }

    public void release() {
        reset();
        releaseKeepSessionIdAudioTrack();
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.exoplayer.audio.AudioTrack$2] */
    private void releaseKeepSessionIdAudioTrack() {
        if (this.keepSessionIdAudioTrack != null) {
            final android.media.AudioTrack toRelease = this.keepSessionIdAudioTrack;
            this.keepSessionIdAudioTrack = null;
            new Thread() { // from class: com.google.android.exoplayer.audio.AudioTrack.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    toRelease.release();
                }
            }.start();
        }
    }

    private boolean hasCurrentPositionUs() {
        return isInitialized() && this.startMediaTimeState != 0;
    }

    private void maybeSampleSyncParams() {
        long playbackPositionUs = this.audioTrackUtil.getPlaybackHeadPositionUs();
        if (playbackPositionUs != 0) {
            long systemClockUs = System.nanoTime() / 1000;
            if (systemClockUs - this.lastPlayheadSampleTimeUs >= 30000) {
                this.playheadOffsets[this.nextPlayheadOffsetIndex] = playbackPositionUs - systemClockUs;
                this.nextPlayheadOffsetIndex = (this.nextPlayheadOffsetIndex + 1) % 10;
                if (this.playheadOffsetCount < 10) {
                    this.playheadOffsetCount++;
                }
                this.lastPlayheadSampleTimeUs = systemClockUs;
                this.smoothedPlayheadOffsetUs = 0L;
                for (int i = 0; i < this.playheadOffsetCount; i++) {
                    this.smoothedPlayheadOffsetUs += this.playheadOffsets[i] / ((long) this.playheadOffsetCount);
                }
            }
            if (!this.isAc3 && systemClockUs - this.lastTimestampSampleTimeUs >= 500000) {
                this.audioTimestampSet = this.audioTrackUtil.updateTimestamp();
                if (this.audioTimestampSet) {
                    long audioTimestampUs = this.audioTrackUtil.getTimestampNanoTime() / 1000;
                    long audioTimestampFramePosition = this.audioTrackUtil.getTimestampFramePosition();
                    if (audioTimestampUs < this.resumeSystemTimeUs) {
                        this.audioTimestampSet = false;
                    } else if (Math.abs(audioTimestampUs - systemClockUs) > 5000000) {
                        String message = "Spurious audio timestamp (system clock mismatch): " + audioTimestampFramePosition + ", " + audioTimestampUs + ", " + systemClockUs + ", " + playbackPositionUs;
                        if (failOnSpuriousAudioTimestamp) {
                            throw new InvalidAudioTrackTimestampException(message);
                        }
                        Log.w(TAG, message);
                        this.audioTimestampSet = false;
                    } else if (Math.abs(framesToDurationUs(audioTimestampFramePosition) - playbackPositionUs) > 5000000) {
                        String message2 = "Spurious audio timestamp (frame position mismatch): " + audioTimestampFramePosition + ", " + audioTimestampUs + ", " + systemClockUs + ", " + playbackPositionUs;
                        if (failOnSpuriousAudioTimestamp) {
                            throw new InvalidAudioTrackTimestampException(message2);
                        }
                        Log.w(TAG, message2);
                        this.audioTimestampSet = false;
                    }
                }
                if (this.getLatencyMethod != null) {
                    try {
                        this.latencyUs = (((long) ((Integer) this.getLatencyMethod.invoke(this.audioTrack, (Object[]) null)).intValue()) * 1000) - framesToDurationUs(bytesToFrames(this.bufferSize));
                        this.latencyUs = Math.max(this.latencyUs, 0L);
                        if (this.latencyUs > 5000000) {
                            Log.w(TAG, "Ignoring impossibly large audio latency: " + this.latencyUs);
                            this.latencyUs = 0L;
                        }
                    } catch (Exception e) {
                        this.getLatencyMethod = null;
                    }
                }
                this.lastTimestampSampleTimeUs = systemClockUs;
            }
        }
    }

    private void checkAudioTrackInitialized() throws InitializationException {
        int state = this.audioTrack.getState();
        if (state == 1) {
            return;
        }
        try {
            this.audioTrack.release();
        } catch (Exception e) {
        } finally {
            this.audioTrack = null;
        }
        throw new InitializationException(state, this.sampleRate, this.channelConfig, this.bufferSize);
    }

    private long bytesToFrames(long byteCount) {
        if (this.isAc3) {
            if (this.ac3Bitrate == 0) {
                return 0L;
            }
            return ((8 * byteCount) * ((long) this.sampleRate)) / ((long) (this.ac3Bitrate * 1000));
        }
        return byteCount / ((long) this.frameSize);
    }

    private long framesToDurationUs(long frameCount) {
        return (C.MICROS_PER_SECOND * frameCount) / ((long) this.sampleRate);
    }

    private long durationUsToFrames(long durationUs) {
        return (((long) this.sampleRate) * durationUs) / C.MICROS_PER_SECOND;
    }

    private void resetSyncParams() {
        this.smoothedPlayheadOffsetUs = 0L;
        this.playheadOffsetCount = 0;
        this.nextPlayheadOffsetIndex = 0;
        this.lastPlayheadSampleTimeUs = 0L;
        this.audioTimestampSet = false;
        this.lastTimestampSampleTimeUs = 0L;
    }

    private static class AudioTrackUtil {
        protected android.media.AudioTrack audioTrack;
        private boolean isPassthrough;
        private long lastRawPlaybackHeadPosition;
        private long passthroughWorkaroundPauseOffset;
        private long rawPlaybackHeadWrapCount;
        private int sampleRate;

        private AudioTrackUtil() {
        }

        public void reconfigure(android.media.AudioTrack audioTrack, boolean isPassthrough) {
            this.audioTrack = audioTrack;
            this.isPassthrough = isPassthrough;
            this.lastRawPlaybackHeadPosition = 0L;
            this.rawPlaybackHeadWrapCount = 0L;
            this.passthroughWorkaroundPauseOffset = 0L;
            if (audioTrack != null) {
                this.sampleRate = audioTrack.getSampleRate();
            }
        }

        public boolean overrideHasPendingData() {
            return Util.SDK_INT <= 22 && this.isPassthrough && this.audioTrack.getPlayState() == 2 && this.audioTrack.getPlaybackHeadPosition() == 0;
        }

        public long getPlaybackHeadPosition() {
            long rawPlaybackHeadPosition = 4294967295L & ((long) this.audioTrack.getPlaybackHeadPosition());
            if (Util.SDK_INT <= 22 && this.isPassthrough) {
                if (this.audioTrack.getPlayState() == 1) {
                    this.lastRawPlaybackHeadPosition = rawPlaybackHeadPosition;
                } else if (this.audioTrack.getPlayState() == 2 && rawPlaybackHeadPosition == 0) {
                    this.passthroughWorkaroundPauseOffset = this.lastRawPlaybackHeadPosition;
                }
                rawPlaybackHeadPosition += this.passthroughWorkaroundPauseOffset;
            }
            if (this.lastRawPlaybackHeadPosition > rawPlaybackHeadPosition) {
                this.rawPlaybackHeadWrapCount++;
            }
            this.lastRawPlaybackHeadPosition = rawPlaybackHeadPosition;
            return (this.rawPlaybackHeadWrapCount << 32) + rawPlaybackHeadPosition;
        }

        public long getPlaybackHeadPositionUs() {
            return (getPlaybackHeadPosition() * C.MICROS_PER_SECOND) / ((long) this.sampleRate);
        }

        public boolean updateTimestamp() {
            return false;
        }

        public long getTimestampNanoTime() {
            throw new UnsupportedOperationException();
        }

        public long getTimestampFramePosition() {
            throw new UnsupportedOperationException();
        }
    }

    @TargetApi(19)
    private static class AudioTrackUtilV19 extends AudioTrackUtil {
        private final AudioTimestamp audioTimestamp;
        private long lastRawTimestampFramePosition;
        private long lastTimestampFramePosition;
        private long rawTimestampFramePositionWrapCount;

        public AudioTrackUtilV19() {
            super();
            this.audioTimestamp = new AudioTimestamp();
        }

        @Override // com.google.android.exoplayer.audio.AudioTrack.AudioTrackUtil
        public void reconfigure(android.media.AudioTrack audioTrack, boolean isPassthrough) {
            super.reconfigure(audioTrack, isPassthrough);
            this.rawTimestampFramePositionWrapCount = 0L;
            this.lastRawTimestampFramePosition = 0L;
            this.lastTimestampFramePosition = 0L;
        }

        @Override // com.google.android.exoplayer.audio.AudioTrack.AudioTrackUtil
        public boolean updateTimestamp() {
            boolean updated = this.audioTrack.getTimestamp(this.audioTimestamp);
            if (updated) {
                long rawFramePosition = this.audioTimestamp.framePosition;
                if (this.lastRawTimestampFramePosition > rawFramePosition) {
                    this.rawTimestampFramePositionWrapCount++;
                }
                this.lastRawTimestampFramePosition = rawFramePosition;
                this.lastTimestampFramePosition = (this.rawTimestampFramePositionWrapCount << 32) + rawFramePosition;
            }
            return updated;
        }

        @Override // com.google.android.exoplayer.audio.AudioTrack.AudioTrackUtil
        public long getTimestampNanoTime() {
            return this.audioTimestamp.nanoTime;
        }

        @Override // com.google.android.exoplayer.audio.AudioTrack.AudioTrackUtil
        public long getTimestampFramePosition() {
            return this.lastTimestampFramePosition;
        }
    }
}
