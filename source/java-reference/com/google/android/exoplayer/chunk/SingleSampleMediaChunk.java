package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class SingleSampleMediaChunk extends BaseMediaChunk {
    private volatile int bytesLoaded;
    private final byte[] headerData;
    private volatile boolean loadCanceled;
    private final DrmInitData sampleDrmInitData;
    private final MediaFormat sampleFormat;
    private boolean writtenHeader;

    public SingleSampleMediaChunk(DataSource dataSource, DataSpec dataSpec, int trigger, Format format, long startTimeUs, long endTimeUs, int chunkIndex, boolean isLastChunk, MediaFormat sampleFormat, DrmInitData sampleDrmInitData, byte[] headerData) {
        super(dataSource, dataSpec, trigger, format, startTimeUs, endTimeUs, chunkIndex, isLastChunk, true);
        this.sampleFormat = sampleFormat;
        this.sampleDrmInitData = sampleDrmInitData;
        this.headerData = headerData;
    }

    @Override // com.google.android.exoplayer.chunk.Chunk
    public long bytesLoaded() {
        return this.bytesLoaded;
    }

    @Override // com.google.android.exoplayer.chunk.BaseMediaChunk
    public MediaFormat getMediaFormat() {
        return this.sampleFormat;
    }

    @Override // com.google.android.exoplayer.chunk.BaseMediaChunk
    public DrmInitData getDrmInitData() {
        return this.sampleDrmInitData;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public void cancelLoad() {
        this.loadCanceled = true;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public boolean isLoadCanceled() {
        return this.loadCanceled;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public void load() throws InterruptedException, IOException {
        if (!this.writtenHeader) {
            if (this.headerData != null) {
                getOutput().sampleData(new ParsableByteArray(this.headerData), this.headerData.length);
            }
            this.writtenHeader = true;
        }
        DataSpec loadDataSpec = Util.getRemainderDataSpec(this.dataSpec, this.bytesLoaded);
        try {
            this.dataSource.open(loadDataSpec);
            int result = 0;
            while (result != -1) {
                this.bytesLoaded += result;
                result = getOutput().sampleData(this.dataSource, Integer.MAX_VALUE, true);
            }
            int sampleSize = this.bytesLoaded;
            if (this.headerData != null) {
                sampleSize += this.headerData.length;
            }
            getOutput().sampleMetadata(this.startTimeUs, 1, sampleSize, 0, null);
        } finally {
            this.dataSource.close();
        }
    }
}
