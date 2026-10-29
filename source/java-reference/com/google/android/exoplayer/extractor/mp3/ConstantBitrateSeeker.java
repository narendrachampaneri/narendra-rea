package com.google.android.exoplayer.extractor.mp3;

import com.google.android.exoplayer.C;

/* JADX INFO: loaded from: classes2.dex */
final class ConstantBitrateSeeker implements Mp3Extractor.Seeker {
    private static final int BITS_PER_BYTE = 8;
    private static final int MICROSECONDS_PER_SECOND = 1000000;
    private final int bitrate;
    private final long durationUs;
    private final long firstFramePosition;

    public ConstantBitrateSeeker(long firstFramePosition, int bitrate, long inputLength) {
        this.firstFramePosition = firstFramePosition;
        this.bitrate = bitrate;
        this.durationUs = inputLength != -1 ? getTimeUs(inputLength) : -1L;
    }

    @Override // com.google.android.exoplayer.extractor.SeekMap
    public boolean isSeekable() {
        return this.durationUs != -1;
    }

    @Override // com.google.android.exoplayer.extractor.SeekMap
    public long getPosition(long timeUs) {
        if (this.durationUs == -1) {
            return 0L;
        }
        return this.firstFramePosition + ((((long) this.bitrate) * timeUs) / 8000000);
    }

    @Override // com.google.android.exoplayer.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long position) {
        return (((position - this.firstFramePosition) * C.MICROS_PER_SECOND) * 8) / ((long) this.bitrate);
    }

    @Override // com.google.android.exoplayer.extractor.mp3.Mp3Extractor.Seeker
    public long getDurationUs() {
        return this.durationUs;
    }
}
