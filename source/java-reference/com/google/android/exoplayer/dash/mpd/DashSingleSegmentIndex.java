package com.google.android.exoplayer.dash.mpd;

import com.google.android.exoplayer.dash.DashSegmentIndex;

/* JADX INFO: loaded from: classes2.dex */
final class DashSingleSegmentIndex implements DashSegmentIndex {
    private final long durationUs;
    private final long startTimeUs;
    private final RangedUri uri;

    public DashSingleSegmentIndex(long startTimeUs, long durationUs, RangedUri uri) {
        this.startTimeUs = startTimeUs;
        this.durationUs = durationUs;
        this.uri = uri;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public int getSegmentNum(long timeUs) {
        return 0;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public long getTimeUs(int segmentNum) {
        return this.startTimeUs;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public long getDurationUs(int segmentNum) {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public RangedUri getSegmentUrl(int segmentNum) {
        return this.uri;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public int getFirstSegmentNum() {
        return 0;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public int getLastSegmentNum() {
        return 0;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public boolean isExplicit() {
        return true;
    }
}
