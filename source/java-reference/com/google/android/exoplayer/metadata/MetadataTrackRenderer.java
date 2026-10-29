package com.google.android.exoplayer.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class MetadataTrackRenderer<T> extends TrackRenderer implements Handler.Callback {
    private static final int MSG_INVOKE_RENDERER = 0;
    private final MediaFormatHolder formatHolder;
    private boolean inputStreamEnded;
    private final Handler metadataHandler;
    private final MetadataParser<T> metadataParser;
    private final MetadataRenderer<T> metadataRenderer;
    private T pendingMetadata;
    private long pendingMetadataTimestamp;
    private final SampleHolder sampleHolder;
    private final SampleSource.SampleSourceReader source;
    private int trackIndex;

    public interface MetadataRenderer<T> {
        void onMetadata(T t);
    }

    public MetadataTrackRenderer(SampleSource source, MetadataParser<T> metadataParser, MetadataRenderer<T> metadataRenderer, Looper metadataRendererLooper) {
        this.source = source.register();
        this.metadataParser = (MetadataParser) Assertions.checkNotNull(metadataParser);
        this.metadataRenderer = (MetadataRenderer) Assertions.checkNotNull(metadataRenderer);
        this.metadataHandler = metadataRendererLooper == null ? null : new Handler(metadataRendererLooper, this);
        this.formatHolder = new MediaFormatHolder();
        this.sampleHolder = new SampleHolder(1);
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected int doPrepare(long positionUs) {
        boolean sourcePrepared = this.source.prepare(positionUs);
        if (!sourcePrepared) {
            return 0;
        }
        int trackCount = this.source.getTrackCount();
        for (int i = 0; i < trackCount; i++) {
            if (this.metadataParser.canParse(this.source.getTrackInfo(i).mimeType)) {
                this.trackIndex = i;
                return 1;
            }
        }
        return -1;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onEnabled(long positionUs, boolean joining) {
        this.source.enable(this.trackIndex, positionUs);
        seekToInternal();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void seekTo(long positionUs) throws ExoPlaybackException {
        this.source.seekToUs(positionUs);
        seekToInternal();
    }

    private void seekToInternal() {
        this.pendingMetadata = null;
        this.inputStreamEnded = false;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void doSomeWork(long positionUs, long elapsedRealtimeUs) throws ExoPlaybackException {
        this.source.continueBuffering(this.trackIndex, positionUs);
        if (!this.inputStreamEnded && this.pendingMetadata == null) {
            int result = this.source.readData(this.trackIndex, positionUs, this.formatHolder, this.sampleHolder, false);
            if (result == -3) {
                this.pendingMetadataTimestamp = this.sampleHolder.timeUs;
                try {
                    this.pendingMetadata = this.metadataParser.parse(this.sampleHolder.data.array(), this.sampleHolder.size);
                    this.sampleHolder.data.clear();
                } catch (IOException e) {
                    throw new ExoPlaybackException(e);
                }
            } else if (result == -1) {
                this.inputStreamEnded = true;
            }
        }
        if (this.pendingMetadata != null && this.pendingMetadataTimestamp <= positionUs) {
            invokeRenderer(this.pendingMetadata);
            this.pendingMetadata = null;
        }
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
    protected void onDisabled() {
        this.pendingMetadata = null;
        this.source.disable(this.trackIndex);
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getDurationUs() {
        return this.source.getTrackInfo(this.trackIndex).durationUs;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getBufferedPositionUs() {
        return -3L;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isEnded() {
        return this.inputStreamEnded;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        return true;
    }

    private void invokeRenderer(T metadata) {
        if (this.metadataHandler != null) {
            this.metadataHandler.obtainMessage(0, metadata).sendToTarget();
        } else {
            invokeRendererInternal(metadata);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message msg) {
        switch (msg.what) {
            case 0:
                invokeRendererInternal(msg.obj);
                return true;
            default:
                return false;
        }
    }

    private void invokeRendererInternal(T metadata) {
        this.metadataRenderer.onMetadata(metadata);
    }
}
