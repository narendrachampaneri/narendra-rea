package com.google.android.exoplayer.dash;

import com.google.android.exoplayer.dash.mpd.RangedUri;
import com.google.android.exoplayer.extractor.ChunkIndex;

/* JADX INFO: loaded from: classes2.dex */
final class DashWrappingSegmentIndex implements DashSegmentIndex {
    private final ChunkIndex chunkIndex;
    private final long startTimeUs;
    private final String uri;

    public DashWrappingSegmentIndex(ChunkIndex chunkIndex, String uri, long startTimeUs) {
        this.chunkIndex = chunkIndex;
        this.uri = uri;
        this.startTimeUs = startTimeUs;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public int getFirstSegmentNum() {
        return 0;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public int getLastSegmentNum() {
        return this.chunkIndex.length - 1;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public long getTimeUs(int segmentNum) {
        return this.chunkIndex.timesUs[segmentNum] + this.startTimeUs;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public long getDurationUs(int segmentNum) {
        return this.chunkIndex.durationsUs[segmentNum];
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public RangedUri getSegmentUrl(int segmentNum) {
        return new RangedUri(this.uri, null, this.chunkIndex.offsets[segmentNum], this.chunkIndex.sizes[segmentNum]);
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public int getSegmentNum(long timeUs) {
        return this.chunkIndex.getChunkIndex(timeUs - this.startTimeUs);
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public boolean isExplicit() {
        return true;
    }
}
