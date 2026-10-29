package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.TraceUtil;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public abstract class MediaCodecTrackRenderer extends TrackRenderer {
    private static final long MAX_CODEC_HOTSWAP_TIME_MS = 1000;
    private static final int RECONFIGURATION_STATE_NONE = 0;
    private static final int RECONFIGURATION_STATE_QUEUE_PENDING = 2;
    private static final int RECONFIGURATION_STATE_WRITE_PENDING = 1;
    private static final int REINITIALIZATION_STATE_NONE = 0;
    private static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 2;
    protected static final int SOURCE_STATE_NOT_READY = 0;
    protected static final int SOURCE_STATE_READY = 1;
    protected static final int SOURCE_STATE_READY_READ_MAY_FAIL = 2;
    private MediaCodec codec;
    public final CodecCounters codecCounters;
    private boolean codecHasQueuedBuffers;
    private long codecHotswapTimeMs;
    private boolean codecIsAdaptive;
    private boolean codecNeedsEndOfStreamWorkaround;
    private int codecReconfigurationState;
    private boolean codecReconfigured;
    private int codecReinitializationState;
    private final List<Long> decodeOnlyPresentationTimestamps;
    private DrmInitData drmInitData;
    private final DrmSessionManager drmSessionManager;
    protected final Handler eventHandler;
    private final EventListener eventListener;
    private MediaFormat format;
    private final MediaFormatHolder formatHolder;
    private ByteBuffer[] inputBuffers;
    private int inputIndex;
    private boolean inputStreamEnded;
    private boolean openedDrmSession;
    private final MediaCodec.BufferInfo outputBufferInfo;
    private ByteBuffer[] outputBuffers;
    private int outputIndex;
    private boolean outputStreamEnded;
    private final boolean playClearSamplesWithoutKeys;
    private final SampleHolder sampleHolder;
    private final SampleSource.SampleSourceReader source;
    private int sourceState;
    private int trackIndex;
    private boolean waitingForFirstSyncFrame;
    private boolean waitingForKeys;

    public interface EventListener {
        void onCryptoError(MediaCodec.CryptoException cryptoException);

        void onDecoderInitializationError(DecoderInitializationException decoderInitializationException);

        void onDecoderInitialized(String str, long j, long j2);
    }

    protected abstract boolean processOutputBuffer(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo, int i, boolean z) throws ExoPlaybackException;

    public static class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;
        public final String decoderName;
        public final String diagnosticInfo;

        public DecoderInitializationException(MediaFormat mediaFormat, Throwable cause, int errorCode) {
            super("Decoder init failed: [" + errorCode + "], " + mediaFormat, cause);
            this.decoderName = null;
            this.diagnosticInfo = buildCustomDiagnosticInfo(errorCode);
        }

        public DecoderInitializationException(MediaFormat mediaFormat, Throwable cause, String decoderName) {
            super("Decoder init failed: " + decoderName + ", " + mediaFormat, cause);
            this.decoderName = decoderName;
            this.diagnosticInfo = Util.SDK_INT >= 21 ? getDiagnosticInfoV21(cause) : null;
        }

        @TargetApi(21)
        private static String getDiagnosticInfoV21(Throwable cause) {
            if (cause instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) cause).getDiagnosticInfo();
            }
            return null;
        }

        private static String buildCustomDiagnosticInfo(int errorCode) {
            String sign = errorCode < 0 ? "neg_" : "";
            return "com.google.android.exoplayer.MediaCodecTrackRenderer_" + sign + Math.abs(errorCode);
        }
    }

    public MediaCodecTrackRenderer(SampleSource source, DrmSessionManager drmSessionManager, boolean playClearSamplesWithoutKeys, Handler eventHandler, EventListener eventListener) {
        Assertions.checkState(Util.SDK_INT >= 16);
        this.source = source.register();
        this.drmSessionManager = drmSessionManager;
        this.playClearSamplesWithoutKeys = playClearSamplesWithoutKeys;
        this.eventHandler = eventHandler;
        this.eventListener = eventListener;
        this.codecCounters = new CodecCounters();
        this.sampleHolder = new SampleHolder(0);
        this.formatHolder = new MediaFormatHolder();
        this.decodeOnlyPresentationTimestamps = new ArrayList();
        this.outputBufferInfo = new MediaCodec.BufferInfo();
        this.codecReconfigurationState = 0;
        this.codecReinitializationState = 0;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected int doPrepare(long positionUs) {
        boolean sourcePrepared = this.source.prepare(positionUs);
        if (!sourcePrepared) {
            return 0;
        }
        int trackCount = this.source.getTrackCount();
        for (int i = 0; i < trackCount; i++) {
            if (handlesMimeType(this.source.getTrackInfo(i).mimeType)) {
                this.trackIndex = i;
                return 1;
            }
        }
        return -1;
    }

    protected boolean handlesMimeType(String mimeType) {
        return true;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onEnabled(long positionUs, boolean joining) {
        this.source.enable(this.trackIndex, positionUs);
        seekToInternal();
    }

    protected DecoderInfo getDecoderInfo(String mimeType, boolean requiresSecureDecoder) throws MediaCodecUtil.DecoderQueryException {
        return MediaCodecUtil.getDecoderInfo(mimeType, requiresSecureDecoder);
    }

    protected void configureCodec(MediaCodec codec, String codecName, android.media.MediaFormat format, MediaCrypto crypto) {
        codec.configure(format, (Surface) null, crypto, 0);
    }

    protected final void maybeInitCodec() throws ExoPlaybackException {
        if (shouldInitCodec()) {
            String mimeType = this.format.mimeType;
            MediaCrypto mediaCrypto = null;
            boolean requiresSecureDecoder = false;
            if (this.drmInitData != null) {
                if (this.drmSessionManager == null) {
                    throw new ExoPlaybackException("Media requires a DrmSessionManager");
                }
                if (!this.openedDrmSession) {
                    this.drmSessionManager.open(this.drmInitData);
                    this.openedDrmSession = true;
                }
                int drmSessionState = this.drmSessionManager.getState();
                if (drmSessionState == 0) {
                    throw new ExoPlaybackException(this.drmSessionManager.getError());
                }
                if (drmSessionState == 3 || drmSessionState == 4) {
                    mediaCrypto = this.drmSessionManager.getMediaCrypto();
                    requiresSecureDecoder = this.drmSessionManager.requiresSecureDecoderComponent(mimeType);
                } else {
                    return;
                }
            }
            DecoderInfo decoderInfo = null;
            try {
                decoderInfo = getDecoderInfo(mimeType, requiresSecureDecoder);
            } catch (MediaCodecUtil.DecoderQueryException e) {
                notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, e, -49998));
            }
            if (decoderInfo == null) {
                notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, (Throwable) null, -49999));
            }
            String decoderName = decoderInfo.name;
            this.codecIsAdaptive = decoderInfo.adaptive;
            this.codecNeedsEndOfStreamWorkaround = codecNeedsEndOfStreamWorkaround(decoderName);
            try {
                long codecInitializingTimestamp = SystemClock.elapsedRealtime();
                TraceUtil.beginSection("createByCodecName(" + decoderName + ")");
                this.codec = MediaCodec.createByCodecName(decoderName);
                TraceUtil.endSection();
                TraceUtil.beginSection("configureCodec");
                configureCodec(this.codec, decoderName, this.format.getFrameworkMediaFormatV16(), mediaCrypto);
                TraceUtil.endSection();
                TraceUtil.beginSection("codec.start()");
                this.codec.start();
                TraceUtil.endSection();
                long codecInitializedTimestamp = SystemClock.elapsedRealtime();
                notifyDecoderInitialized(decoderName, codecInitializedTimestamp, codecInitializedTimestamp - codecInitializingTimestamp);
                this.inputBuffers = this.codec.getInputBuffers();
                this.outputBuffers = this.codec.getOutputBuffers();
            } catch (Exception e2) {
                notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, e2, decoderName));
            }
            this.codecHotswapTimeMs = getState() == 3 ? SystemClock.elapsedRealtime() : -1L;
            this.inputIndex = -1;
            this.outputIndex = -1;
            this.waitingForFirstSyncFrame = true;
            this.codecCounters.codecInitCount++;
        }
    }

    private void notifyAndThrowDecoderInitError(DecoderInitializationException e) throws ExoPlaybackException {
        notifyDecoderInitializationError(e);
        throw new ExoPlaybackException(e);
    }

    protected boolean shouldInitCodec() {
        return this.codec == null && this.format != null;
    }

    protected final boolean codecInitialized() {
        return this.codec != null;
    }

    protected final boolean haveFormat() {
        return this.format != null;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onDisabled() {
        this.format = null;
        this.drmInitData = null;
        try {
            releaseCodec();
            try {
                if (this.openedDrmSession) {
                    this.drmSessionManager.close();
                    this.openedDrmSession = false;
                }
            } finally {
                this.source.disable(this.trackIndex);
            }
        } catch (Throwable th) {
            try {
                if (this.openedDrmSession) {
                    this.drmSessionManager.close();
                    this.openedDrmSession = false;
                }
                throw th;
            } finally {
                this.source.disable(this.trackIndex);
            }
        }
    }

    protected void releaseCodec() {
        if (this.codec != null) {
            this.codecHotswapTimeMs = -1L;
            this.inputIndex = -1;
            this.outputIndex = -1;
            this.waitingForKeys = false;
            this.decodeOnlyPresentationTimestamps.clear();
            this.inputBuffers = null;
            this.outputBuffers = null;
            this.codecReconfigured = false;
            this.codecHasQueuedBuffers = false;
            this.codecIsAdaptive = false;
            this.codecNeedsEndOfStreamWorkaround = false;
            this.codecReconfigurationState = 0;
            this.codecReinitializationState = 0;
            this.codecCounters.codecReleaseCount++;
            try {
                this.codec.stop();
                try {
                    this.codec.release();
                } finally {
                    this.codec = null;
                }
            } catch (Throwable th) {
                try {
                    this.codec.release();
                    throw th;
                } finally {
                    this.codec = null;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onReleased() {
        this.source.release();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getDurationUs() {
        return this.source.getTrackInfo(this.trackIndex).durationUs;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getBufferedPositionUs() {
        return this.source.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void seekTo(long positionUs) throws ExoPlaybackException {
        this.source.seekToUs(positionUs);
        seekToInternal();
    }

    private void seekToInternal() {
        this.sourceState = 0;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onStarted() {
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onStopped() {
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void doSomeWork(long positionUs, long elapsedRealtimeUs) throws ExoPlaybackException {
        int i;
        if (this.source.continueBuffering(this.trackIndex, positionUs)) {
            i = this.sourceState == 0 ? 1 : this.sourceState;
        } else {
            i = 0;
        }
        this.sourceState = i;
        checkForDiscontinuity(positionUs);
        if (this.format == null) {
            readFormat(positionUs);
        }
        if (this.codec == null && shouldInitCodec()) {
            maybeInitCodec();
        }
        if (this.codec != null) {
            TraceUtil.beginSection("drainAndFeed");
            while (drainOutputBuffer(positionUs, elapsedRealtimeUs)) {
            }
            if (feedInputBuffer(positionUs, true)) {
                while (feedInputBuffer(positionUs, false)) {
                }
            }
            TraceUtil.endSection();
        }
        this.codecCounters.ensureUpdated();
    }

    private void readFormat(long positionUs) throws ExoPlaybackException {
        int result = this.source.readData(this.trackIndex, positionUs, this.formatHolder, this.sampleHolder, false);
        if (result == -4) {
            onInputFormatChanged(this.formatHolder);
        }
    }

    private void checkForDiscontinuity(long positionUs) throws ExoPlaybackException {
        if (this.codec != null) {
            int result = this.source.readData(this.trackIndex, positionUs, this.formatHolder, this.sampleHolder, true);
            if (result == -5) {
                flushCodec();
            }
        }
    }

    private void flushCodec() throws ExoPlaybackException {
        this.codecHotswapTimeMs = -1L;
        this.inputIndex = -1;
        this.outputIndex = -1;
        this.waitingForFirstSyncFrame = true;
        this.waitingForKeys = false;
        this.decodeOnlyPresentationTimestamps.clear();
        if (Util.SDK_INT >= 18 && this.codecReinitializationState == 0) {
            this.codec.flush();
            this.codecHasQueuedBuffers = false;
        } else {
            releaseCodec();
            maybeInitCodec();
        }
        if (this.codecReconfigured && this.format != null) {
            this.codecReconfigurationState = 1;
        }
    }

    private boolean feedInputBuffer(long positionUs, boolean firstFeed) throws ExoPlaybackException {
        int result;
        if (this.inputStreamEnded || this.codecReinitializationState == 2) {
            return false;
        }
        if (this.inputIndex < 0) {
            this.inputIndex = this.codec.dequeueInputBuffer(0L);
            if (this.inputIndex < 0) {
                return false;
            }
            this.sampleHolder.data = this.inputBuffers[this.inputIndex];
            this.sampleHolder.data.clear();
        }
        if (this.codecReinitializationState == 1) {
            if (!this.codecNeedsEndOfStreamWorkaround) {
                this.codec.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                this.inputIndex = -1;
            }
            this.codecReinitializationState = 2;
            return false;
        }
        if (this.waitingForKeys) {
            result = -3;
        } else {
            if (this.codecReconfigurationState == 1) {
                for (int i = 0; i < this.format.initializationData.size(); i++) {
                    byte[] data = this.format.initializationData.get(i);
                    this.sampleHolder.data.put(data);
                }
                this.codecReconfigurationState = 2;
            }
            result = this.source.readData(this.trackIndex, positionUs, this.formatHolder, this.sampleHolder, false);
            if (firstFeed && this.sourceState == 1 && result == -2) {
                this.sourceState = 2;
            }
        }
        if (result == -2) {
            return false;
        }
        if (result == -5) {
            flushCodec();
            return true;
        }
        if (result == -4) {
            if (this.codecReconfigurationState == 2) {
                this.sampleHolder.data.clear();
                this.codecReconfigurationState = 1;
            }
            onInputFormatChanged(this.formatHolder);
            return true;
        }
        if (result == -1) {
            if (this.codecReconfigurationState == 2) {
                this.sampleHolder.data.clear();
                this.codecReconfigurationState = 1;
            }
            this.inputStreamEnded = true;
            try {
                if (!this.codecNeedsEndOfStreamWorkaround) {
                    this.codec.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                    this.inputIndex = -1;
                }
                return false;
            } catch (MediaCodec.CryptoException e) {
                notifyCryptoError(e);
                throw new ExoPlaybackException(e);
            }
        }
        if (this.waitingForFirstSyncFrame) {
            if (!this.sampleHolder.isSyncFrame()) {
                this.sampleHolder.data.clear();
                if (this.codecReconfigurationState == 2) {
                    this.codecReconfigurationState = 1;
                }
                return true;
            }
            this.waitingForFirstSyncFrame = false;
        }
        boolean sampleEncrypted = this.sampleHolder.isEncrypted();
        this.waitingForKeys = shouldWaitForKeys(sampleEncrypted);
        if (this.waitingForKeys) {
            return false;
        }
        try {
            int bufferSize = this.sampleHolder.data.position();
            int adaptiveReconfigurationBytes = bufferSize - this.sampleHolder.size;
            long presentationTimeUs = this.sampleHolder.timeUs;
            if (this.sampleHolder.isDecodeOnly()) {
                this.decodeOnlyPresentationTimestamps.add(Long.valueOf(presentationTimeUs));
            }
            if (sampleEncrypted) {
                MediaCodec.CryptoInfo cryptoInfo = getFrameworkCryptoInfo(this.sampleHolder, adaptiveReconfigurationBytes);
                this.codec.queueSecureInputBuffer(this.inputIndex, 0, cryptoInfo, presentationTimeUs, 0);
            } else {
                this.codec.queueInputBuffer(this.inputIndex, 0, bufferSize, presentationTimeUs, 0);
            }
            this.inputIndex = -1;
            this.codecHasQueuedBuffers = true;
            this.codecReconfigurationState = 0;
            return true;
        } catch (MediaCodec.CryptoException e2) {
            notifyCryptoError(e2);
            throw new ExoPlaybackException(e2);
        }
    }

    private static MediaCodec.CryptoInfo getFrameworkCryptoInfo(SampleHolder sampleHolder, int adaptiveReconfigurationBytes) {
        MediaCodec.CryptoInfo cryptoInfo = sampleHolder.cryptoInfo.getFrameworkCryptoInfoV16();
        if (adaptiveReconfigurationBytes != 0) {
            if (cryptoInfo.numBytesOfClearData == null) {
                cryptoInfo.numBytesOfClearData = new int[1];
            }
            int[] iArr = cryptoInfo.numBytesOfClearData;
            iArr[0] = iArr[0] + adaptiveReconfigurationBytes;
        }
        return cryptoInfo;
    }

    private boolean shouldWaitForKeys(boolean sampleEncrypted) throws ExoPlaybackException {
        if (!this.openedDrmSession) {
            return false;
        }
        int drmManagerState = this.drmSessionManager.getState();
        if (drmManagerState == 0) {
            throw new ExoPlaybackException(this.drmSessionManager.getError());
        }
        if (drmManagerState != 4) {
            return sampleEncrypted || !this.playClearSamplesWithoutKeys;
        }
        return false;
    }

    protected void onInputFormatChanged(MediaFormatHolder formatHolder) throws ExoPlaybackException {
        MediaFormat oldFormat = this.format;
        this.format = formatHolder.format;
        this.drmInitData = formatHolder.drmInitData;
        if (this.codec != null && canReconfigureCodec(this.codec, this.codecIsAdaptive, oldFormat, this.format)) {
            this.codecReconfigured = true;
            this.codecReconfigurationState = 1;
        } else if (this.codecHasQueuedBuffers) {
            this.codecReinitializationState = 1;
        } else {
            releaseCodec();
            maybeInitCodec();
        }
    }

    protected void onOutputFormatChanged(MediaFormat inputFormat, android.media.MediaFormat outputFormat) {
    }

    protected boolean canReconfigureCodec(MediaCodec codec, boolean codecIsAdaptive, MediaFormat oldFormat, MediaFormat newFormat) {
        return false;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void maybeThrowError() throws ExoPlaybackException {
        try {
            this.source.maybeThrowError();
        } catch (IOException e) {
            throw new ExoPlaybackException(e);
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        return (this.format == null || this.waitingForKeys || (this.sourceState == 0 && this.outputIndex < 0 && !isWithinHotswapPeriod())) ? false : true;
    }

    protected final int getSourceState() {
        return this.sourceState;
    }

    private boolean isWithinHotswapPeriod() {
        return SystemClock.elapsedRealtime() < this.codecHotswapTimeMs + 1000;
    }

    protected long getDequeueOutputBufferTimeoutUs() {
        return 0L;
    }

    private boolean drainOutputBuffer(long positionUs, long elapsedRealtimeUs) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            return false;
        }
        if (this.outputIndex < 0) {
            this.outputIndex = this.codec.dequeueOutputBuffer(this.outputBufferInfo, getDequeueOutputBufferTimeoutUs());
        }
        if (this.outputIndex == -2) {
            onOutputFormatChanged(this.format, this.codec.getOutputFormat());
            this.codecCounters.outputFormatChangedCount++;
            return true;
        }
        if (this.outputIndex == -3) {
            this.outputBuffers = this.codec.getOutputBuffers();
            this.codecCounters.outputBuffersChangedCount++;
            return true;
        }
        if (this.outputIndex < 0) {
            if (this.codecNeedsEndOfStreamWorkaround && (this.inputStreamEnded || this.codecReinitializationState == 2)) {
                processEndOfStream();
                return true;
            }
            return false;
        }
        if ((this.outputBufferInfo.flags & 4) != 0) {
            processEndOfStream();
            return false;
        }
        int decodeOnlyIndex = getDecodeOnlyIndex(this.outputBufferInfo.presentationTimeUs);
        if (processOutputBuffer(positionUs, elapsedRealtimeUs, this.codec, this.outputBuffers[this.outputIndex], this.outputBufferInfo, this.outputIndex, decodeOnlyIndex != -1)) {
            if (decodeOnlyIndex != -1) {
                this.decodeOnlyPresentationTimestamps.remove(decodeOnlyIndex);
            }
            this.outputIndex = -1;
            return true;
        }
        return false;
    }

    private void processEndOfStream() throws ExoPlaybackException {
        if (this.codecReinitializationState == 2) {
            releaseCodec();
            maybeInitCodec();
        } else {
            this.outputStreamEnded = true;
        }
    }

    private void notifyDecoderInitializationError(final DecoderInitializationException e) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecTrackRenderer.1
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecTrackRenderer.this.eventListener.onDecoderInitializationError(e);
                }
            });
        }
    }

    private void notifyCryptoError(final MediaCodec.CryptoException e) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecTrackRenderer.2
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecTrackRenderer.this.eventListener.onCryptoError(e);
                }
            });
        }
    }

    private void notifyDecoderInitialized(final String decoderName, final long initializedTimestamp, final long initializationDuration) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecTrackRenderer.3
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecTrackRenderer.this.eventListener.onDecoderInitialized(decoderName, initializedTimestamp, initializationDuration);
                }
            });
        }
    }

    private int getDecodeOnlyIndex(long presentationTimeUs) {
        int size = this.decodeOnlyPresentationTimestamps.size();
        for (int i = 0; i < size; i++) {
            if (this.decodeOnlyPresentationTimestamps.get(i).longValue() == presentationTimeUs) {
                return i;
            }
        }
        return -1;
    }

    private static boolean codecNeedsEndOfStreamWorkaround(String name) {
        return Util.SDK_INT <= 17 && "ht7s3".equals(Util.DEVICE) && "OMX.rk.video_decoder.avc".equals(name);
    }
}
