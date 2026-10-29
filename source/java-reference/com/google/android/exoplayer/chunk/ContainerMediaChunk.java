package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.DefaultExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class ContainerMediaChunk extends BaseMediaChunk implements ChunkExtractorWrapper.SingleTrackOutput {
    private volatile int bytesLoaded;
    private DrmInitData drmInitData;
    private final ChunkExtractorWrapper extractorWrapper;
    private volatile boolean loadCanceled;
    private MediaFormat mediaFormat;
    private final long sampleOffsetUs;

    public ContainerMediaChunk(DataSource dataSource, DataSpec dataSpec, int trigger, Format format, long startTimeUs, long endTimeUs, int chunkIndex, boolean isLastChunk, long sampleOffsetUs, ChunkExtractorWrapper extractorWrapper, MediaFormat mediaFormat, DrmInitData drmInitData, boolean isMediaFormatFinal) {
        super(dataSource, dataSpec, trigger, format, startTimeUs, endTimeUs, chunkIndex, isLastChunk, isMediaFormatFinal);
        this.extractorWrapper = extractorWrapper;
        this.sampleOffsetUs = sampleOffsetUs;
        this.mediaFormat = mediaFormat;
        this.drmInitData = drmInitData;
    }

    @Override // com.google.android.exoplayer.chunk.Chunk
    public final long bytesLoaded() {
        return this.bytesLoaded;
    }

    @Override // com.google.android.exoplayer.chunk.BaseMediaChunk
    public final MediaFormat getMediaFormat() {
        return this.mediaFormat;
    }

    @Override // com.google.android.exoplayer.chunk.BaseMediaChunk
    public final DrmInitData getDrmInitData() {
        return this.drmInitData;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkExtractorWrapper.SingleTrackOutput
    public final void seekMap(SeekMap seekMap) {
    }

    @Override // com.google.android.exoplayer.chunk.ChunkExtractorWrapper.SingleTrackOutput
    public final void drmInitData(DrmInitData drmInitData) {
        this.drmInitData = drmInitData;
    }

    @Override // com.google.android.exoplayer.extractor.TrackOutput
    public final void format(MediaFormat mediaFormat) {
        this.mediaFormat = mediaFormat;
    }

    @Override // com.google.android.exoplayer.extractor.TrackOutput
    public final int sampleData(ExtractorInput input, int length, boolean allowEndOfInput) throws InterruptedException, IOException {
        return getOutput().sampleData(input, length, allowEndOfInput);
    }

    @Override // com.google.android.exoplayer.extractor.TrackOutput
    public final void sampleData(ParsableByteArray data, int length) {
        getOutput().sampleData(data, length);
    }

    @Override // com.google.android.exoplayer.extractor.TrackOutput
    public final void sampleMetadata(long timeUs, int flags, int size, int offset, byte[] encryptionKey) {
        getOutput().sampleMetadata(this.sampleOffsetUs + timeUs, flags, size, offset, encryptionKey);
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public final void cancelLoad() {
        this.loadCanceled = true;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public final boolean isLoadCanceled() {
        return this.loadCanceled;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public final void load() throws InterruptedException, IOException {
        DataSpec loadDataSpec = Util.getRemainderDataSpec(this.dataSpec, this.bytesLoaded);
        try {
            ExtractorInput input = new DefaultExtractorInput(this.dataSource, loadDataSpec.absoluteStreamPosition, this.dataSource.open(loadDataSpec));
            if (this.bytesLoaded == 0) {
                this.extractorWrapper.init(this);
            }
            int result = 0;
            while (result == 0) {
                try {
                    if (this.loadCanceled) {
                        break;
                    } else {
                        result = this.extractorWrapper.read(input);
                    }
                } catch (Throwable th) {
                    this.bytesLoaded = (int) (input.getPosition() - this.dataSpec.absoluteStreamPosition);
                    throw th;
                }
            }
            this.bytesLoaded = (int) (input.getPosition() - this.dataSpec.absoluteStreamPosition);
            this.dataSource.close();
        } catch (Throwable th2) {
            this.dataSource.close();
            throw th2;
        }
    }
}
