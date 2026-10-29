package com.google.android.exoplayer.hls;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.LoadControl;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.TrackInfo;
import com.google.android.exoplayer.chunk.BaseChunkSampleSourceEventListener;
import com.google.android.exoplayer.chunk.Chunk;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public final class HlsSampleSource implements SampleSource, SampleSource.SampleSourceReader, Loader.Callback {
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    private static final int NO_RESET_PENDING = -1;
    private final int bufferSizeContribution;
    private final HlsChunkSource chunkSource;
    private long currentLoadStartTimeMs;
    private Chunk currentLoadable;
    private IOException currentLoadableException;
    private int currentLoadableExceptionCount;
    private long currentLoadableExceptionTimestamp;
    private TsChunk currentTsLoadable;
    private Format downstreamFormat;
    private MediaFormat[] downstreamMediaFormats;
    private long downstreamPositionUs;
    private int enabledTrackCount;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final int eventSourceId;
    private final LinkedList<HlsExtractorWrapper> extractors;
    private long lastSeekPositionUs;
    private final LoadControl loadControl;
    private boolean loadControlRegistered;
    private Loader loader;
    private boolean loadingFinished;
    private final int minLoadableRetryCount;
    private boolean[] pendingDiscontinuities;
    private long pendingResetPositionUs;
    private boolean prepared;
    private TsChunk previousTsLoadable;
    private int remainingReleaseCount;
    private int trackCount;
    private boolean[] trackEnabledStates;
    private TrackInfo[] trackInfos;

    public interface EventListener extends BaseChunkSampleSourceEventListener {
    }

    public HlsSampleSource(HlsChunkSource chunkSource, LoadControl loadControl, int bufferSizeContribution) {
        this(chunkSource, loadControl, bufferSizeContribution, null, null, 0);
    }

    public HlsSampleSource(HlsChunkSource chunkSource, LoadControl loadControl, int bufferSizeContribution, Handler eventHandler, EventListener eventListener, int eventSourceId) {
        this(chunkSource, loadControl, bufferSizeContribution, eventHandler, eventListener, eventSourceId, 3);
    }

    public HlsSampleSource(HlsChunkSource chunkSource, LoadControl loadControl, int bufferSizeContribution, Handler eventHandler, EventListener eventListener, int eventSourceId, int minLoadableRetryCount) {
        this.chunkSource = chunkSource;
        this.loadControl = loadControl;
        this.bufferSizeContribution = bufferSizeContribution;
        this.minLoadableRetryCount = minLoadableRetryCount;
        this.eventHandler = eventHandler;
        this.eventListener = eventListener;
        this.eventSourceId = eventSourceId;
        this.pendingResetPositionUs = -1L;
        this.extractors = new LinkedList<>();
    }

    @Override // com.google.android.exoplayer.SampleSource
    public SampleSource.SampleSourceReader register() {
        this.remainingReleaseCount++;
        return this;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean prepare(long positionUs) {
        if (this.prepared) {
            return true;
        }
        if (!this.extractors.isEmpty()) {
            HlsExtractorWrapper extractor = getCurrentExtractor();
            if (extractor.isPrepared()) {
                this.trackCount = extractor.getTrackCount();
                this.trackEnabledStates = new boolean[this.trackCount];
                this.pendingDiscontinuities = new boolean[this.trackCount];
                this.downstreamMediaFormats = new MediaFormat[this.trackCount];
                this.trackInfos = new TrackInfo[this.trackCount];
                for (int i = 0; i < this.trackCount; i++) {
                    MediaFormat format = extractor.getMediaFormat(i);
                    this.trackInfos[i] = new TrackInfo(format.mimeType, this.chunkSource.getDurationUs());
                }
                this.prepared = true;
                return true;
            }
        }
        if (this.loader == null) {
            this.loader = new Loader("Loader:HLS");
        }
        if (!this.loadControlRegistered) {
            this.loadControl.register(this, this.bufferSizeContribution);
            this.loadControlRegistered = true;
        }
        if (!this.loader.isLoading()) {
            this.pendingResetPositionUs = positionUs;
            this.downstreamPositionUs = positionUs;
        }
        maybeStartLoading();
        return false;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int getTrackCount() {
        Assertions.checkState(this.prepared);
        return this.trackCount;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public TrackInfo getTrackInfo(int track) {
        Assertions.checkState(this.prepared);
        return this.trackInfos[track];
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void enable(int track, long positionUs) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(!this.trackEnabledStates[track]);
        this.enabledTrackCount++;
        this.trackEnabledStates[track] = true;
        this.downstreamMediaFormats[track] = null;
        this.downstreamFormat = null;
        if (!this.loadControlRegistered) {
            this.loadControl.register(this, this.bufferSizeContribution);
            this.loadControlRegistered = true;
        }
        if (this.enabledTrackCount == 1) {
            seekToUs(positionUs);
        }
        this.pendingDiscontinuities[track] = false;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void disable(int track) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackEnabledStates[track]);
        this.enabledTrackCount--;
        this.trackEnabledStates[track] = false;
        if (this.enabledTrackCount == 0) {
            this.downstreamPositionUs = Long.MIN_VALUE;
            if (this.loadControlRegistered) {
                this.loadControl.unregister(this);
                this.loadControlRegistered = false;
            }
            if (this.loader.isLoading()) {
                this.loader.cancelLoading();
            } else {
                clearState();
                this.loadControl.trimAllocator();
            }
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean continueBuffering(int track, long playbackPositionUs) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackEnabledStates[track]);
        this.downstreamPositionUs = playbackPositionUs;
        if (!this.extractors.isEmpty()) {
            discardSamplesForDisabledTracks(getCurrentExtractor(), this.downstreamPositionUs);
        }
        if (this.loadingFinished) {
            return true;
        }
        maybeStartLoading();
        if (isPendingReset() || this.extractors.isEmpty()) {
            return false;
        }
        for (int extractorIndex = 0; extractorIndex < this.extractors.size(); extractorIndex++) {
            HlsExtractorWrapper extractor = this.extractors.get(extractorIndex);
            if (!extractor.isPrepared()) {
                break;
            }
            if (extractor.hasSamples(track)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int readData(int track, long playbackPositionUs, MediaFormatHolder formatHolder, SampleHolder sampleHolder, boolean onlyReadDiscontinuity) {
        Assertions.checkState(this.prepared);
        this.downstreamPositionUs = playbackPositionUs;
        if (this.pendingDiscontinuities[track]) {
            this.pendingDiscontinuities[track] = false;
            return -5;
        }
        if (onlyReadDiscontinuity || isPendingReset()) {
            return -2;
        }
        HlsExtractorWrapper extractor = getCurrentExtractor();
        if (!extractor.isPrepared()) {
            return -2;
        }
        if (this.downstreamFormat == null || !this.downstreamFormat.equals(extractor.format)) {
            notifyDownstreamFormatChanged(extractor.format, extractor.trigger, extractor.startTimeUs);
            this.downstreamFormat = extractor.format;
        }
        if (this.extractors.size() > 1) {
            extractor.configureSpliceTo(this.extractors.get(1));
        }
        int extractorIndex = 0;
        while (this.extractors.size() > extractorIndex + 1 && !extractor.hasSamples(track)) {
            extractorIndex++;
            extractor = this.extractors.get(extractorIndex);
            if (!extractor.isPrepared()) {
                return -2;
            }
        }
        MediaFormat mediaFormat = extractor.getMediaFormat(track);
        if (mediaFormat != null && !mediaFormat.equals(this.downstreamMediaFormats[track], true)) {
            this.chunkSource.getMaxVideoDimensions(mediaFormat);
            formatHolder.format = mediaFormat;
            this.downstreamMediaFormats[track] = mediaFormat;
            return -4;
        }
        if (extractor.getSample(track, sampleHolder)) {
            boolean decodeOnly = sampleHolder.timeUs < this.lastSeekPositionUs;
            sampleHolder.flags = (decodeOnly ? C.SAMPLE_FLAG_DECODE_ONLY : 0) | sampleHolder.flags;
            return -3;
        }
        if (this.loadingFinished) {
            return -1;
        }
        return -2;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void maybeThrowError() throws IOException {
        if (this.currentLoadableException != null && this.currentLoadableExceptionCount > this.minLoadableRetryCount) {
            throw this.currentLoadableException;
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void seekToUs(long positionUs) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.enabledTrackCount > 0);
        long currentPositionUs = isPendingReset() ? this.pendingResetPositionUs : this.downstreamPositionUs;
        this.downstreamPositionUs = positionUs;
        this.lastSeekPositionUs = positionUs;
        if (currentPositionUs != positionUs) {
            this.downstreamPositionUs = positionUs;
            for (int i = 0; i < this.pendingDiscontinuities.length; i++) {
                this.pendingDiscontinuities[i] = true;
            }
            restartFrom(positionUs);
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public long getBufferedPositionUs() {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.enabledTrackCount > 0);
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return -3L;
        }
        long largestParsedTimestampUs = this.extractors.getLast().getLargestParsedTimestampUs();
        return largestParsedTimestampUs == Long.MIN_VALUE ? this.downstreamPositionUs : largestParsedTimestampUs;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void release() {
        Assertions.checkState(this.remainingReleaseCount > 0);
        int i = this.remainingReleaseCount - 1;
        this.remainingReleaseCount = i;
        if (i == 0 && this.loader != null) {
            this.loader.release();
            this.loader = null;
        }
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCompleted(Loader.Loadable loadable) {
        Assertions.checkState(loadable == this.currentLoadable);
        long now = SystemClock.elapsedRealtime();
        long loadDurationMs = now - this.currentLoadStartTimeMs;
        this.chunkSource.onChunkLoadCompleted(this.currentLoadable);
        if (isTsChunk(this.currentLoadable)) {
            Assertions.checkState(this.currentLoadable == this.currentTsLoadable);
            this.loadingFinished = this.currentTsLoadable.isLastChunk;
            this.previousTsLoadable = this.currentTsLoadable;
            notifyLoadCompleted(this.currentLoadable.bytesLoaded(), this.currentTsLoadable.type, this.currentTsLoadable.trigger, this.currentTsLoadable.format, this.currentTsLoadable.startTimeUs, this.currentTsLoadable.endTimeUs, now, loadDurationMs);
        } else {
            notifyLoadCompleted(this.currentLoadable.bytesLoaded(), this.currentLoadable.type, this.currentLoadable.trigger, this.currentLoadable.format, -1L, -1L, now, loadDurationMs);
        }
        clearCurrentLoadable();
        if (this.enabledTrackCount > 0 || !this.prepared) {
            maybeStartLoading();
        }
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCanceled(Loader.Loadable loadable) {
        notifyLoadCanceled(this.currentLoadable.bytesLoaded());
        if (this.enabledTrackCount > 0) {
            restartFrom(this.pendingResetPositionUs);
        } else {
            clearState();
            this.loadControl.trimAllocator();
        }
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadError(Loader.Loadable loadable, IOException e) {
        if (this.chunkSource.onChunkLoadError(this.currentLoadable, e)) {
            if (this.previousTsLoadable == null && !isPendingReset()) {
                this.pendingResetPositionUs = this.lastSeekPositionUs;
            }
            clearCurrentLoadable();
        } else {
            this.currentLoadableException = e;
            this.currentLoadableExceptionCount++;
            this.currentLoadableExceptionTimestamp = SystemClock.elapsedRealtime();
        }
        notifyLoadError(e);
        maybeStartLoading();
    }

    private HlsExtractorWrapper getCurrentExtractor() {
        HlsExtractorWrapper extractor;
        HlsExtractorWrapper extractor2 = this.extractors.getFirst();
        while (true) {
            extractor = extractor2;
            if (this.extractors.size() <= 1 || haveSamplesForEnabledTracks(extractor)) {
                break;
            }
            this.extractors.removeFirst().clear();
            extractor2 = this.extractors.getFirst();
        }
        return extractor;
    }

    private void discardSamplesForDisabledTracks(HlsExtractorWrapper extractor, long timeUs) {
        if (extractor.isPrepared()) {
            for (int i = 0; i < this.trackEnabledStates.length; i++) {
                if (!this.trackEnabledStates[i]) {
                    extractor.discardUntil(i, timeUs);
                }
            }
        }
    }

    private boolean haveSamplesForEnabledTracks(HlsExtractorWrapper extractor) {
        if (!extractor.isPrepared()) {
            return false;
        }
        for (int i = 0; i < this.trackEnabledStates.length; i++) {
            if (this.trackEnabledStates[i] && extractor.hasSamples(i)) {
                return true;
            }
        }
        return false;
    }

    private void restartFrom(long positionUs) {
        this.pendingResetPositionUs = positionUs;
        this.loadingFinished = false;
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
        } else {
            clearState();
            maybeStartLoading();
        }
    }

    private void clearState() {
        for (int i = 0; i < this.extractors.size(); i++) {
            this.extractors.get(i).clear();
        }
        this.extractors.clear();
        clearCurrentLoadable();
        this.previousTsLoadable = null;
    }

    private void clearCurrentLoadable() {
        this.currentTsLoadable = null;
        this.currentLoadable = null;
        this.currentLoadableException = null;
        this.currentLoadableExceptionCount = 0;
    }

    private void maybeStartLoading() {
        Chunk nextLoadable;
        long now = SystemClock.elapsedRealtime();
        long nextLoadPositionUs = getNextLoadPositionUs();
        boolean isBackedOff = this.currentLoadableException != null;
        boolean loadingOrBackedOff = this.loader.isLoading() || isBackedOff;
        boolean nextLoader = this.loadControl.update(this, this.downstreamPositionUs, nextLoadPositionUs, loadingOrBackedOff);
        if (isBackedOff) {
            long elapsedMillis = now - this.currentLoadableExceptionTimestamp;
            if (elapsedMillis >= getRetryDelayMillis(this.currentLoadableExceptionCount)) {
                this.currentLoadableException = null;
                this.loader.startLoading(this.currentLoadable, this);
                return;
            }
            return;
        }
        if (!this.loader.isLoading() && nextLoader && (nextLoadable = this.chunkSource.getChunkOperation(this.previousTsLoadable, this.pendingResetPositionUs, this.downstreamPositionUs)) != null) {
            this.currentLoadStartTimeMs = now;
            this.currentLoadable = nextLoadable;
            if (isTsChunk(this.currentLoadable)) {
                TsChunk tsChunk = (TsChunk) this.currentLoadable;
                if (isPendingReset()) {
                    this.pendingResetPositionUs = -1L;
                }
                HlsExtractorWrapper extractorWrapper = tsChunk.extractorWrapper;
                if (this.extractors.isEmpty() || this.extractors.getLast() != extractorWrapper) {
                    extractorWrapper.init(this.loadControl.getAllocator());
                    this.extractors.addLast(extractorWrapper);
                }
                notifyLoadStarted(tsChunk.dataSpec.length, tsChunk.type, tsChunk.trigger, tsChunk.format, tsChunk.startTimeUs, tsChunk.endTimeUs);
                this.currentTsLoadable = tsChunk;
            } else {
                notifyLoadStarted(this.currentLoadable.dataSpec.length, this.currentLoadable.type, this.currentLoadable.trigger, this.currentLoadable.format, -1L, -1L);
            }
            this.loader.startLoading(this.currentLoadable, this);
        }
    }

    private long getNextLoadPositionUs() {
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.currentTsLoadable != null) {
            if (this.currentTsLoadable.isLastChunk) {
                return -1L;
            }
            return this.currentTsLoadable.endTimeUs;
        }
        if (this.previousTsLoadable.isLastChunk) {
            return -1L;
        }
        return this.previousTsLoadable.endTimeUs;
    }

    private boolean isTsChunk(Chunk chunk) {
        return chunk instanceof TsChunk;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != -1;
    }

    private long getRetryDelayMillis(long errorCount) {
        return Math.min((errorCount - 1) * 1000, HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
    }

    int usToMs(long timeUs) {
        return (int) (timeUs / 1000);
    }

    private void notifyLoadStarted(final long length, final int type, final int trigger, final Format format, final long mediaStartTimeUs, final long mediaEndTimeUs) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.hls.HlsSampleSource.1
                @Override // java.lang.Runnable
                public void run() {
                    HlsSampleSource.this.eventListener.onLoadStarted(HlsSampleSource.this.eventSourceId, length, type, trigger, format, HlsSampleSource.this.usToMs(mediaStartTimeUs), HlsSampleSource.this.usToMs(mediaEndTimeUs));
                }
            });
        }
    }

    private void notifyLoadCompleted(final long bytesLoaded, final int type, final int trigger, final Format format, final long mediaStartTimeUs, final long mediaEndTimeUs, final long elapsedRealtimeMs, final long loadDurationMs) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.hls.HlsSampleSource.2
                @Override // java.lang.Runnable
                public void run() {
                    HlsSampleSource.this.eventListener.onLoadCompleted(HlsSampleSource.this.eventSourceId, bytesLoaded, type, trigger, format, HlsSampleSource.this.usToMs(mediaStartTimeUs), HlsSampleSource.this.usToMs(mediaEndTimeUs), elapsedRealtimeMs, loadDurationMs);
                }
            });
        }
    }

    private void notifyLoadCanceled(final long bytesLoaded) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.hls.HlsSampleSource.3
                @Override // java.lang.Runnable
                public void run() {
                    HlsSampleSource.this.eventListener.onLoadCanceled(HlsSampleSource.this.eventSourceId, bytesLoaded);
                }
            });
        }
    }

    private void notifyLoadError(final IOException e) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.hls.HlsSampleSource.4
                @Override // java.lang.Runnable
                public void run() {
                    HlsSampleSource.this.eventListener.onLoadError(HlsSampleSource.this.eventSourceId, e);
                }
            });
        }
    }

    private void notifyDownstreamFormatChanged(final Format format, final int trigger, final long positionUs) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.hls.HlsSampleSource.5
                @Override // java.lang.Runnable
                public void run() {
                    HlsSampleSource.this.eventListener.onDownstreamFormatChanged(HlsSampleSource.this.eventSourceId, format, trigger, HlsSampleSource.this.usToMs(positionUs));
                }
            });
        }
    }
}
