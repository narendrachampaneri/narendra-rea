package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.TrackInfo;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class MultiTrackChunkSource implements ChunkSource, ExoPlayer.ExoPlayerComponent {
    public static final int MSG_SELECT_TRACK = 1;
    private final ChunkSource[] allSources;
    private boolean enabled;
    private ChunkSource selectedSource;

    public MultiTrackChunkSource(ChunkSource... sources) {
        this.allSources = sources;
        this.selectedSource = sources[0];
    }

    public MultiTrackChunkSource(List<ChunkSource> sources) {
        this(toChunkSourceArray(sources));
    }

    public int getTrackCount() {
        return this.allSources.length;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public TrackInfo getTrackInfo() {
        return this.selectedSource.getTrackInfo();
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void enable() {
        this.selectedSource.enable();
        this.enabled = true;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void disable(List<? extends MediaChunk> queue) {
        this.selectedSource.disable(queue);
        this.enabled = false;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void continueBuffering(long playbackPositionUs) {
        this.selectedSource.continueBuffering(playbackPositionUs);
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void getChunkOperation(List<? extends MediaChunk> queue, long seekPositionUs, long playbackPositionUs, ChunkOperationHolder out) {
        this.selectedSource.getChunkOperation(queue, seekPositionUs, playbackPositionUs, out);
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void maybeThrowError() throws IOException {
        this.selectedSource.maybeThrowError();
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void getMaxVideoDimensions(MediaFormat out) {
        this.selectedSource.getMaxVideoDimensions(out);
    }

    @Override // com.google.android.exoplayer.ExoPlayer.ExoPlayerComponent
    public void handleMessage(int what, Object msg) throws ExoPlaybackException {
        Assertions.checkState(!this.enabled);
        if (what == 1) {
            this.selectedSource = this.allSources[((Integer) msg).intValue()];
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void onChunkLoadCompleted(Chunk chunk) {
        this.selectedSource.onChunkLoadCompleted(chunk);
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void onChunkLoadError(Chunk chunk, Exception e) {
        this.selectedSource.onChunkLoadError(chunk, e);
    }

    private static ChunkSource[] toChunkSourceArray(List<ChunkSource> sources) {
        ChunkSource[] chunkSourceArray = new ChunkSource[sources.size()];
        sources.toArray(chunkSourceArray);
        return chunkSourceArray;
    }
}
