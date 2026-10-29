package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.TrackInfo;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SingleSampleChunkSource implements ChunkSource {
    private final DataSource dataSource;
    private final DataSpec dataSpec;
    private final long durationUs;
    private final Format format;
    private final MediaFormat mediaFormat;
    private final TrackInfo trackInfo;

    public SingleSampleChunkSource(DataSource dataSource, DataSpec dataSpec, Format format, long durationUs, MediaFormat mediaFormat) {
        this.dataSource = dataSource;
        this.dataSpec = dataSpec;
        this.format = format;
        this.durationUs = durationUs;
        this.mediaFormat = mediaFormat;
        this.trackInfo = new TrackInfo(format.mimeType, durationUs);
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public TrackInfo getTrackInfo() {
        return this.trackInfo;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void getMaxVideoDimensions(MediaFormat out) {
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void enable() {
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void continueBuffering(long playbackPositionUs) {
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void getChunkOperation(List<? extends MediaChunk> queue, long seekPositionUs, long playbackPositionUs, ChunkOperationHolder out) {
        if (queue.isEmpty()) {
            out.chunk = initChunk();
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void disable(List<? extends MediaChunk> queue) {
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void maybeThrowError() {
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void onChunkLoadCompleted(Chunk chunk) {
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void onChunkLoadError(Chunk chunk, Exception e) {
    }

    private SingleSampleMediaChunk initChunk() {
        return new SingleSampleMediaChunk(this.dataSource, this.dataSpec, 0, this.format, 0L, this.durationUs, 0, true, this.mediaFormat, null, null);
    }
}
