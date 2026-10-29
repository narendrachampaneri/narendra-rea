package com.google.android.exoplayer;

import android.net.Uri;
import android.os.SystemClock;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.Loader;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class SingleSampleSource implements SampleSource, SampleSource.SampleSourceReader, Loader.Callback, Loader.Loadable {
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    private static final int INITIAL_SAMPLE_SIZE = 1;
    private IOException currentLoadableException;
    private int currentLoadableExceptionCount;
    private long currentLoadableExceptionTimestamp;
    private final DataSource dataSource;
    private final MediaFormat format;
    private Loader loader;
    private boolean loadingFinished;
    private final int minLoadableRetryCount;
    private boolean pendingSample;
    private byte[] sampleData;
    private int sampleSize;
    private final TrackInfo trackInfo;
    private final Uri uri;

    public SingleSampleSource(Uri uri, DataSource dataSource, MediaFormat format) {
        this(uri, dataSource, format, 3);
    }

    public SingleSampleSource(Uri uri, DataSource dataSource, MediaFormat format, int minLoadableRetryCount) {
        this.uri = uri;
        this.dataSource = dataSource;
        this.format = format;
        this.minLoadableRetryCount = minLoadableRetryCount;
        this.trackInfo = new TrackInfo(format.mimeType, format.durationUs);
        this.sampleData = new byte[1];
    }

    @Override // com.google.android.exoplayer.SampleSource
    public SampleSource.SampleSourceReader register() {
        return this;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean prepare(long positionUs) {
        if (this.loader == null) {
            this.loader = new Loader("Loader:" + this.format.mimeType);
            return true;
        }
        return true;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int getTrackCount() {
        return 1;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public TrackInfo getTrackInfo(int track) {
        return this.trackInfo;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void enable(int track, long positionUs) {
        this.pendingSample = true;
        clearCurrentLoadableException();
        maybeStartLoading();
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean continueBuffering(int track, long positionUs) {
        maybeStartLoading();
        return this.loadingFinished;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void maybeThrowError() throws IOException {
        if (this.currentLoadableException != null && this.currentLoadableExceptionCount > this.minLoadableRetryCount) {
            throw this.currentLoadableException;
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int readData(int track, long positionUs, MediaFormatHolder formatHolder, SampleHolder sampleHolder, boolean onlyReadDiscontinuity) {
        if (onlyReadDiscontinuity) {
            return -2;
        }
        if (!this.pendingSample) {
            return -1;
        }
        if (!this.loadingFinished) {
            return -2;
        }
        sampleHolder.timeUs = 0L;
        sampleHolder.size = this.sampleSize;
        sampleHolder.flags = 1;
        if (sampleHolder.data == null || sampleHolder.data.capacity() < this.sampleSize) {
            sampleHolder.replaceBuffer(sampleHolder.size);
        }
        sampleHolder.data.put(this.sampleData, 0, this.sampleSize);
        return -3;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void seekToUs(long positionUs) {
        this.pendingSample = true;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public long getBufferedPositionUs() {
        return this.loadingFinished ? -3L : 0L;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void disable(int track) {
        this.pendingSample = false;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void release() {
        if (this.loader != null) {
            this.loader.release();
            this.loader = null;
        }
    }

    private void maybeStartLoading() {
        if (!this.loadingFinished && this.pendingSample && !this.loader.isLoading()) {
            if (this.currentLoadableException != null) {
                long elapsedMillis = SystemClock.elapsedRealtime() - this.currentLoadableExceptionTimestamp;
                if (elapsedMillis >= getRetryDelayMillis(this.currentLoadableExceptionCount)) {
                    this.currentLoadableException = null;
                } else {
                    return;
                }
            }
            this.loader.startLoading(this, this);
        }
    }

    private void clearCurrentLoadableException() {
        this.currentLoadableException = null;
        this.currentLoadableExceptionCount = 0;
    }

    private long getRetryDelayMillis(long errorCount) {
        return Math.min((errorCount - 1) * 1000, HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCompleted(Loader.Loadable loadable) {
        this.loadingFinished = true;
        clearCurrentLoadableException();
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCanceled(Loader.Loadable loadable) {
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadError(Loader.Loadable loadable, IOException e) {
        this.currentLoadableException = e;
        this.currentLoadableExceptionCount++;
        this.currentLoadableExceptionTimestamp = SystemClock.elapsedRealtime();
        maybeStartLoading();
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public void cancelLoad() {
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public boolean isLoadCanceled() {
        return false;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public void load() throws InterruptedException, IOException {
        this.sampleSize = 0;
        try {
            this.dataSource.open(new DataSpec(this.uri));
            int result = 0;
            while (result != -1) {
                this.sampleSize += result;
                if (this.sampleSize == this.sampleData.length) {
                    this.sampleData = Arrays.copyOf(this.sampleData, this.sampleData.length * 2);
                }
                result = this.dataSource.read(this.sampleData, this.sampleSize, this.sampleData.length - this.sampleSize);
            }
        } finally {
            this.dataSource.close();
        }
    }
}
